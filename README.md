# netbird-azure
Netbird deployment scripts for a management server with Azure as IdP

## Getting started
- install docker, i.e. with the convinience script:
```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```
- follow the steps needed to create the App in Azure AD: https://docs.netbird.io/selfhosted/identity-providers#azure-ad-microsoft-entra-id
- clone the repo, to some temp folder
- change the active folder to the deploy folder
- copy the file params_dist.sh to params.sh
- edit the file params.sh and change the variables to your environment
- run the script replace_params.sh
- run the script deploy.sh, this will install everything into /opt/netbird
- change the active folder to /opt/netbird
- start the docker containers with docker-compose up -d
- you should be able to open your Netbird management instance with the URL you configured in the params.sh. The first user, which logs in to Netbird, will be the admin. Users logging in after the first user are only normal users but can be promoted to admins via the Netbird UI. 
