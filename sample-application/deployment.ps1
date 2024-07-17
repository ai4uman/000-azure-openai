$registry = "devopsopenaiacrprod"
$password = "qjNHDUzwpyYfydD/EixN2JIrtLb9BmG7PrtcTUm41K+ACRBWCoCQ"
$webapp = "devops-openai-webapp-prod"
$rg = "devops-openai-eastus-prod"
# az acr build --registry ${registry} --image chatbot:latest .
az webapp config container set --docker-custom-image-name chatbot --docker-registry-server-password ${password} --docker-registry-server-url https://${registry}.azurecr.io --docker-registry-server-user devopsopenaiacr --name ${webapp} --resource-group ${rg}