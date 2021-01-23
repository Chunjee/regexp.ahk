## regexp.ahk


### Installation

In a terminal or command line navigated to your project folder:

```bash
npm install regexp.ahk
```
You may also review or copy the library from [./export.ahk on GitHub](https://raw.githubusercontent.com/chunjee/regexp.ahk/master/export.ahk)


In your code:

```autohotkey
#Include %A_ScriptDir%\node_modules
#Include regexp.ahk\export.ahk

msgbox, % [1,2,3].join()
; => "1,2,3"
```


Including the module provides a class `regexp` with three methods: `.exec`, `.test`, and `.toString`