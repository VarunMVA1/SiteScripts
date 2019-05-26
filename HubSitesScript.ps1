cls
$adminSiteUrl = "https://captureminds-admin.sharepoint.com/"
$username = "varun@captureminds.onmicrosoft.com"
Connect-PnPOnline $adminSiteUrl
 
#Get-SPOHubSite

#Register-SPOHubSite -Site https://captureminds.sharepoint.com/sites/Blumont

Register-PnPHubSite -Site https://captureminds.sharepoint.com/sites/Blumont

Set-PnPHubSite -Identity https://captureminds.sharepoint.com/sites/Blumont -Title "Blumont" -LogoUrl https://captureminds.sharepoint.com/sites/Blumont/SiteAssets/CP96.png -Description "Main hub site for collaboration on Relief activities across Blumont"

Set-PnPHubSite -Identity https://captureminds.sharepoint.com/sites/Unum -Title "Unum Hub" -LogoUrl https://captureminds.sharepoint.com/sites/Unum/SiteAssets/Unum96_35.png -Description "Main hub site for collaboration on Disablity insurance activities across Unum"

#Set-SPOHubSite -Identity https://captureminds.sharepoint.com/sites/Blumont -LogoUrl https://captureminds.sharepoint.com/sites/Blumont/SiteAssets/CP96.png -Description "Main hub site for collaboration on Relief activities across Blumont"

#Grant-SPOHubSiteRights -Identity https://captureminds.sharepoint.com/sites/Blumont -Principals "Blumont" -Rights Join

#Unregister-SPOHubSite -Identity https://captureminds.sharepoint.com/sites/productmarketingcontoso
