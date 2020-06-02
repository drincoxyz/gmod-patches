# menu-show-client

This removes the following server hooks and makes them available clientside:

+ `GM:ShowHelp`
+ `GM:ShowTeam`
+ `GM:ShowSpare1`
+ `GM:ShowSpare2`

Clients shouldn't have to depend on the server to show them these menus, seeing as how hooks such as [GM:ScoreboardShow](https://wiki.facepunch.com/gmod/GM:ScoreboardShow) are also done by the client.

Naturally, the clientside versions of these hooks have no function arguments (serverside ones had a player argument for the player that pressed the bind, but that's irrelavent clientside).
