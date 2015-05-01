//	@file Version:
//	@file Name:
//	@file Author: Cael817
//	@file Created:

#define PLAYER_CONDITION "(vehicle player == player && {!isNull cursorTarget})"
#define ITEM_CONDITION "{cursortarget iskindof 'Box_NATO_AmmoVeh_F'} && {(player distance cursortarget) < 5}"
#define OBJECT_CONDITION "{cursorTarget getVariable ['objectLocked', false]}"
#define HACKING_CONDITION "{'ToolKit' in (items player)} && {cursorTarget getVariable ['ownerUID',''] != getPlayerUID player}"

Safe_open = 
{
	private ["_unit","_uid,", "_owner"];

	_unit = _this select 0;
	_uid = getPlayerUID _unit;
	_owner = cursorTarget getvariable "ownerUID";

	if (!isNull (uiNamespace getVariable ["Safe_Menu", displayNull]) && player getVariable ["FAR_isUnconscious", 0] == 0) exitWith {};

	switch (true) do
	{
		case (_uid == _owner || _uid != _owner):
		{
			execVM "addons\Safe\password_enter.sqf";
			hint "Welcome";
		};
		case (isNil _uid || isNull _uid):
		{
			hint "You need to lock the object first!";
		};
		default
		{
		hint "An unknown error occurred. This could be because your Base Locker is not locked."
		};

	};
};

Safe_Actions = 
{
//	private ["_unit"];
//	_unit = _this select 0;
	
	//_unit addAction ["<t color='#FFE496'><img image='client\icons\r3f_lock.paa'/> Open Safe</t>", "addons\Safe\Safe_selectMenu.sqf", [cursorTarget], -97, false, false, "", "vehicle player == player && {cursortarget iskindof 'Box_NATO_AmmoVeh_F'} && {cursorTarget getVariable ['objectLocked', false]} && {!isNull cursorTarget} && {(player distance cursortarget) < 5}"],	
	//_unit addAction ["<t color='#FFE496'><img image='client\icons\take.paa'/> Hack Safe</t>", "addons\Safe\Safe_hack.sqf", [cursorTarget], -97, false, false, "", "vehicle player == player && {cursortarget iskindof 'Box_NATO_AmmoVeh_F'} && {cursorTarget getVariable ['objectLocked', false]} && {!isNull cursorTarget} && {'ToolKit' in (items player)} && {cursorTarget getVariable ['ownerUID',''] != getPlayerUID player} && {(player distance cursortarget) < 5}"]	
//	_unit addAction ["<t color='#FFE496'><img image='client\icons\r3f_lock.paa'/> Open Safe</t>", Safe_open, [cursorTarget], -97, false, false, "", PLAYER_CONDITION + " && " + ITEM_CONDITION + " && " + OBJECT_CONDITION];
//	_unit addAction ["<t color='#FFE496'><img image='client\icons\take.paa'/> Hack Safe</t>", "addons\Safe\Safe_hack.sqf", [cursorTarget], -97, false, false, "", PLAYER_CONDITION + " && " + ITEM_CONDITION + " && " + OBJECT_CONDITION + " && " + HACKING_CONDITION];	
{ [player, _x] call fn_addManagedAction } forEach
[
	["<t color='#FFE496'><img image='client\icons\r3f_lock.paa'/> Open Safe</t>", Safe_open, [cursorTarget], -97, false, false, "", PLAYER_CONDITION + " && " + ITEM_CONDITION + " && " + OBJECT_CONDITION],
	["<t color='#FFE496'><img image='client\icons\take.paa'/> Hack Safe</t>", "addons\Safe\Safe_hack.sqf", [cursorTarget], -97, false, false, "", PLAYER_CONDITION + " && " + ITEM_CONDITION + " && " + OBJECT_CONDITION + " && " + HACKING_CONDITION]
];

};

//=======================
SafeScriptInitialized = true;