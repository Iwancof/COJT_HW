`timescale 1ns / 1ps

module unittest(input clk);
reg[7:0] __test_hierarchy;
reg[127:0] __test_indentation;
reg[15:0] step;

initial step = 0;
always @(posedge clk) step = step + 16'b1;

task init_test(input[8191:0] case_name);
    begin
        __test_hierarchy = 8'b0;
        __test_indentation = "  ";
        $display("begin %0s", case_name);
    end
endtask

task suite(input[8191:0] case_name);
    begin
        $display("%0stest suite: %0s", __test_indentation, case_name);
        __test_hierarchy = __test_hierarchy + 8'b1;
        __test_indentation = (__test_indentation << 16) + 8192'h2020;
    end
endtask

task end_suite;
    begin
        __test_hierarchy = __test_hierarchy - 8'b1;
        __test_indentation = __test_indentation >> 16;
    end
endtask

task assertEq(input expected, input actual, input[8191:0] var);
    begin
        if (expected !== actual) begin
            $display("%0sAssertion failed at step %d: %0s expected %h, but got %h", __test_indentation, step, var, expected, actual);
            $stop;
        end else begin
            $display("%0s%0s ok", __test_indentation, var);
        end
    end
endtask

task assertNeq(input expected, input actual, input[8191:0] var);
    begin
        if (expected === actual) begin
            $display("%0sAssertion failed at step %d: %0s expected not equal to %h, but got %h", __test_indentation, step, var, expected, actual);
            $stop;
        end else begin
            $display("%0s%0s ok", __test_indentation, var);
        end
    end
endtask

task waitForPosEdge(input signal);
    begin
        @(posedge signal);
    end
endtask

task waitForNegEdge(input signal);
    begin
        @(negedge signal);
    end
endtask

task waitForClocks(input[31:0] clocks);
    begin
        repeat (clocks) @(posedge clk);
    end
endtask
endmodule