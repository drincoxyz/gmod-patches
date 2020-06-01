# team-default-clean

This removes the useless default teams. These include:

+ `TEAM_UNASSIGNED` (why is this a thing)
+ `TEAM_CONNECTING` (again, why is this a thing)
+ `TEAM_SPECTATOR`  (this is usually created manually anyway)

In addition to removing these teams, the enumerations used for them are also cleared from memory.
