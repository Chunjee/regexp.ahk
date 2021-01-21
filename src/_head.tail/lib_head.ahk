class regexp {

	; --- Static Variables ---
	static flags := {i: true, g:false, m:false}

	__New(param_default:="", param_flags:="") {

		param_flags := StrSplit(param_flags)
		for _, value in param_flags {
			; do nothing
		}
		this.data := []
		this.flags := param_flags ; needs validation before assignment

		; workspace
		this.lastIndex := 0


		this.throwExceptions := true
		if (param_default != "") {
			this.pattern := param_default
		}
	}




	; --- Static Methods ---
