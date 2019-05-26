
#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "Terra"
#Replace the variable value with the generated code

$palette = @{
  "primaryColor" = "#53493f";
 "primaryColorShade1" = "#f8f7f6";
 "primaryColorShade2" = "#ece9e6";
 "primaryColorShade3" = "#ccc4bd";
 "primaryColorShade4" = "#988e83";
 "primaryColorShade5" = "#695e53";
 "primaryColorShade6" = "#4c433a";
 "primaryColorShade7" = "#403831";
 "primaryColorShade8" = "#2f2924";
 "backgroundColor" = "#867847";
 "backgroundColorShade1" = "#847646";
 "backgroundColorShade2" = "#817445";
 "backgroundColorShade3" = "#7c6f42";
 "backgroundColorShade4" = "#74683d";
 "backgroundColorShade5" = "#6e633a";
 "backgroundColorShade6" = "#6a5f38";
 "backgroundColorShade7" = "#584f2f";
 "backgroundColorShade8" = "#3f3821";
 "foregroundColor" = "#565656";
 "foregroundColorShade1" = "#f8f8f8";
 "foregroundColorShade2" = "#ececec";
 "foregroundColorShade3" = "#cdcdcd";
 "foregroundColorShade4" = "#9a9a9a";
 "foregroundColorShade5" = "#6b6b6b";
 "foregroundColorShade6" = "#4e4e4e";
 "foregroundColorShade7" = "#424242";
 "foregroundColorShade8" = "#313131";
 "themePrimary" = "#53493f";
 "themeLighterAlt" = "#f8f7f6";
 "themeLighter" = "#ece9e6";
 "themeLight" = "#ccc4bd";
 "themeTertiary" = "#988e83";
 "themeSecondary" = "#695e53";
 "themeDarkAlt" = "#4c433a";
 "themeDark" = "#403831";
 "themeDarker" = "#2f2924";
 "neutralLighterAlt" = "#847646";
 "neutralLighter" = "#817445";
 "neutralLight" = "#7c6f42";
 "neutralQuaternaryAlt" = "#74683d";
 "neutralQuaternary" = "#6e633a";
 "neutralTertiaryAlt" = "#6a5f38";
 "neutralTertiary" = "#cdcdcd";
 "neutralSecondary" = "#9a9a9a";
 "neutralPrimaryAlt" = "#6b6b6b";
 "neutralPrimary" = "#565656";
 "neutralDark" = "#424242";
 "black" = "#313131";
 "white" = "#867847";
 "primaryBackground" = "#867847";
 "primaryText" = "#565656";
 "bodyBackground" = "#867847";
 "bodyText" = "#565656";
 "disabledBackground" = "#817445";
 "disabledText" = "#6a5f38";
 }

 
# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false
