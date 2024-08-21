function prompt {
	"----------------------------------------------------------------------------`n" +
    "PS [" + $(whoami) + "] " + $(Get-Location) + "`n" + 
        $(if ($NestedPromptLevel -ge 1) { ">>" }) + "> "
} 
