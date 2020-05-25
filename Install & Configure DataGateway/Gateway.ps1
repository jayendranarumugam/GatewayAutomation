$Psversion = (Get-Host).Version

if($Psversion.Major -ge 7)
{

if (!(Get-Module "DataGateway")) {
Install-Module -Name DataGateway 
}

$securePassword = "" | ConvertTo-SecureString -AsPlainText -Force;
$ApplicationId ="";
$Tenant = "";
$GatewayName = "MyGateway";
$RecoverKey = "Demo@123" | ConvertTo-SecureString -AsPlainText -Force;
$userIDToAddasAdmin = ""


#Gateway Login

Connect-DataGatewayServiceAccount -ApplicationId $ApplicationId -ClientSecret $securePassword  -Tenant $Tenant


#Installing Gateway

Install-DataGateway -AcceptConditions 


#Configuring Gateway

$GatewayDetails = Add-DataGatewayCluster -Name $GatewayName -RecoveryKey  $RecoverKey


#Add User as Admin
Add-DataGatewayClusterUser -GatewayClusterId $GatewayDetails.GatewayObjectId -PrincipalObjectId $userIDToAddasAdmin -AllowedDataSourceTypes $null -Role Admin

}
else{
exit 1
}

