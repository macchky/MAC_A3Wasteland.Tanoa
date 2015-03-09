// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2015 macchky *
// ******************************************************************************************
//	@file Name: fn_onAdminConnected.sqf
//	@file Author: macchky

private ["_id", "_uid", "_name"];
_id = _this select 0;
_uid = _this select 1;
_name = _this select 2;

switch (true) do
{
	case ([_uid, serverOwners] call isAdmin || isServer):
	{
		_msg = "Welcome Boss" + _name;
		hint _msg;
	};
	case ([_uid, highAdmins] call isAdmin):
	{
		_msg = "Welcome High Admin" + _name;
		hint _msg;
	};
	case ([_uid, lowAdmins] call isAdmin):
	{
		_msg = "Welcome Low Admin" + _name;
		hint _msg;
	};

};
