global function HudRevampSettings_Init

void function HudRevampSettings_Init()
{
	AddModTitle("HUD ^FF902000Revamp")
	AddModCategory("General")
	AddConVarSetting("comp_hud_accent_color", "Accent Color", "float3")
	AddConVarSettingEnum("comp_hud_healthbar", "Titan Numerical Healthbar", [ "No", "Yes" ] )
	AddConVarSettingEnum("comp_hud_healthbar_overlap", "Health Number Overlap With Bar", [ "No", "Yes" ] )
	AddConVarSetting("comp_hud_boost_text_color", "Amped/Boost Display Color", "float3")

	AddConVarSetting("comp_hud_ammo_pos", "Ammo Position", "float2")
	AddConVarSetting("comp_hud_holstered_weapons_pos", "Holstered Weapons Position", "float2")
	AddConVarSettingSlider("comp_hud_ammo_scale", "Ammo Scale", 0.0, 1.0, 0.05)
	AddConVarSettingEnum( "comp_hud_ammo_label", "Ammo Label", ["No", "Yes"] )

	AddModCategory("Abilities")
	AddConVarSetting("comp_hud_ability_bg_alpha", "Background Alpha", "float")
	AddConVarSetting("comp_hud_ability_ui_scale", "UI Scale", "float")
	AddConVarSetting("comp_hud_ability_bar_thickness", "Progress Bar Thickness", "float")
	AddConVarSetting("comp_hud_ability_icon_scale", "Icon Scale", "float")
	AddConVarSetting("comp_hud_ability_bar_empty_color", "Bar Color (Empty)", "float3")
	AddConVarSetting("comp_hud_ability_bg_bar_empty_color", "Background Bar Color (Empty)", "float3")
	AddConVarSetting("comp_hud_ability_cooldown_pos_offset", "Cooldown Text Position Offset", "float2")
	AddConVarSettingEnum("comp_hud_vertical_side_bar", "Vertical Side Bar", [ "No", "Yes" ] )

	AddModCategory("Ability Specific")
	AddConVarSetting("comp_hud_ordnance_position", "Ordnance Position", "float2")
	AddConVarSetting("comp_hud_tactical_position", "Tactical Position", "float2")
	AddConVarSetting("comp_hud_utility_position", "Titan Utility Position", "float2")
	//AddConVarSetting( "comp_hud_boost_icon_scale", "Boost Icon Scale", "float" )
	AddConVarSetting( "comp_hud_boost_position", "Boost Position", "float2" )

	AddModCategory("Pilot Health Bar")
	AddConVarSettingEnum( "comp_hud_pilot_healthbar", "Enabled", [ "No", "Yes" ] )
	AddConVarSetting( "comp_hud_pilot_healthbar_pos", "Position", "float2" )
	AddConVarSetting( "comp_hud_pilot_healthbar_size", "Size", "float2" )
	
	AddConVarSetting( "comp_hud_titan_meter_offset", "Offset", "float2" )
	AddConVarSetting( "comp_hud_titan_meter_scale", "Scale", "float2" )

	AddModCategory("Wallkick Practice Display")
	AddConVarSettingEnum("comp_hud_wpd", "Enable", [ "No", "Yes" ] )
	AddConVarSetting("comp_hud_wpd_pos", "Position", "float2" )
	AddConVarSetting("comp_hud_wpd_size", "Font Size", "float" )

	AddModCategory("Damage Indicator")
	AddConVarSettingEnum( "comp_hud_damage_indicator", "Enabled", [ "No", "Yes" ] )
	AddConVarSetting( "comp_hud_damage_indicator_duration", "Duration", "float" )
	AddConVarSetting( "comp_hud_damage_indicator_fade_time", "Fade Time", "float" )

	AddModCategory("Incoming Damage Indicator")
	AddConVarSettingEnum( "comp_hud_incoming_damage_indicator", "Enabled", [ "No", "Yes" ] )
	AddConVarSetting( "comp_hud_incoming_damage_indicator_duration", "Duration", "float" )
	AddConVarSetting( "comp_hud_incoming_damage_indicator_fade_time", "Fade Time", "float" )
	//AddConVarSetting("")
}

void function OpenMissingDepPopup_Thread()
{
	WaitFrame()
	OpenMissingDepPopup()
}

void function OpenMissingDepPopup()
{
	DialogData dialogData
	dialogData.header = "MISSING REQUIRED DEPENDENCY"
	dialogData.message = "HUDRevamp requires ModSettings to function. The mod was not found. Please download it."
	dialogData.image = $"ui/menu/common/dialog_error"
	AddDialogButton( dialogData, "Retry", void function() { 
		ClientCommand("uiscript_reset")
	} )
	AddDialogButton( dialogData, "Download", void function() { 
		LaunchExternalWebBrowser( "https://northstar.thunderstore.io/package/EladNLG/ModSettings/", WEBBROWSER_FLAG_FORCEEXTERNAL )
		OpenMissingDepPopup()
	} )

	OpenDialog(dialogData)
}