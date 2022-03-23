global function HudRevampSettings_Init

void function HudRevampSettings_Init()
{
    printt("Adding settings :D")
	AddConVarSetting("comp_hud_accent_color", "Accent Color", "HUD Revamp - General", "float3")
	AddConVarSettingEnum("comp_hud_healthbar_overlap", "Health Number Overlap With Bar", 
        "HUD Revamp - General", [ "No", "Yes" ] )
	AddConVarSetting("comp_hud_boost_text_color", "Amped/Boost Display Color", "HUD Revamp - General", "float3")

	AddConVarSetting("comp_hud_ammo_pos", "Ammo Position", "HUD Revamp - General", "float2")
	AddConVarSetting("comp_hud_holstered_weapons_pos", "Holstered Weapons Position", "HUD Revamp - General", "float2")

	AddConVarSetting("comp_hud_ability_bg_alpha", "Ability Background Alpha", 
		"HUD Revamp - Abilities General", "float")
	AddConVarSetting("comp_hud_ability_ui_scale", "Ability UI Scale", "HUD Revamp - Abilities General", "float")
	AddConVarSetting("comp_hud_ability_bar_thickness", "Ability Progress Bar Thickness", "HUD Revamp - Abilities General", "float")
	AddConVarSetting("comp_hud_ability_icon_scale", "Ability Icon Scale", "HUD Revamp - Abilities General", "float")
	AddConVarSetting("comp_hud_ability_bar_empty_color", "Ability Bar Color (Empty)", 
		"HUD Revamp - Abilities General", "float3")
	AddConVarSetting("comp_hud_ability_bg_bar_empty_color", "Ability Background Color (Empty)", 
		"HUD Revamp - Abilities General", "float3")
	AddConVarSetting("comp_hud_ability_cooldown_pos_offset", "Ability Cooldown Text Position Offset", "HUD Revamp - Abilities General", "float2")
	AddConVarSettingEnum("comp_hud_vertical_side_bar", "Vertical Ability Side Bar", 
        "HUD Revamp - Abilities General", [ "No", "Yes" ] )

	AddConVarSetting("comp_hud_ordnance_position", "Ordnance Position", "HUD Revamp - Ability Specific", "float2")
	AddConVarSetting("comp_hud_tactical_position", "Tactical Position", "HUD Revamp - Ability Specific", "float2")
	AddConVarSetting("comp_hud_utility_position", "Titan Utility Position", "HUD Revamp - Ability Specific", "float2")

	//AddConVarSetting("")
}