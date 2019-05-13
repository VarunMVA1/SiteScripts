#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "WarmBlue"
#Replace the variable value with the generated code

$palette = @{
    
    "themePrimary" = "#184359"; #WarmBlue
    "themeLighterAlt" = "#d3dce8";
    "themeLighter" = "#275973"; #WarmBlue, themeLighter
    "themeLight" = "#396C87"; #WarmBlue, themeLight
    "themeTertiary" = "#477C98";
    "themeSecondary" = "#98C6DF";
    "themeDarkAlt" = "#498AAD"; #WarmBlue;
    "themeDark" = "#5FA2C6"; #WarmBlue
    "themeDarker" = "#1c3557";
    "neutralLighterAlt" = "#f8f8f8";
    "neutralLighter" = "#f4f4f4";
    "neutralLight" = "#eaeaea";
    "neutralQuaternaryAlt" = "#dadada";
    "neutralQuaternary" = "#d0d0d0";
    "neutralTertiaryAlt" = "#c8c8c8";
    "neutralTertiary" = "#d4d4d4";
    "neutralSecondary" = "#006732"; #WarmBlue
    "neutralPrimaryAlt" = "#818181";
    "neutralPrimary" = "#8c8c8c";
    "neutralDark" = "#555555";
    "black" = "#3f3f3f";
    "white" = "#ffffff";
    "accent" = "#005578"; #WarmBlue;
    "backgroundOverlay" = "#102542"; #Navy
    "bodyBackground" = "#ffffff";
    "bodyText" = "#006732";#WarmBlue;
}

# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false -Overwrite
