#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "Green"
#Replace the variable value with the generated code

$palette = @{
    
    "themePrimary" = "#67864E"; #Green
    "themeLighterAlt" = "#d3dce8";
    "themeLighter" = "#425D2C"; #Green, themeLighter
    "themeLight" = "#2F461C"; #Green, themeLight
    "themeTertiary" = "#93AE7C";
    "themeSecondary" = "#D4E8C3";
    "themeDarkAlt" = "#809C69"; #Green;
    "themeDark" = "#B2CB9E"; #Green
    "themeDarker" = "#1c3557";
    "neutralLighterAlt" = "#f8f8f8";
    "neutralLighter" = "#f4f4f4";
    "neutralLight" = "#eaeaea";
    "neutralQuaternaryAlt" = "#dadada";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c8c8";
    "neutralTertiary" = "#d4d4d4";
    "neutralSecondary" = "#98B786"; #Green
    "neutralPrimaryAlt" = "#818181";
    "neutralPrimary" = "#8c8c8c";
    "neutralDark" = "#555555";
    "black" = "#3f3f3f";
    "white" = "#ffffff";
    "accent" = "#759A62"; #Green;
    "backgroundOverlay" = "#102542"; #Navy
    "bodyBackground" = "#ffffff";
    "bodyText" = "#98B786";#Green;
}

# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false -Overwrite
