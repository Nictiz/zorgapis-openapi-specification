:: Resolve paths
set Self=%~dp0
set MyPath=%self:~0,-1%

:: Variables
set Version=v1alpha1
set Ext=yaml
set Input=%MyPath%\%Version%\openapi.yaml
set Output=%MyPath%\dist\%Version%
set OutputFile=%Output%.%Ext%

:: Bundle
call redocly bundle "%Input%"^
 --output="%Output%"^
 --ext=%Ext%

:: Lint
call redocly lint "%OutputFile%"^
 --skip-rule=no-invalid-media-type-examples^
 --skip-rule=no-unused-components

:: Build docs
::call redocly build-docs "%OutputFile%"

:: Suspend to show output
pause