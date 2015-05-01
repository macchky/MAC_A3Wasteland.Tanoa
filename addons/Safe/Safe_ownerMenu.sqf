//	@file Version:
//	@file Name:
//	@file Author: Cael817, all credit to A3W
//	@file Created:

#define Safe_Menu_option 17001
disableSerialization;

private ["_start","_panelOptions","_Safe_select","_displaySafe"];
_uid = getPlayerUID player;
if (!isNil "_uid") then {
	_start = createDialog "Safe_Menu";

	_displaySafe = uiNamespace getVariable "Safe_Menu";
	_Safe_select = _displaySafe displayCtrl Safe_Menu_option;

	_panelOptions = [
					"Lock Safe",
					"Unlock Safe",
					"Change PIN"
	];

	{
		_Safe_select lbAdd _x;
	} forEach _panelOptions;
};