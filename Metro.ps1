
#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "Metro"
#Replace the variable value with the generated code

$palette = @{
  "primaryColor" = "#3678be";
 "primaryColorShade1" = "#f5f9fc";
 "primaryColorShade2" = "#e4eef8";
 "primaryColorShade3" = "#b9d2ec";
 "primaryColorShade4" = "#7ba8d9";
 "primaryColorShade5" = "#4986c7";
 "primaryColorShade6" = "#306cac";
 "primaryColorShade7" = "#295b91";
 "primaryColorShade8" = "#1e436b";
 "backgroundColor" = "#eeeeee";
 "backgroundColorShade1" = "#e7e7e7";
 "backgroundColorShade2" = "#e3e3e3";
 "backgroundColorShade3" = "#dadada";
 "backgroundColorShade4" = "#cbcbcb";
 "backgroundColorShade5" = "#c2c2c2";
 "backgroundColorShade6" = "#bababa";
 "backgroundColorShade7" = "#9a9a9a";
 "backgroundColorShade8" = "#6e6e6e";
 "foregroundColor" = "#302E2F";
 "foregroundColorShade1" = "#e6e5e6";
 "foregroundColorShade2" = "#cfcecf";
 "foregroundColorShade3" = "#b9b6b8";
 "foregroundColorShade4" = "#a29fa1";
 "foregroundColorShade5" = "#8b888a";
 "foregroundColorShade6" = "#757173";
 "foregroundColorShade7" = "#5e5b5c";
 "foregroundColorShade8" = "#474546";
 "themePrimary" = "#3678be";
 "themeLighterAlt" = "#f5f9fc";
 "themeLighter" = "#e4eef8";
 "themeLight" = "#b9d2ec";
 "themeTertiary" = "#7ba8d9";
 "themeSecondary" = "#4986c7";
 "themeDarkAlt" = "#306cac";
 "themeDark" = "#295b91";
 "themeDarker" = "#1e436b";
 "neutralLighterAlt" = "#e7e7e7";
 "neutralLighter" = "#e3e3e3";
 "neutralLight" = "#dadada";
 "neutralQuaternaryAlt" = "#cbcbcb";
 "neutralQuaternary" = "#c2c2c2";
 "neutralTertiaryAlt" = "#bababa";
 "neutralTertiary" = "#b9b6b8";
 "neutralSecondary" = "#a29fa1";
 "neutralPrimaryAlt" = "#8b888a";
 "neutralPrimary" = "#302E2F";
 "neutralDark" = "#5e5b5c";
 "black" = "#474546";
 "white" = "#eeeeee";
 "primaryBackground" = "#eeeeee";
 "primaryText" = "#302E2F";
 "bodyBackground" = "#eeeeee";
 "bodyText" = "#302E2F";
 "disabledBackground" = "#e3e3e3";
 "disabledText" = "#bababa";
 }

 
# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false
