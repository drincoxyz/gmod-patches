# entity-call

This provides two functions for **scripted** entities:

+ `ENT:Call`
+ `ENT:BaseCall`

`ENT:Call` works similarly to [gamemode.Call](https://wiki.facepunch.com/gmod/gamemode.Call) - it will call a function on the entity with the given arguments **only** if it exists. This allows for much cleaner code, especially in shared code.

`ENT:BaseCall` is the same principle, except it calls the function from the entity's baseclass meta table on the entity itself. Basically, this provides a simple way of maintaining the original functionality from the entity's base class, while also adding onto it.
