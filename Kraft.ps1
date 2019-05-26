
#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "Kraft"
#Replace the variable value with the generated code

$palette = @{
  "primaryColor" = "#CC6633";
 "primaryColorShade1" = "#fdf8f5";
 "primaryColorShade2" = "#f9ece5";
 "primaryColorShade3" = "#f0ccba";
 "primaryColorShade4" = "#e09d7b";
 "primaryColorShade5" = "#d27647";
 "primaryColorShade6" = "#b85c2e";
 "primaryColorShade7" = "#9b4e27";
 "primaryColorShade8" = "#72391d";
 "backgroundColor" = "#FFDEA0";
 "backgroundColorShade1" = "#f8d89c";
 "backgroundColorShade2" = "#f4d49a";
 "backgroundColorShade3" = "#eacc93";
 "backgroundColorShade4" = "#dabe89";
 "backgroundColorShade5" = "#d0b583";
 "backgroundColorShade6" = "#c8ae7e";
 "backgroundColorShade7" = "#a69169";
 "backgroundColorShade8" = "#76674a";
 "foregroundColor" = "#333";
 "foregroundColorShade1" = "#f7f7f7";
 "foregroundColorShade2" = "#e9e9e9";
 "foregroundColorShade3" = "#c2c2c2";
 "foregroundColorShade4" = "#858585";
 "foregroundColorShade5" = "#4b4b4b";
 "foregroundColorShade6" = "#2e2e2e";
 "foregroundColorShade7" = "#272727";
 "foregroundColorShade8" = "#1d1d1d";
 "themePrimary" = "#CC6633";
 "themeLighterAlt" = "#fdf8f5";
 "themeLighter" = "#f9ece5";
 "themeLight" = "#f0ccba";
 "themeTertiary" = "#e09d7b";
 "themeSecondary" = "#d27647";
 "themeDarkAlt" = "#b85c2e";
 "themeDark" = "#9b4e27";
 "themeDarker" = "#72391d";
 "neutralLighterAlt" = "#f8d89c";
 "neutralLighter" = "#f4d49a";
 "neutralLight" = "#eacc93";
 "neutralQuaternaryAlt" = "#dabe89";
 "neutralQuaternary" = "#d0b583";
 "neutralTertiaryAlt" = "#c8ae7e";
 "neutralTertiary" = "#c2c2c2";
 "neutralSecondary" = "#858585";
 "neutralPrimaryAlt" = "#4b4b4b";
 "neutralPrimary" = "#333";
 "neutralDark" = "#272727";
 "black" = "#1d1d1d";
 "white" = "#FFDEA0";
 "primaryBackground" = "#FFDEA0";
 "primaryText" = "#333";
 "bodyBackground" = "#FFDEA0";
 "bodyText" = "#333";
 "disabledBackground" = "#f4d49a";
 "disabledText" = "#c8ae7e";
 }

 
# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false
