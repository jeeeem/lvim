def lv [file?: string] {
	if ($file == null) {
		^pwsh -nop -nol ~/.local/bin/lvim.ps1
	} else {
		^pwsh -nop -nol ~/.local/bin/lvim.ps1 $file
	}
}
