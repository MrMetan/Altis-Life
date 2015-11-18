/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
private["_spawnPos"];
civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
waitUntil {!(isNull (findDisplay 46))};

[] spawn {
	while {true} do {
		waitUntil{uniform player == "U_C_Poloshirt_blue"};
		player setObjectTextureGlobal [0, "textures\civilian_uniform_1.jpg"]
		waitUntil{uniform player != "U_C_Poloshirt_blue"};
	};
	while {true} do {
		waitUntil{uniform player == "U_C_Poloshirt_burgundy"};
		player setObjectTextureGlobal [0, "textures\civilian_uniform_2.jpg"]
		waitUntil{uniform player != "U_C_Poloshirt_burgundy"};
	};
	while {true} do {
		waitUntil{uniform player == "U_C_Poloshirt_stripped"};
		player setObjectTextureGlobal [0, "textures\civilian_uniform_3.jpg"]
		waitUntil{uniform player != "U_C_Poloshirt_stripped"};
	};
	while {true} do {
		waitUntil{uniform player == "U_C_Poloshirt_tricolour"};
		player setObjectTextureGlobal [0, "textures\civilian_uniform_4.jpg"]
		waitUntil{uniform player != "U_C_Poloshirt_tricolour"};
	};
	while {true} do {
		waitUntil{uniform player == "U_C_Poloshirt_salmon"};
		player setObjectTextureGlobal [0, "textures\civilian_uniform_5.jpg"]
		waitUntil{uniform player != "U_C_Poloshirt_salmon"};
	};
	while {true} do {
		waitUntil{uniform player == "U_C_Poloshirt_redwhite"};
		player setObjectTextureGlobal [0, "textures\civilian_uniform_6.jpg"]
		waitUntil{uniform player != "U_C_Poloshirt_redwhite"};
	};
	while {true} do {
		waitUntil{uniform player == "U_C_Commoner1_1"};
		player setObjectTextureGlobal [0, "textures\civilian_uniform_7.jpg"]
		waitUntil{uniform player != "U_C_Commoner1_1"};
	};
};

if(life_is_arrested) then
{
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
}
	else
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};
player addRating 9999999;