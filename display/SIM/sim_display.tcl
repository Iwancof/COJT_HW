
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2022.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# display

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART xilinx.com:zc702:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:axi_vip:1.1\
"

   set list_ips_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2011 -severity "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2012 -severity "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

##################################################################
# CHECK Modules
##################################################################
set bCheckModules 1
if { $bCheckModules == 1 } {
   set list_check_mods "\ 
display\
"

   set list_mods_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2020 -severity "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2021 -severity "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_gid_msg -ssname BD::TCL -id 2022 -severity "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

if { $bCheckIPsPassed != 1 } {
  common::send_gid_msg -ssname BD::TCL -id 2023 -severity "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set ACLK [ create_bd_port -dir I -type clk ACLK ]
  set ARESETN [ create_bd_port -dir I -type rst ARESETN ]
  set BYTEEN [ create_bd_port -dir I -from 3 -to 0 BYTEEN ]
  set DCLK [ create_bd_port -dir I DCLK ]
  set DSP_B [ create_bd_port -dir O -from 7 -to 0 DSP_B ]
  set DSP_DE [ create_bd_port -dir O DSP_DE ]
  set DSP_FIFO_OVER [ create_bd_port -dir O DSP_FIFO_OVER ]
  set DSP_FIFO_UNDER [ create_bd_port -dir O DSP_FIFO_UNDER ]
  set DSP_G [ create_bd_port -dir O -from 7 -to 0 DSP_G ]
  set DSP_HSYNC_X [ create_bd_port -dir O DSP_HSYNC_X ]
  set DSP_IRQ [ create_bd_port -dir O -type intr DSP_IRQ ]
  set DSP_R [ create_bd_port -dir O -from 7 -to 0 DSP_R ]
  set DSP_VSYNC_X [ create_bd_port -dir O DSP_VSYNC_X ]
  set RDADDR [ create_bd_port -dir I -from 15 -to 0 RDADDR ]
  set RDATA [ create_bd_port -dir O -from 31 -to 0 RDATA ]
  set RDEN [ create_bd_port -dir I RDEN ]
  set RESOL [ create_bd_port -dir I -from 1 -to 0 RESOL ]
  set WDATA [ create_bd_port -dir I -from 31 -to 0 WDATA ]
  set WRADDR [ create_bd_port -dir I -from 15 -to 0 WRADDR ]
  set WREN [ create_bd_port -dir I WREN ]

  # Create instance: axi_vip_0, and set properties
  set axi_vip_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 axi_vip_0 ]
  set_property CONFIG.INTERFACE_MODE {SLAVE} $axi_vip_0


  # Create instance: display_0, and set properties
  set block_name display
  set block_cell_name display_0
  if { [catch {set display_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $display_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net display_0_M_AXI [get_bd_intf_pins axi_vip_0/S_AXI] [get_bd_intf_pins display_0/M_AXI]

  # Create port connections
  connect_bd_net -net ACLK_0_1 [get_bd_ports ACLK] [get_bd_pins axi_vip_0/aclk] [get_bd_pins display_0/ACLK]
  connect_bd_net -net ARESETN_0_1 [get_bd_ports ARESETN] [get_bd_pins axi_vip_0/aresetn] [get_bd_pins display_0/ARESETN]
  connect_bd_net -net BYTEEN_0_1 [get_bd_ports BYTEEN] [get_bd_pins display_0/BYTEEN]
  connect_bd_net -net DCLK_0_1 [get_bd_ports DCLK] [get_bd_pins display_0/DCLK]
  connect_bd_net -net RDADDR_0_1 [get_bd_ports RDADDR] [get_bd_pins display_0/RDADDR]
  connect_bd_net -net RDEN_0_1 [get_bd_ports RDEN] [get_bd_pins display_0/RDEN]
  connect_bd_net -net RESOL_0_1 [get_bd_ports RESOL] [get_bd_pins display_0/RESOL]
  connect_bd_net -net WDATA_0_1 [get_bd_ports WDATA] [get_bd_pins display_0/WDATA]
  connect_bd_net -net WRADDR_0_1 [get_bd_ports WRADDR] [get_bd_pins display_0/WRADDR]
  connect_bd_net -net WREN_0_1 [get_bd_ports WREN] [get_bd_pins display_0/WREN]
  connect_bd_net -net display_0_DSP_B [get_bd_ports DSP_B] [get_bd_pins display_0/DSP_B]
  connect_bd_net -net display_0_DSP_DE [get_bd_ports DSP_DE] [get_bd_pins display_0/DSP_DE]
  connect_bd_net -net display_0_DSP_FIFO_OVER [get_bd_ports DSP_FIFO_OVER] [get_bd_pins display_0/DSP_FIFO_OVER]
  connect_bd_net -net display_0_DSP_FIFO_UNDER [get_bd_ports DSP_FIFO_UNDER] [get_bd_pins display_0/DSP_FIFO_UNDER]
  connect_bd_net -net display_0_DSP_G [get_bd_ports DSP_G] [get_bd_pins display_0/DSP_G]
  connect_bd_net -net display_0_DSP_HSYNC_X [get_bd_ports DSP_HSYNC_X] [get_bd_pins display_0/DSP_HSYNC_X]
  connect_bd_net -net display_0_DSP_IRQ [get_bd_ports DSP_IRQ] [get_bd_pins display_0/DSP_IRQ]
  connect_bd_net -net display_0_DSP_R [get_bd_ports DSP_R] [get_bd_pins display_0/DSP_R]
  connect_bd_net -net display_0_DSP_VSYNC_X [get_bd_ports DSP_VSYNC_X] [get_bd_pins display_0/DSP_VSYNC_X]
  connect_bd_net -net display_0_RDATA [get_bd_ports RDATA] [get_bd_pins display_0/RDATA]

  # Create address segments
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces display_0/M_AXI] [get_bd_addr_segs axi_vip_0/S_AXI/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


