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


; tests


; omit
