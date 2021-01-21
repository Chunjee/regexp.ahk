#Include %A_ScriptDir%\..\export.ahk
#Include %A_ScriptDir%\..\node_modules
#Include unit-testing.ahk\export.ahk

#NoTrayIcon
#SingleInstance, force
SetBatchLines, -1

re := new regexp()
assert := new unittesting()

; Start speed function
QPC(1)

assert.label("internal()")
; assert.test(exampleDict._hash(2000), 2000)

; omit






assert.label("typeException()")

assert.label("backup()")


; omit


assert.label("exec()")
assert.label(".test - Simple use cases")
re := new regexp("Lunchtime")
string := "Time is an illusion. Lunchtime doubly so"
result := re.exec(string)
assert.test(result, ["Lunchtime"])

assert.test(re.exec("Don't Panic"), [])


; omit


assert.label("test()")
assert.label(".test - Simple use cases")
re := new regexp("Lunchtime")
assert.true(re.test("Time is an illusion. Lunchtime doubly so"))
assert.test(re.lastIndex, 22)

assert.false(re.test("Don't Panic"))
assert.test(re.lastIndex, 0)


; omit
assert.label(".test - correct lastIndex")
string := "Time is an illusion. Lunchtime doubly so"
re := new regexp(" ")
re.test(string)
assert.test(re.lastIndex, 5)
re.test(string)
assert.test(re.lastIndex, 8)
re.test(string)
assert.test(re.lastIndex, 11)
re.test(string)
assert.test(re.lastIndex, 21)

;; Display test results in GUI
speed := QPC(0)
assert.fullreport()
msgbox, %speed%
ExitApp

QPC(R := 0)
{
	static P := 0, F := 0, Q := DllCall("QueryPerformanceFrequency", "Int64P", F)
	return ! DllCall("QueryPerformanceCounter", "Int64P", Q) + (R ? (P := Q) / F : (Q - P) / F) 
}
