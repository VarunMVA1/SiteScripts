#
cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-SPOService -Url $adminSiteUrl -Credential $username


$themeName = "DarkRed"
#Replace the variable value with the generated code

$palette = @{
    "themePrimary" = "#be0000";
    "themeLighterAlt" = "#080000";
    "themeLighter" = "#1f0000";
    "themeLight" = "#390000";
    "themeTertiary" = "#730000";
    "themeSecondary" = "#a80000";
    "themeDarkAlt" = "#c61414";
    "themeDark" = "#cf3232";
    "themeDarker" = "#db6060";
    "neutralLighterAlt" = "#0b0b0b";
    "neutralLighter" = "#151515";
    "neutralLight" = "#252525";
    "neutralQuaternaryAlt" = "#2f2f2f";
    "neutralQuaternary" = "#373737";
    "neutralTertiaryAlt" = "#595959";
    "neutralTertiary" = "#f6f2f2";
    "neutralSecondary" = "#f8f4f4";
    "neutralPrimaryAlt" = "#f9f6f6";
    "neutralPrimary" = "#f2eaea";
    "neutralDark" = "#fcfafa";
    "black" = "#fdfdfd";
    "white" = "#000000";
    "bodyBackground" = "#000000";
    "bodyText" = "#f2eaea";
}

# For an existing theme to get updated, it needs to be removed and re-added
try {
    Remove-SPOTheme -name $themeName
}
catch {
    # first time adding theme
}
Add-SPOTheme -Name $themeName -Palette $palette -IsInverted:$false