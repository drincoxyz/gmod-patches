# cvar-callback-fix

This fixes some issues with regards to ConVar change callbacks.

The first issue has to do with callback functions for replicated ConVars. These callbacks aren't called clientside when the server has its own callback function for the ConVar. As far as I'm aware, this is an on-going bug in Garry's Mod, so this patch fixes this, but ONLY if the ConVar has the [FCVAR_REPLICATED](https://wiki.facepunch.com/gmod/Enums/FCVAR) flag.

The next issue has to do with the uniqueness of ConVar callbacks. When a callback as added, it must have a unique ID associated with it so that it can be removed with [cvars.RemoveChangeCallback](https://wiki.facepunch.com/gmod/cvars.RemoveChangeCallback). The problem, however, is that re-adding a callback with the same ID will add an additional callback, rather than overriding the previous one. [Apparently this has been fixed already](https://github.com/Facepunch/garrysmod/pull/1679), but I still have this issue.

There's also a nice optional bonus feature to allow providing the identifier **before** the callback function, similar to [hook.Add](https://wiki.facepunch.com/gmod/hook.Add). This wont break existing functionality.
