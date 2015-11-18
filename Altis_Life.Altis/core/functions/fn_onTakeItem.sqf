#include <macro.h>
/*
	File: fn_onTakeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Blocks the unit from taking something they should not have.
*/
private["_unit","_item"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_container = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_item = [_this,2,"",[""]] call BIS_fnc_param;

if(isNull _unit OR _item == "") exitWith {}; //Bad thingies?

switch(playerSide) do
{
	case west: {
		[] spawn {
			while {true} do {
				waitUntil{uniform player == "U_Rangemaster"};
				switch(true) do {
					case (FETCH_CONST(life_coplevel) < 2) : { player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; };
					case (FETCH_CONST(life_coplevel) == 2) : { player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; };
					case (FETCH_CONST(life_coplevel) == 3) : { player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; };
					case (FETCH_CONST(life_coplevel) == 4) : { player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; };
					case (FETCH_CONST(life_coplevel) == 5) : { player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; };
					case (FETCH_CONST(life_coplevel) == 6) : { player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; };
					case (FETCH_CONST(life_coplevel) > 6) : { player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; };	
				};
				waitUntil{uniform player != "U_Rangemaster"};
			};
		};
	};
	case civilian: {
		//Currently stoping the civilians from taking the Rangemaster clothing from medics or cops.
		if(_item in ["U_Rangemaster"]) then {
			[_item,false,false,false,false] call life_fnc_handleItem;
		};

		[] spawn {
			while {true} do {
				waitUntil{uniform player == "U_C_Poloshirt_blue"};
				player setObjectTextureGlobal [0, "textures\civilian_uniform.jpg"]
				waitUntil{uniform player != "U_C_Poloshirt_blue"};
			};
			while {true} do {
				waitUntil{uniform player == "U_C_Poloshirt_burgundy"};
				player setObjectTextureGlobal [0, "textures\civilian_uniform.jpg"]
				waitUntil{uniform player != "U_C_Poloshirt_burgundy"};
			};
			while {true} do {
				waitUntil{uniform player == "U_C_Poloshirt_stripped"};
				player setObjectTextureGlobal [0, "textures\civilian_uniform.jpg"]
				waitUntil{uniform player != "U_C_Poloshirt_stripped"};
			};
			while {true} do {
				waitUntil{uniform player == "U_C_Poloshirt_tricolour"};
				player setObjectTextureGlobal [0, "textures\civilian_uniform.jpg"]
				waitUntil{uniform player != "U_C_Poloshirt_tricolour"};
			};
			while {true} do {
				waitUntil{uniform player == "U_C_Poloshirt_salmon"};
				player setObjectTextureGlobal [0, "textures\civilian_uniform.jpg"]
				waitUntil{uniform player != "U_C_Poloshirt_salmon"};
			};
			while {true} do {
				waitUntil{uniform player == "U_C_Poloshirt_redwhite"};
				player setObjectTextureGlobal [0, "textures\civilian_uniform.jpg"]
				waitUntil{uniform player != "U_C_Poloshirt_redwhite"};
			};
			while {true} do {
				waitUntil{uniform player == "U_C_Commoner1_1"};
				player setObjectTextureGlobal [0, "textures\civilian_uniform.jpg"]
				waitUntil{uniform player != "U_C_Commoner1_1"};
			};
		};
	};
	case independent: {
		[] spawn {
			while {true} do {
				waitUntil{uniform player == "U_Rangemaster"};
				switch(true) do {
					case (FETCH_CONST(life_medicLevel) < 2) : { player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; };
					case (FETCH_CONST(life_medicLevel) == 2) : { player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; };
					case (FETCH_CONST(life_medicLevel) == 3) : { player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; };
					case (FETCH_CONST(life_medicLevel) == 4) : { player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; };
					case (FETCH_CONST(life_medicLevel) > 4) : { player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; };
				};
				waitUntil{uniform player != "U_Rangemaster"};
			};
		};
	};
};