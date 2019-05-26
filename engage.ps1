
#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "engage"
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
 "backgroundColor" = "#f5f5f5";
 "backgroundColorShade1" = "#eeeeee";
 "backgroundColorShade2" = "#eaeaea";
 "backgroundColorShade3" = "#e1e1e1";
 "backgroundColorShade4" = "#d1d1d1";
 "backgroundColorShade5" = "#c8c8c8";
 "backgroundColorShade6" = "#c0c0c0";
 "backgroundColorShade7" = "#9f9f9f";
 "backgroundColorShade8" = "#717171";
 "foregroundColor" = "#333333";
 "foregroundColorShade1" = "#f7f7f7";
 "foregroundColorShade2" = "#e9e9e9";
 "foregroundColorShade3" = "#c2c2c2";
 "foregroundColorShade4" = "#858585";
 "foregroundColorShade5" = "#4b4b4b";
 "foregroundColorShade6" = "#2e2e2e";
 "foregroundColorShade7" = "#272727";
 "foregroundColorShade8" = "#1d1d1d";
 "themePrimary" = "#d83b01";
 "themeLighterAlt" = "#fdf6f3";
 "themeLighter" = "#fbe7df";
 "themeLight" = "#f4beaa";
 "themeTertiary" = "#e8825d";
 "themeSecondary" = "#dd4f1b";
 "themeDarkAlt" = "#c33400";
 "themeDark" = "#a52c00";
 "themeDarker" = "#792000";
 "neutralLighterAlt" = "#eeeeee";
 "neutralLighter" = "#eaeaea";
 "neutralLight" = "#e1e1e1";
 "neutralQuaternaryAlt" = "#d1d1d1";
 "neutralQuaternary" = "#c8c8c8";
 "neutralTertiaryAlt" = "#c0c0c0";
 "neutralTertiary" = "#c2c2c2";
 "neutralSecondary" = "#858585";
 "neutralPrimaryAlt" = "#4b4b4b";
 "neutralPrimary" = "#333333";
 "neutralDark" = "#272727";
 "black" = "#1d1d1d";
 "white" = "#f5f5f5";
 "primaryBackground" = "#f5f5f5";
 "primaryText" = "#333333";
 "bodyBackground" = "#f5f5f5";
 "bodyText" = "#333333";
 "disabledBackground" = "#eaeaea";
 "disabledText" = "#c0c0c0";
 }

 
# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false
