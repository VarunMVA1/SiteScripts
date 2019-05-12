#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "Taupe"
#Replace the variable value with the generated code

$palette = @{
    
    "themePrimary" = "#4D4037"; #Taupe
    "themeLighterAlt" = "#d3dce8";
    "themeLighter" = "#60534A"; #Taupe, themeLighter
    "themeLight" = "#776C64"; #Taupe, themeLight
    "themeTertiary" = "#746961";
    "themeSecondary" = "#AEA9A6";
    "themeDarkAlt" = "#938881"; #Taupe;
    "themeDark" = "#B5ACA7"; #Taupe
    "themeDarker" = "#1c3557";
    "neutralLighterAlt" = "#f8f8f8";
    "neutralLighter" = "#f4f4f4";
    "neutralLight" = "#eaeaea";
    "neutralQuaternaryAlt" = "#dadada";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c8c8";
    "neutralTertiary" = "#d4d4d4";
    "neutralSecondary" = "#D0C4B6"; #Taupe
    "neutralPrimaryAlt" = "#818181";
    "neutralPrimary" = "#8c8c8c";
    "neutralDark" = "#555555";
    "black" = "#3f3f3f";
    "white" = "#ffffff";
    "accent" = "#7E6D5F"; #Taupe;
    "backgroundOverlay" = "#102542"; #Navy
    "bodyBackground" = "#ffffff";
    "bodyText" = "#D0C4B6";#Taupe;
}

# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false