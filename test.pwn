/*
		Anti Troll Test Gamemode
*/
#include <a_samp>
#include <j-AT>
#include <Pawn.CMD>

main ()
{
	// nothing ...
}

public OnPlayerSpawn(playerid)
{
	SetPlayerPos(playerid, 0, 0, 3);
	return 1;
}

public OnPlayerTrollCar(playerid, vehicleid)
{
	new string[256];
	format(string, sizeof(string), "Player [%d] Used Car Troll | Trolled Vehicle [%d]",playerid,vehicleid);
	SendClientMessageToAll(-1, string);
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

CMD:veh(playerid)
{
	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);
	CreateVehicle(411, x, y, z, 0, 0, 0, 0);
	return 1;
}
CMD:test(playerid)
{
	PutPlayerInVehicle(playerid, 1, 0);
	return 1;
}
