#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "Teal"
#Replace the variable value with the generated code

$palette = @{
    
    "themePrimary" = "#008290"; #Teal
    "themeLighterAlt" = "#d3dce8";
    "themeLighter" = "#1192A0"; #Teal, themeLighter
    "themeLight" = "#20A4B2"; #Teal, themeLight
    "themeTertiary" = "#27ACBB";
    "themeSecondary" = "#6CDFEC";
    "themeDarkAlt" = "#34BBCA"; #Teal;
    "themeDark" = "#50D9E8"; #Teal
    "themeDarker" = "#1c3557";
    "neutralLighterAlt" = "#f8f8f8";
    "neutralLighter" = "#f4f4f4";
    "neutralLight" = "#eaeaea";
    "neutralQuaternaryAlt" = "#dadada";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c8c8";
    "neutralTertiary" = "#d4d4d4";
    "neutralSecondary" = "#64C7C7"; #Teal
    "neutralPrimaryAlt" = "#818181";
    "neutralPrimary" = "#8c8c8c";
    "neutralDark" = "#555555";
    "black" = "#3f3f3f";
    "white" = "#ffffff";
    "accent" = "#2F9BA7"; #Teal;
    "backgroundOverlay" = "#102542"; #Navy
    "bodyBackground" = "#ffffff";
    "bodyText" = "#64C7C7";#Teal;
}

# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false