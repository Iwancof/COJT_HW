
`timescale 1 ns / 1 ps

    module ps2if_v1_0_S00_AXI #
    (
        // Users to add parameters here

        // User parameters ends
        // Do not modify the parameters beyond this line

        // Width of S_AXI data bus
        parameter integer C_S_AXI_DATA_WIDTH    = 32,
        // Width of S_AXI address bus
        parameter integer C_S_AXI_ADDR_WIDTH    = 5
    )
    (
        // Users to add ports here
        input  wire PS2CLK_I,
        output wire PS2CLK_O,
        output wire PS2CLK_T,
        input  wire PS2DATA_I,
        output wire PS2DATA_O,
        output wire PS2DATA_T,

        // User ports ends
        // Do not modify the ports beyond this line

        // Global Clock Signal
        input wire  S_AXI_ACLK,
        // Global Reset Signal. This Signal is Active LOW
        input wire  S_AXI_ARESETN,
        // Write address (issued by master, acceped by Slave)
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
        // Write channel Protection type. This signal indicates the
            // privilege and security level of the transaction, and whether
            // the transaction is a data access or an instruction access.
        input wire [2 : 0] S_AXI_AWPROT,
        // Write address valid. This signal indicates that the master signaling
            // valid write address and control information.
        input wire  S_AXI_AWVALID,
        // Write address ready. This signal indicates that the slave is ready
            // to accept an address and associated control signals.
        output wire  S_AXI_AWREADY,
        // Write data (issued by master, acceped by Slave) 
        input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
        // Write strobes. This signal indicates which byte lanes hold
            // valid data. There is one write strobe bit for each eight
            // bits of the write data bus.    
        input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
        // Write valid. This signal indicates that valid write
            // data and strobes are available.
        input wire  S_AXI_WVALID,
        // Write ready. This signal indicates that the slave
            // can accept the write data.
        output wire  S_AXI_WREADY,
        // Write response. This signal indicates the status
            // of the write transaction.
        output wire [1 : 0] S_AXI_BRESP,
        // Write response valid. This signal indicates that the channel
            // is signaling a valid write response.
        output wire  S_AXI_BVALID,
        // Response ready. This signal indicates that the master
            // can accept a write response.
        input wire  S_AXI_BREADY,
        // Read address (issued by master, acceped by Slave)
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
        // Protection type. This signal indicates the privilege
            // and security level of the transaction, and whether the
            // transaction is a data access or an instruction access.
        input wire [2 : 0] S_AXI_ARPROT,
        // Read address valid. This signal indicates that the channel
            // is signaling valid read address and control information.
        input wire  S_AXI_ARVALID,
        // Read address ready. This signal indicates that the slave is
            // ready to accept an address and associated control signals.
        output wire  S_AXI_ARREADY,
        // Read data (issued by slave)
        output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
        // Read response. This signal indicates the status of the
            // read transfer.
        output wire [1 : 0] S_AXI_RRESP,
        // Read valid. This signal indicates that the channel is
            // signaling the required read data.
        output wire  S_AXI_RVALID,
        // Read ready. This signal indicates that the master can
            // accept the read data and response information.
        input wire  S_AXI_RREADY
    );

    // AXI4LITE signals
    reg [C_S_AXI_ADDR_WIDTH-1 : 0]  axi_awaddr;
    reg     axi_awready;
    reg     axi_wready;
    reg [1 : 0]     axi_bresp;
    reg     axi_bvalid;
    reg [C_S_AXI_ADDR_WIDTH-1 : 0]  axi_araddr;
    reg     axi_arready;
    reg [C_S_AXI_DATA_WIDTH-1 : 0]  axi_rdata;
    reg [1 : 0]     axi_rresp;
    reg     axi_rvalid;

    // Example-specific design signals
    // local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
    // ADDR_LSB is used for addressing 32/64 bit registers/memories
    // ADDR_LSB = 2 for 32 bits (n downto 2)
    // ADDR_LSB = 3 for 64 bits (n downto 3)
    localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 2;
    //----------------------------------------------
    //-- Signals for user logic register space example
    //------------------------------------------------

    wire     slv_reg_rden;
    wire     slv_reg_wren;
    reg [C_S_AXI_DATA_WIDTH-1:0]     reg_data_out;

    // I/O Connections assignments

    assign S_AXI_AWREADY    = axi_awready;
    assign S_AXI_WREADY = axi_wready;
    assign S_AXI_BRESP  = axi_bresp;
    assign S_AXI_BVALID = axi_bvalid;
    assign S_AXI_ARREADY    = axi_arready;
    assign S_AXI_RDATA  = axi_rdata;
    assign S_AXI_RRESP  = axi_rresp;
    assign S_AXI_RVALID = axi_rvalid;
    // Implement axi_awready generation
    // axi_awready is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
    // de-asserted when reset is low.

    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_awready <= 1'b0;
        end 
      else
        begin    
          if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
            begin
              // slave is ready to accept write address when 
              // there is a valid write address and write data
              // on the write address and data bus. This design 
              // expects no outstanding transactions. 
              axi_awready <= 1'b1;
            end
          else           
            begin
              axi_awready <= 1'b0;
            end
        end 
    end       

    // Implement axi_awaddr latching
    // This process is used to latch the address when both 
    // S_AXI_AWVALID and S_AXI_WVALID are valid. 

    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_awaddr <= 0;
        end 
      else
        begin    
          if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
            begin
              // Write Address latching 
              axi_awaddr <= S_AXI_AWADDR;
            end
        end 
    end       

    // Implement axi_wready generation
    // axi_wready is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
    // de-asserted when reset is low. 

    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_wready <= 1'b0;
        end 
      else
        begin    
          if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID)
            begin
              // slave is ready to accept write data when 
              // there is a valid write address and write data
              // on the write address and data bus. This design 
              // expects no outstanding transactions. 
              axi_wready <= 1'b1;
            end
          else
            begin
              axi_wready <= 1'b0;
            end
        end 
    end       

    // Implement memory mapped register select and write logic generation
    // The write data is accepted and written to memory mapped registers when
    // axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
    // select byte enables of slave registers while writing.
    // These registers are cleared when reset (active low) is applied.
    // Slave register write enable is asserted when valid address and data are available
    // and the slave is ready to accept the write address and write data.
    assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;



    // Implement write response logic generation
    // The write response and response valid signals are asserted by the slave 
    // when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
    // This marks the acceptance of address and indicates the status of 
    // write transaction.

    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_bvalid  <= 0;
          axi_bresp   <= 2'b0;
        end 
      else
        begin    
          if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
            begin
              // indicates a valid write response is available
              axi_bvalid <= 1'b1;
              axi_bresp  <= 2'b0; // 'OKAY' response 
            end                   // work error responses in future
          else
            begin
              if (S_AXI_BREADY && axi_bvalid) 
                //check if bready is asserted while bvalid is high) 
                //(there is a possibility that bready is always asserted high)   
                begin
                  axi_bvalid <= 1'b0; 
                end  
            end
        end
    end   

    // Implement axi_arready generation
    // axi_arready is asserted for one S_AXI_ACLK clock cycle when
    // S_AXI_ARVALID is asserted. axi_awready is 
    // de-asserted when reset (active low) is asserted. 
    // The read address is also latched when S_AXI_ARVALID is 
    // asserted. axi_araddr is reset to zero on reset assertion.

    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_arready <= 1'b0;
          axi_araddr  <= 32'b0;
        end 
      else
        begin    
          if (~axi_arready && S_AXI_ARVALID)
            begin
              // indicates that the slave has acceped the valid read address
              axi_arready <= 1'b1;
              // Read address latching
              axi_araddr  <= S_AXI_ARADDR;
            end
          else
            begin
              axi_arready <= 1'b0;
            end
        end 
    end       

    // Implement axi_arvalid generation
    // axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
    // S_AXI_ARVALID and axi_arready are asserted. The slave registers 
    // data are available on the axi_rdata bus at this instance. The 
    // assertion of axi_rvalid marks the validity of read data on the 
    // bus and axi_rresp indicates the status of read transaction.axi_rvalid 
    // is deasserted on reset (active low). axi_rresp and axi_rdata are 
    // cleared to zero on reset (active low).  
    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_rvalid <= 0;
          axi_rresp  <= 0;
        end 
      else
        begin    
          if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
            begin
              // Valid read data is available at the read data bus
              axi_rvalid <= 1'b1;
              axi_rresp  <= 2'b0; // 'OKAY' response
            end   
          else if (axi_rvalid && S_AXI_RREADY)
            begin
              // Read data is accepted by the master
              axi_rvalid <= 1'b0;
            end                
        end
    end    

    // Implement memory mapped register select and read logic generation
    // Slave register read enable is asserted when valid address is available
    // and the slave is ready to accept the read address.
    assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;


    // Output register or memory read data
    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_rdata  <= 0;
        end 
      else
        begin    
          // When there is a valid read address (S_AXI_ARVALID) with 
          // acceptance of read address by the slave (axi_arready), 
          // output the read dada 
          if (slv_reg_rden)
            begin
              axi_rdata <= reg_data_out;     // register read data
            end   
        end
    end    

    // Add user logic here

wire CLK = S_AXI_ACLK;
wire RST = ~S_AXI_ARESETN;
reg [1:0] switch_reg;
wire SWITCH = switch_reg[1];

reg [2:0] reset_reg;
wire PS2_RST = reset_reg[2];

wire LEFT, MIDDLE, RIGHT, NEW_EVENT;
wire [10:0] XPOS;
wire [10:0] YPOS;
wire [3:0]  ZPOS;

reg [10:0] xreg;
reg [10:0] yreg;
reg [3:0]  zreg;
reg [2:0]  btreg;
reg        valid;

reg [1:0] MOUSE_RESOL, DISP_RESOL;

/* レジスタへの書き込み信号・・PS2_CTRLとPS2_RESOLの2レジスタだけ */
wire we_ps2ctrl  = (axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] ==3'h4) &
                   S_AXI_WSTRB[0] & slv_reg_wren;
wire we_ps2resol = (axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] ==3'h5) &
                   S_AXI_WSTRB[0] & slv_reg_wren;

  // USER logic implementation added here

MouseRefComp MouseRefComp (
    .CLK        (CLK),
    .RST        (PS2_RST),
    .MOUSE_RESOL(MOUSE_RESOL),
    .DISP_RESOL (DISP_RESOL),
    .SWITCH     (SWITCH),
    .LEFT       (LEFT),
    .MIDDLE     (MIDDLE),
    .NEW_EVENT  (NEW_EVENT),
    .RIGHT      (RIGHT),
    .XPOS       (XPOS),
    .YPOS       (YPOS),
    .ZPOS       (ZPOS),
    .PS2CLK_I   (PS2CLK_I),
    .PS2DATA_I  (PS2DATA_I),
    .PS2CLK_O   (PS2CLK_O),
    .PS2DATA_O  (PS2DATA_O),
    .PS2CLK_T   (PS2CLK_T),
    .PS2DATA_T  (PS2DATA_T)
);

/* Digilent PS/2サンプルを改造し、XPSのテンプレートに接続 by KOBA on 2014/9/17 */
/* Vivado環境に移植 by KOBA on 2015/11/15                                      */
//
/* 0x0000: xreg: 表示解像度で設定した範囲で変化、右が＋ */
/* 0x0004: yreg: 表示解像度で設定した範囲で変化、下が＋ */
/* 0x0008: zreg: ホイールの変化量（符号付き4ビット）、手前が＋、多くの場合±1の変化 */
/* 0x000C: btnreg: マウスのボタン {Left, Center, Right} */
/* 0x0010: ctrl  : {リセット, VALID}                    */
/*     リセット: 1を書くとクロック3周期RSTを1にしてマウスを初期化。0戻し不要 */
/* 0x0014: resol : {表示解像度セット, 表示解像度(2bit), マウス速度(2bit)}    */
/*     マウス速度: 00: 1/1倍, 01: 1/2倍, 10: 1/4倍, 11: 1/8倍                */
/*     表示解像度: 00: VGA, 01: XGA, 10: SXGA                                */
/*     表示解像度設定: 1を書くと表示解像度が設定される。0戻し不要            */
/*                     表示解像度設定はリセット後に行わないとVGAになる       */


always @( posedge CLK ) begin
    if ( RST ) begin
        xreg  <= 11'h000;
        yreg  <= 11'h000;
        zreg  <= 4'h0;
        btreg <= 3'h0;
    end
    else if ( NEW_EVENT ) begin
        xreg  <= XPOS;
        yreg  <= YPOS;
        zreg  <= ZPOS;
        btreg <= {LEFT, MIDDLE, RIGHT};
    end
end

/* validビット（ctrlレジスタ） */
always @( posedge CLK ) begin
    if ( RST )
        valid <= 1'b0;
    else if ( NEW_EVENT )
        valid <= 1'b1;
    else if ( we_ps2ctrl )
        valid <= S_AXI_WDATA[0];
end

/* resetビット（ctrlレジスタ）, 1を書くと3クロック間PS2_RSTを1にする */
always @( posedge CLK ) begin
    if ( RST )
        reset_reg <= 3'b000;
    else if ( we_ps2ctrl & S_AXI_WDATA[1] )
        reset_reg <= 3'b111;
    else
        reset_reg <= {reset_reg[1:0], 1'b0};
end

/* マウス速度（resolレジスタ） */
always @( posedge CLK ) begin
    if ( RST )
        MOUSE_RESOL <= 2'b00;
    else if ( we_ps2resol )
        MOUSE_RESOL <= S_AXI_WDATA[1:0];
end

/* 表示解像度（resolレジスタ） */
always @( posedge CLK ) begin
    if ( RST )
        DISP_RESOL  <= 2'b00;
    else if ( we_ps2resol )
        DISP_RESOL  <= S_AXI_WDATA[3:2];
end

/* 表示解像度セット（resolレジスタ）, 1を書くと1クロック後SWITCHを1にする */
always @( posedge CLK ) begin
    if ( RST )
        switch_reg <= 2'b00;
    else if ( we_ps2resol & S_AXI_WDATA[4] )
        switch_reg <= 2'b01;
    else
        switch_reg <= {switch_reg[0], 1'b0};
end


/* レジスタ読み出し */
always @* begin 
    case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
        3'h0   : reg_data_out <= xreg;
        3'h1   : reg_data_out <= yreg;
        3'h2   : reg_data_out <= zreg;
        3'h3   : reg_data_out <= btreg;
        3'h4   : reg_data_out <= valid;
        3'h5   : reg_data_out <= {DISP_RESOL, MOUSE_RESOL};
        default: reg_data_out <= 32'h0;
    endcase
end

    // User logic ends

    endmodule
