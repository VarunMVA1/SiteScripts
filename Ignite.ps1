
#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "Ignite"
#Replace the variable value with the generated code

$palette = @{
  "primaryColor" = "#d83b01";
 "primaryColorShade1" = "#fdf6f3";
 "primaryColorShade2" = "#fbe7df";
 "primaryColorShade3" = "#f4beaa";
 "primaryColorShade4" = "#e8825d";
 "primaryColorShade5" = "#dd4f1b";
 "primaryColorShade6" = "#c33400";
 "primaryColorShade7" = "#a52c00";
 "primaryColorShade8" = "#792000";
 "backgroundColor" = "#d83b01";
 "backgroundColorShade1" = "#d33800";
 "backgroundColorShade2" = "#cf3700";
 "backgroundColorShade3" = "#c73500";
 "backgroundColorShade4" = "#b93100";
 "backgroundColorShade5" = "#b12f00";
 "backgroundColorShade6" = "#aa2d00";
 "backgroundColorShade7" = "#8d2600";
 "backgroundColorShade8" = "#641b00";
 "foregroundColor" = "#212121";
 "foregroundColorShade1" = "#e4e4e4";
 "foregroundColorShade2" = "#cccccc";
 "foregroundColorShade3" = "#b4b4b4";
 "foregroundColorShade4" = "#9b9b9b";
 "foregroundColorShade5" = "#838383";
 "foregroundColorShade6" = "#6a6a6a";
 "foregroundColorShade7" = "#525252";
 "foregroundColorShade8" = "#3a3a3a";
 "themePrimary" = "#d83b01";
 "themeLighterAlt" = "#fdf6f3";
 "themeLighter" = "#fbe7df";
 "themeLight" = "#f4beaa";
 "themeTertiary" = "#e8825d";
 "themeSecondary" = "#dd4f1b";
 "themeDarkAlt" = "#c33400";
 "themeDark" = "#a52c00";
 "themeDarker" = "#792000";
 "neutralLighterAlt" = "#d33800";
 "neutralLighter" = "#cf3700";
 "neutralLight" = "#c73500";
 "neutralQuaternaryAlt" = "#b93100";
 "neutralQuaternary" = "#b12f00";
 "neutralTertiaryAlt" = "#aa2d00";
 "neutralTertiary" = "#b4b4b4";
 "neutralSecondary" = "#9b9b9b";
 "neutralPrimaryAlt" = "#838383";
 "neutralPrimary" = "#212121";
 "neutralDark" = "#525252";
 "black" = "#3a3a3a";
 "white" = "#d83b01";
 "primaryBackground" = "#d83b01";
 "primaryText" = "#212121";
 "bodyBackground" = "#d83b01";
 "bodyText" = "#212121";
 "disabledBackground" = "#cf3700";
 "disabledText" = "#aa2d00";
 }

 
# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false
