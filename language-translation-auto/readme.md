# language-translation-auto

This rewrites `language.Add` to optionally accept a table instead of a string for the translation argument.

This allows adding multiple translations for a single phrase that get added automatically based on the `gmod_language` ConVar, basically making the language library actually useful for its intended purpose.
