# cvar-callback-multi-fix

This fixes a long-standing issue with `cvar.AddChangeCallback` where ConVar callbacks aren't actually unique, despite having to provide an identifier for them.

As a result, adding callbacks with the same identifier would stack with eachother. This makes it so that the previous callback is removed before adding the new one.

There's also a nice optional bonus feature to allow providing the identifier **before** the callback function, similar to [hook.Add](https://wiki.facepunch.com/gmod/hook.Add). This wont break existing functionality.
