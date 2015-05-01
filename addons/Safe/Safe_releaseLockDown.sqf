//	@file Version:
//	@file Name:
//	@file Author: LouD
//	@file Created:

private ["_safe"];
_safe = cursorTarget;

_safe setVariable ["R3F_LOG_disabled", false, true];
_safe setVariable ["A3W_inventoryLockR3F", false, true];
_safe setVariable ["lockedSafe", false, true];

pvar_manualObjectSave = netId _safe;
publicVariableServer "pvar_manualObjectSave";

hint "Your safe is unlocked";