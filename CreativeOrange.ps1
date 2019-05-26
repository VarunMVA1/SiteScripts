
#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "CreativeOrange"
#Replace the variable value with the generated code

$palette = @{
  "primaryColor" = "#4a4742";
  "primaryColorShade1" = "#f8f7f7";
  "primaryColorShade2" = "#ebeae8";
  "primaryColorShade3" = "#c9c6c2";
  "primaryColorShade4" = "#928f89";
  "primaryColorShade5" = "#605c56";
  "primaryColorShade6" = "#43403b";
  "primaryColorShade7" = "#383632";
  "primaryColorShade8" = "#292825";
  "backgroundColor" = "#f4f3f0";
  "backgroundColorShade1" = "#eeede9";
  "backgroundColorShade2" = "#eae9e6";
  "backgroundColorShade3" = "#e1e0dc";
  "backgroundColorShade4" = "#d1d0cd";
  "backgroundColorShade5" = "#c8c7c4";
  "backgroundColorShade6" = "#c0bfbc";
  "backgroundColorShade7" = "#9f9f9c";
  "backgroundColorShade8" = "#71716f";
  "foregroundColor" = "#939393";
  "foregroundColorShade1" = "#fbfbfb";
  "foregroundColorShade2" = "#f3f3f3";
  "foregroundColorShade3" = "#dfdfdf";
  "foregroundColorShade4" = "#bfbfbf";
  "foregroundColorShade5" = "#a1a1a1";
  "foregroundColorShade6" = "#858585";
  "foregroundColorShade7" = "#707070";
  "foregroundColorShade8" = "#535353";
  "themePrimary" = "#4a4742";
  "themeLighterAlt" = "#f8f7f7";
  "themeLighter" = "#ebeae8";
  "themeLight" = "#c9c6c2";
  "themeTertiary" = "#928f89";
  "themeSecondary" = "#605c56";
  "themeDarkAlt" = "#43403b";
  "themeDark" = "#383632";
  "themeDarker" = "#292825";
  "neutralLighterAlt" = "#eeede9";
  "neutralLighter" = "#eae9e6";
  "neutralLight" = "#e1e0dc";
  "neutralQuaternaryAlt" = "#d1d0cd";
  "neutralQuaternary" = "#c8c7c4";
  "neutralTertiaryAlt" = "#c0bfbc";
  "neutralTertiary" = "#dfdfdf";
  "neutralSecondary" = "#bfbfbf";
  "neutralPrimaryAlt" = "#a1a1a1";
  "neutralPrimary" = "#939393";
  "neutralDark" = "#707070";
  "black" = "#535353";
  "white" = "#f4f3f0";
  "primaryBackground" = "#f4f3f0";
  "primaryText" = "#939393";
  "bodyBackground" = "#f4f3f0";
  "bodyText" = "#939393";
  "disabledBackground" = "#eae9e6";
  "disabledText" = "#c0bfbc";
 }

 
# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false
