#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "Yellow"
#Replace the variable value with the generated code

$palette = @{
    
    "themePrimary" = "#E79C38"; #Yellow
    "themeLighterAlt" = "#d3dce8";
    "themeLighter" = "#C07A1D"; #Yellow, themeLighter
    "themeLight" = "#9B5C09"; #Yellow, themeLight
    "themeTertiary" = "#E6B16A";
    "themeSecondary" = "#A9793A";
    "themeDarkAlt" = "#7C4B0A"; #Yellow;
    "themeDark" = "#5B3604"; #Yellow
    "themeDarker" = "#1c3557";
    "neutralLighterAlt" = "#f8f8f8";
    "neutralLighter" = "#f4f4f4";
    "neutralLight" = "#eaeaea";
    "neutralQuaternaryAlt" = "#dadada";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c8c8";
    "neutralTertiary" = "#d4d4d4";
    "neutralSecondary" = "#F4C74B"; #Yellow
    "neutralPrimaryAlt" = "#818181";
    "neutralPrimary" = "#8c8c8c";
    "neutralDark" = "#555555";
    "black" = "#3f3f3f";
    "white" = "#ffffff";
    "accent" = "#EEB137"; #Yellow;
    "backgroundOverlay" = "#102542"; #Navy
    "bodyBackground" = "#ffffff";
    "bodyText" = "#64C7C7";#F4C74B;
}

# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false -Overwrite
