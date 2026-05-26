$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$VenvPython = Join-Path $ScriptDir ".venv\Scripts\python.exe"

if (Test-Path $VenvPython) {
    & $VenvPython "$ScriptDir\update_sd_scripts.py" @args
} elseif (Get-Command python -ErrorAction SilentlyContinue) {
    python "$ScriptDir\update_sd_scripts.py" @args
} else {
    py "$ScriptDir\update_sd_scripts.py" @args
}
