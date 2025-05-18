@ECHO OFF
set CHOCO=%systemdrive%\ProgramData\Chocolatey\choco.exe
set CI=%systemdrive%\ProgramData\Chocolatey\choco.exe install

%CI% chocolatey-autoupdater
%CI% au
%CI% 7zip
%CI% far
%CI% putty
%CI% sumatrapdf
%CI% chromium
%CI% firefox
%CI% vscode
%CI% oraclejdk
%CI% intellijidea-community
%CI% androidstudio
%CI% vlc
%CI% obs-studio
%CI% virtualbox
%CI% virtualbox-guest-additions-guest.install
%CI% anaconda3
