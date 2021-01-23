# Properties

The following properties exist and are updated as an instance of the class is used:

#### .lastIndex
The lastIndex property specifies the index at which to start the next match.

This property returns an integer that specifies the character position immediately after the last match found by `.exec` or `.test` methods.

----


# **Regexp methods**
## .exec
This method returns the matched text if it finds a match, otherwise it returns `""`

#### Arguments
| Argument       | Type         | Description  |
| :------------- | :----------- | :----------- |
|  value*        | string       | Required. The string to be searched |



#### Returns
(array): An array containing the matched text if it finds a match, otherwise it returns `""`


#### Example

```autohotkey
re := new regexp("Lunchtime")
string := "Time is an illusion. Lunchtime doubly so"

result := re.exec(string)
assert.test(result, ["Lunchtime"])

re.exec("Don't Panic")
; => []

```



## .test
Tests for a match in a string.

#### Arguments
| Argument       | Type         | Description  |
| :------------- | :----------- | :----------- |
|  string        | string       | Required. The string to be searched |



#### Returns
(boolean): `true` if a pattern match was found, else `false`


#### Example

```autohotkey
assert.label(".test - Simple use cases")
re := new regexp("Lunchtime")
re.test("Time is an illusion. Lunchtime doubly so")
; => true

re.lastIndex
; => 22

re.test("Don't Panic")
; => false

re.lastIndex
; => 0

```



## .toString


#### Example

```autohotkey
re := new regexp("123")
re.toString()
; => "/123/"

re := new regexp("123", "g")
re.toString()
; => "/123/g"

```
