# Linux Surface Fonts

This works around an issue in Garry's Mod where custom fonts created with `surface.CreateFont` require the font's file name on Linux instead of its actual font name like when used on Windows.

The `font` value of the font table passed to `surface.CreateFont` will be translated to a font file name by lowering the entire string, replacing any spaces with a `-` character, and appending `.ttf` to the end of the string.

For example, if you had:

```lua
	surface.CreateFont("mystupidfont", {
		font = "Comic Sans",
		size = 16,
		...
	})
```

`"Comic Sans"` would become `"comic-sans.ttf"` on a Linux system, which is the file that will be required in the `resource/fonts` directory.

## macOS / OSX

Since I've never played Garry's Mod on any Apple OS, I don't actually know if it suffers from this issue, so I didn't include it. Frankly I wouldn't be surprised if it does, since there's also 1000 other issues with Garry's Mod on macOS.
