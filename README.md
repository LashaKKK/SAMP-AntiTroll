# SAMP-AntiTroll


### Include:
```pawn
#include <j-AT.inc>
```

### Callback:
```pawn
public OnPlayerTrollCar(playerid, vehicleid)
```

### Example:
```pawn
public OnPlayerTrollCar(playerid, vehicleid)
{
	new string[105];
	format(string, sizeof(string), "Player [%d] Used Car Troll | Trolled Vehicle [%d]",playerid,vehicleid);
	SendClientMessageToAll(-1, string);
	return 1;
}
```
