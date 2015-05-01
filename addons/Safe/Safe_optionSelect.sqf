//	@file Version:
//	@file Name:
//	@file Author: Cael817
//	@file Created:

#define Safe_Menu_option 17001
disableSerialization;

private ["_panelType","_displaySafe","_Safe_select","_money"];
_uid = getPlayerUID player;
if (!isNil "_uid") then
{
	_panelType = _this select 0;

	_displaySafe = uiNamespace getVariable ["Safe_Menu", displayNull];

	switch (true) do
	{
		case (!isNull _displaySafe): //Safe panel
		{
			_Safe_select = _displaySafe displayCtrl Safe_Menu_option;

			switch (lbCurSel _Safe_select) do
			{
				case 0: //Lock Down Base
				{
					closeDialog 0;					
					execVM "addons\Safe\Safe_lockDown.sqf";
				};
				case 1: //Release Lock Down
				{
					closeDialog 0;					
					execVM "addons\Safe\Safe_releaseLockDown.sqf";
				};
				case 2: //Change Password
				{
					closeDialog 0;					
					execVM "addons\Safe\password_change.sqf";
				};					
			};
		};
	};
};
