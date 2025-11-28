# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "EDGE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_DEBUG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_ACTIVE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RECT_HEIGHT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RECT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_ACTIVE" -parent ${Page_0}


}

proc update_PARAM_VALUE.EDGE_WIDTH { PARAM_VALUE.EDGE_WIDTH } {
	# Procedure called to update EDGE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EDGE_WIDTH { PARAM_VALUE.EDGE_WIDTH } {
	# Procedure called to validate EDGE_WIDTH
	return true
}

proc update_PARAM_VALUE.ENABLE_DEBUG { PARAM_VALUE.ENABLE_DEBUG } {
	# Procedure called to update ENABLE_DEBUG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_DEBUG { PARAM_VALUE.ENABLE_DEBUG } {
	# Procedure called to validate ENABLE_DEBUG
	return true
}

proc update_PARAM_VALUE.H_ACTIVE { PARAM_VALUE.H_ACTIVE } {
	# Procedure called to update H_ACTIVE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_ACTIVE { PARAM_VALUE.H_ACTIVE } {
	# Procedure called to validate H_ACTIVE
	return true
}

proc update_PARAM_VALUE.RECT_HEIGHT { PARAM_VALUE.RECT_HEIGHT } {
	# Procedure called to update RECT_HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RECT_HEIGHT { PARAM_VALUE.RECT_HEIGHT } {
	# Procedure called to validate RECT_HEIGHT
	return true
}

proc update_PARAM_VALUE.RECT_WIDTH { PARAM_VALUE.RECT_WIDTH } {
	# Procedure called to update RECT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RECT_WIDTH { PARAM_VALUE.RECT_WIDTH } {
	# Procedure called to validate RECT_WIDTH
	return true
}

proc update_PARAM_VALUE.V_ACTIVE { PARAM_VALUE.V_ACTIVE } {
	# Procedure called to update V_ACTIVE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_ACTIVE { PARAM_VALUE.V_ACTIVE } {
	# Procedure called to validate V_ACTIVE
	return true
}


proc update_MODELPARAM_VALUE.H_ACTIVE { MODELPARAM_VALUE.H_ACTIVE PARAM_VALUE.H_ACTIVE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_ACTIVE}] ${MODELPARAM_VALUE.H_ACTIVE}
}

proc update_MODELPARAM_VALUE.V_ACTIVE { MODELPARAM_VALUE.V_ACTIVE PARAM_VALUE.V_ACTIVE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_ACTIVE}] ${MODELPARAM_VALUE.V_ACTIVE}
}

proc update_MODELPARAM_VALUE.RECT_WIDTH { MODELPARAM_VALUE.RECT_WIDTH PARAM_VALUE.RECT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RECT_WIDTH}] ${MODELPARAM_VALUE.RECT_WIDTH}
}

proc update_MODELPARAM_VALUE.RECT_HEIGHT { MODELPARAM_VALUE.RECT_HEIGHT PARAM_VALUE.RECT_HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RECT_HEIGHT}] ${MODELPARAM_VALUE.RECT_HEIGHT}
}

proc update_MODELPARAM_VALUE.EDGE_WIDTH { MODELPARAM_VALUE.EDGE_WIDTH PARAM_VALUE.EDGE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EDGE_WIDTH}] ${MODELPARAM_VALUE.EDGE_WIDTH}
}

proc update_MODELPARAM_VALUE.ENABLE_DEBUG { MODELPARAM_VALUE.ENABLE_DEBUG PARAM_VALUE.ENABLE_DEBUG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_DEBUG}] ${MODELPARAM_VALUE.ENABLE_DEBUG}
}

