// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: fn_onPlayerConnected.sqf
//	@file Author: AgentRev

private ["_id", "_uid", "_name"];
_id = _this select 0;
_uid = _this select 1;
_name = _this select 2;

diag_log format ["Player connected: %1 (%2)", _name, _uid];

if (["A3W_AdminConnectionChat"] call isConfigOn) then
{
	switch (true) do
	{
		case ([_uid, serverOwners] call isAdmin):
		{
			_msg = "Super Admin " + _name + " connected";
			uiSleep 5;
			_result = "extDB2" callExtension format["1:%1:SAY -1 %2", call A3W_extDB_RconID, _msg];
		};
		case ([_uid, highAdmins] call isAdmin):
		{
			_msg = "High Admin " + _name + " connected";
			uiSleep 5;
			_result = "extDB2" callExtension format["1:%1:SAY -1 %2", call A3W_extDB_RconID, _msg];
		};
		case ([_uid, lowAdmins] call isAdmin):
		{
			_msg = "Low Admin " + _name + " connected";
			uiSleep 5;
			_result = "extDB2" callExtension format["1:%1:SAY -1 %2", call A3W_extDB_RconID, _msg];
		};

	};
};