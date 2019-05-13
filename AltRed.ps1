#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "AltRed"
#Replace the variable value with the generated code

$palette = @{
    
    "themePrimary" = "#5E1B15"; #Alt Red
    "themeLighterAlt" = "#d3dce8";
    "themeLighter" = "#7A2B24"; #Alt Red, themeLighter
    "themeLight" = "#97423B"; #Alt Red, themeLight
    "themeTertiary" = "#944E47";
    "themeSecondary" = "#D09C97";
    "themeDarkAlt" = "#B0554E"; #Alt Red;
    "themeDark" = "#CF746D"; #Alt Red
    "themeDarker" = "#1c3557";
    "neutralLighterAlt" = "#f8f8f8";
    "neutralLighter" = "#f4f4f4";
    "neutralLight" = "#eaeaea";
    "neutralQuaternaryAlt" = "#dadada";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c8c8";
    "neutralTertiary" = "#d4d4d4";
    "neutralSecondary" = "#C40F2F"; #Alt Red
    "neutralPrimaryAlt" = "#818181";
    "neutralPrimary" = "#8c8c8c";
    "neutralDark" = "#555555";
    "black" = "#3f3f3f";
    "white" = "#ffffff";
    "accent" = "#961E28"; #Alt Red;
    "backgroundOverlay" = "#102542"; #Navy
    "bodyBackground" = "#ffffff";
    "bodyText" = "#13477D";#Alt Red;
}

# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false -Overwrite
