# GatewayAutomation

Recently with the [Data Gateway Automation](https://powerbi.microsoft.com/en-us/blog/announcing-automation-of-data-gateway-installationpublic-preview/) feature. We can now Sliently install and configure Data Gateway using Powershell.

> Note: This is still a public preview feature. There will be a Lots of improvements and features will be added when this becomes GA


![](https://powerbiblogscdn.azureedge.net/wp-content/uploads/2020/05/SilentInstall-1024x254.png)

This repo contains a simple Powershell Script used to Install and configure the DataGateway



## Limitation (As of May 2020)

- Only Powershell Version 7 and above is supported.
- You couldn't able to create new data source .
- You couldn't upgrade a gateway ,right now the powershell script is only applicable for installing DataGateway.
- Adding Gateway Members to newly created cluster is not supported yet.
