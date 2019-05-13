#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "Slate"
#Replace the variable value with the generated code

$palette = @{
    
    "themePrimary" = "#324448"; #Slate
    "themeLighterAlt" = "#d3dce8";
    "themeLighter" = "#485D62"; #Slate, themeLighter
    "themeLight" = "#667A7F"; #Slate, themeLight
    "themeTertiary" = "#5D6F73";
    "themeSecondary" = "#9EA7A9";
    "themeDarkAlt" = "#86999D"; #Slate;
    "themeDark" = "#A9B7BA"; #Slate
    "themeDarker" = "#1c3557";
    "neutralLighterAlt" = "#f8f8f8";
    "neutralLighter" = "#f4f4f4";
    "neutralLight" = "#eaeaea";
    "neutralQuaternaryAlt" = "#dadada";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c8c8";
    "neutralTertiary" = "#d4d4d4";
    "neutralSecondary" = "#AABDBE"; #Slate
    "neutralPrimaryAlt" = "#818181";
    "neutralPrimary" = "#8c8c8c";
    "neutralDark" = "#555555";
    "black" = "#3f3f3f";
    "white" = "#ffffff";
    "accent" = "#416C73"; #Slate;
    "backgroundOverlay" = "#102542"; #Navy
    "bodyBackground" = "#ffffff";
    "bodyText" = "#AABDBE";#Slate;
}

# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false -Overwrite
