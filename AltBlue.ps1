#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "AltBlue"
#Replace the variable value with the generated code

$palette = @{
    
    "themePrimary" = "#0F2846"; #Alt Blue
    "themeLighterAlt" = "#d3dce8";
    "themeLighter" = "#1F3E63"; #Alt Blue, themeLighter
    "themeLight" = "#2F5480"; #Alt Blue, themeLight
    "themeTertiary" = "#7D9CC0";
    "themeSecondary" = "#385475";
    "themeDarkAlt" = "#4871A0"; #Alt Blue;
    "themeDark" = "#608ABB"; #Alt Blue
    "themeDarker" = "#1c3557";
    "neutralLighterAlt" = "#f8f8f8";
    "neutralLighter" = "#f4f4f4";
    "neutralLight" = "#eaeaea";
    "neutralQuaternaryAlt" = "#dadada";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c8c8";
    "neutralTertiary" = "#d4d4d4";
    "neutralSecondary" = "#13477D"; #Alt Blue
    "neutralPrimaryAlt" = "#818181";
    "neutralPrimary" = "#8c8c8c";
    "neutralDark" = "#555555";
    "black" = "#3f3f3f";
    "white" = "#ffffff";
    "accent" = "#085299"; #Alt Blue;
    "backgroundOverlay" = "#102542"; #Navy
    "bodyBackground" = "#ffffff";
    "bodyText" = "#13477D";#Alt Blue;
}

# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false -Overwrite
