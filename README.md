## regexp.ahk
A modern Regular Expression libary for AutoHotkey


### Installation

In a terminal or command line navigated to your project folder:

```bash
npm install regexp.ahk
```

In your code:

```autohotkey
#Include %A_ScriptDir%\node_modules
#Include regexp.ahk\export.ahk

re := new regexp(")
```

You may review or copy the package from [./export.ahk on GitHub](https://raw.githubusercontent.com/chunjee/regexp.ahk/master/export.ahk); #Include it however you would normally when manually downloading.



Including the module provides a class `regexp` with three methods: `.exec`, `.test`, and `.toString`