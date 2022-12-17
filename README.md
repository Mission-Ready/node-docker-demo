### Install the Azure CLI
Follow https://learn.microsoft.com/en-us/cli/azure/install-azure-cli

> Tip : Restart VS Code after installation if you are using the built in terminal

### Sign in with the Azure CLI


```
az login
```
Follow the prompts in the browser.

### Create an Azure App Service plan

```
az appservice plan create \
   --resource-group MY_RESOURCE_GROUP \
   --name MY_APP_SERVICE_PLAN \
   --is-linux
   ```

```
az appservice plan create --resource-group Node-GH-Actions --name demo_apps --is-linux
```

### Create a Node.js app
```
az webapp create \
    --name MY_WEBAPP_NAME \
    --plan MY_APP_SERVICE_PLAN \
    --resource-group MY_RESOURCE_GROUP \
    --runtime "NODE|14-lts"
```

az webapp create --name node-gh-demo-app --plan demo_apps --resource-group Node-GH-Actions --runtime "NODE|14-lts"

### Configure an Azure publish profile

Download the publish profile app config file to get the secrets https://portal.azure.com/#view/HubsExtension/BrowseResource/resourceType/Microsoft.Web%2Fsites 

Create an `AZURE_WEBAPP_PUBLISH_PROFILE` an env variable (repository secret) in Github's Actions secrets.

