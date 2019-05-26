#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "Diffuse"
#Replace the variable value with the generated code

$palette = @{
  "primaryColor" = "#00B294";
  "primaryColorShade1" = "#f2fcfa";
  "primaryColorShade2" = "#dbf7f2";
  "primaryColorShade3" = "#a2e8dc";
  "primaryColorShade4" = "#54d1bc";
  "primaryColorShade5" = "#17bca0";
  "primaryColorShade6" = "#00a186";
  "primaryColorShade7" = "#008871";
  "primaryColorShade8" = "#006453";
  "backgroundColor" = "#f1f1f1";
  "backgroundColorShade1" = "#ececec";
  "backgroundColorShade2" = "#e8e8e8";
  "backgroundColorShade3" = "#dedede";
  "backgroundColorShade4" = "#cfcfcf";
  "backgroundColorShade5" = "#c6c6c6";
  "backgroundColorShade6" = "#bebebe";
  "backgroundColorShade7" = "#9e9e9e";
  "backgroundColorShade8" = "#707070";
  "foregroundColor" = "#686868";
  "foregroundColorShade1" = "#f9f9f9";
  "foregroundColorShade2" = "#eeeeee";
  "foregroundColorShade3" = "#d2d2d2";
  "foregroundColorShade4" = "#a5a5a5";
  "foregroundColorShade5" = "#7b7b7b";
  "foregroundColorShade6" = "#5e5e5e";
  "foregroundColorShade7" = "#4f4f4f";
  "foregroundColorShade8" = "#3b3b3b";
  "themePrimary" = "#00B294";
  "themeLighterAlt" = "#f2fcfa";
  "themeLighter" = "#dbf7f2";
  "themeLight" = "#a2e8dc";
  "themeTertiary" = "#54d1bc";
  "themeSecondary" = "#17bca0";
  "themeDarkAlt" = "#00a186";
  "themeDark" = "#008871";
  "themeDarker" = "#006453";
  "neutralLighterAlt" = "#ececec";
  "neutralLighter" = "#e8e8e8";
  "neutralLight" = "#dedede";
  "neutralQuaternaryAlt" = "#cfcfcf";
  "neutralQuaternary" = "#c6c6c6";
  "neutralTertiaryAlt" = "#bebebe";
  "neutralTertiary" = "#d2d2d2";
  "neutralSecondary" = "#a5a5a5";
  "neutralPrimaryAlt" = "#7b7b7b";
  "neutralPrimary" = "#686868";
  "neutralDark" = "#4f4f4f";
  "black" = "#3b3b3b";
  "white" = "#f1f1f1";
  "primaryBackground" = "#f1f1f1";
  "primaryText" = "#686868";
  "bodyBackground" = "#f1f1f1";
  "bodyText" = "#686868";
  "disabledBackground" = "#e8e8e8";
  "disabledText" = "#bebebe"; 
 }

 
# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false
