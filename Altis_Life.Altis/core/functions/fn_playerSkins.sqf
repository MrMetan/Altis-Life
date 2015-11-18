#include <macro.h>
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart
    
    Description:
    Sets skins for players by their side and uniform.
*/
switch(playerSide) do {
	case civilian: {
		if (uniform player == "U_C_Poloshirt_blue") then {
			player setObjectTextureGlobal [0, "textures\civilian_uniform_1.jpg"]
		};
		if (uniform player == "U_C_Poloshirt_burgundy") then {
			player setObjectTextureGlobal [0, "textures\civilian_uniform_2.jpg"]
		};
		if (uniform player == "U_C_Poloshirt_stripped") then {
			player setObjectTextureGlobal [0, "textures\civilian_uniform_3.jpg"]
		};
		if (uniform player == "U_C_Poloshirt_tricolour") then {
			player setObjectTextureGlobal [0, "textures\civilian_uniform_4.jpg"]
		};
		if (uniform player == "U_C_Poloshirt_salmon") then {
			player setObjectTextureGlobal [0, "textures\civilian_uniform_5.jpg"]
		};
		if (uniform player == "U_C_Poloshirt_redwhite") then {
			player setObjectTextureGlobal [0, "textures\civilian_uniform_6.jpg"]
		};
		if (uniform player == "U_C_Commoner1_1") then {
			player setObjectTextureGlobal [0, "textures\civilian_uniform_7.jpg"]
		};
	};
	case west: {
		if (uniform player == "U_Rangemaster") then {
			switch(true) do {
				case (FETCH_CONST(life_coplevel) < 2) : { player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; };
				case (FETCH_CONST(life_coplevel) == 2) : { player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; };
				case (FETCH_CONST(life_coplevel) == 3) : { player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; };
				case (FETCH_CONST(life_coplevel) == 4) : { player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; };
				case (FETCH_CONST(life_coplevel) == 5) : { player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; };
				case (FETCH_CONST(life_coplevel) == 6) : { player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; };
				case (FETCH_CONST(life_coplevel) > 6) : { player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; };	
			};
		};
	};
	case independent: {
		if (uniform player == "U_Rangemaster") then {
			switch(true) do {
				case (FETCH_CONST(life_medicLevel) < 2) : { player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; };
				case (FETCH_CONST(life_medicLevel) == 2) : { player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; };
				case (FETCH_CONST(life_medicLevel) == 3) : { player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; };
				case (FETCH_CONST(life_medicLevel) == 4) : { player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; };
				case (FETCH_CONST(life_medicLevel) > 4) : { player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; };
			};
		};
	};
};