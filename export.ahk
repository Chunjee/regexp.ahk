class regexp {	; --- Static Variables ---	static flags := {i: true, g:false, m:false}	__New(param_default:="", param_flags:="") {		param_flags := StrSplit(param_flags)		for _, value in param_flags {			; do nothing		}		this.data := []		this.flags := param_flags ; needs validation before assignment		; workspace		this.lastIndex := 0		this.throwExceptions := true		if (param_default != "") {			this.pattern := param_default		}	}	; --- Static Methods ---	; /--\--/--\--/--\--/--\--/--\
	; Internal functions
	; \--/--\--/--\--/--\--/--\--/

	_internal(param_key) {

	}
	_typeException() {
		if (this.throwExceptions == true) {
			throw Exception("Type Error", -2)
		}
	}
	test122213123(param_string) {
		if (IsObject(param_string)) {
			this._typeException()
		}

		; prepare
		; differenciate between golbal and singular

		; create
		l_searchPosition := 1
		oMatch := []
		while l_searchPosition := RegExMatch(param_string, "O)(" this.pattern ")", l_match, l_searchPosition) {
			; msgbox, % l_match.0
			Count += 1
			vPosLast := l_searchPosition
			l_searchPosition += StrLen(l_match.0)
			; prevent infinite loop
			if (l_searchPosition = vPosLast) {
				return false
			}
			oMatch.Push(l_match.0)
			this.lastIndex := vPosLast
		}
		if (oMatch.Count() == 0) {
			this.lastIndex := 0
			return false
		}
		return true
	}
	exec(param_string) {
		if (IsObject(param_string)) {
			this._typeException()
		}

		; prepare

		; create
		l_searchPosition := 1
		oMatch := []
		while l_searchPosition := RegExMatch(param_string, "O)(" this.pattern ")", l_match, l_searchPosition) {
			; Count += 1
			vPosLast := l_searchPosition
			l_searchPosition += StrLen(l_match.0)
			; prevent infinite loop
			if (l_searchPosition = vPosLast) {
				return -1
			}
			oMatch.Push(l_match.0)
			this.lastIndex := vPosLast
		}
		if (oMatch.Count() == 0) {
			this.lastIndex := 0
			return oMatch
		}
		return oMatch
	}
	test(param_string) {
		if (IsObject(param_string)) {
			this._typeException()
		}

		; prepare
		; Todo
		; differenciate between golbal and singular
		if (this.lastIndex != 0 && param_string != this._lastSearch) {
			this.lastIndex := 0
		}
		this._lastSearch := param_string
		; create
		l_searchPosition := RegExMatch(this._lastSearch, "O)(" this.pattern ")", l_match, this.lastIndex + 1)
		if (l_searchPosition != 0) {
			this.lastIndex := l_searchPosition
			return true
		}
		return false
	}
}