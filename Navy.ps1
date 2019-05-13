#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "Navy"
#Replace the variable value with the generated code
$palette = @{
    "themePrimary" = "#102542"; #Navy
    "themeLighterAlt" = "#d3dce8";
    "themeLighter" = "#fee7e5"; #Coral, themeLighter
    "themeLight" = "#fdd3ce"; #Coral, themeLight
    "themeTertiary" = "#7088aa";
    "themeSecondary" = "#567095";
    "themeDarkAlt" = "#F87060"; #Coral;
    "themeDark" = "#F87060"; #Coral
    "themeDarker" = "#1c3557";
    "neutralLighterAlt" = "#f8f8f8";
    "neutralLighter" = "#f4f4f4";
    "neutralLight" = "#eaeaea";
    "neutralQuaternaryAlt" = "#dadada";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c8c8";
    "neutralTertiary" = "#d4d4d4";
    "neutralSecondary" = "#53C7BD"; #Turquoise
    "neutralPrimaryAlt" = "#818181";
    "neutralPrimary" = "#8c8c8c";
    "neutralDark" = "#555555";
    "black" = "#3f3f3f";
    "white" = "#ffffff";
    "accent" = "#F87060"; #Coral;
    "backgroundOverlay" = "#102542"; #Navy
}
# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false -Overwrite
