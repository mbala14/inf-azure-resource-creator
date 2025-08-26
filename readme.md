This is version 2 of Azure resource creator

Goals:
1) Write almost production ready code with step by step instructions
2) Create Terraform script to create blob storage
3) Learn how to add role to blob storage
4) Spike to see if we can do configuration based setup for environments.
5) Place config values for different environments


Steps:

1) Creating a service principle and assign Contributor role
Why? SO that I can use the credentials to log into Azure for resource creation
 az ad sp create-for-rbac \
   --name "inf-service-principle" \
   --role Contributor \
   --scopes /subscriptions/1928e1cf-ffe8-4542-ba55-041e18000e11
Output of the code above will look something like this structure
{
"appId": "cb55340e-4146-4657-84ab-e72a4db93b16",
"displayName": "inf-service-principle",
"password": "p***y",
"tenant": "5d4cf31f-151c-4a6d-a7f2-6495c244a8f2"
}
------------------------------------------------------

Step 2 — Assign Directory Reader role to your SP
Replace <APP_ID> with the appId you got when creating the SP.

az role assignment create --assignee cb55340e-4146-4657-84ab-e72a4db93b16 --role "Directory Reader"
az role assignment create --assignee fb78457f-7190-438e-90fc-6e6ee40285a4 --role "Directory Reader"

**** Important ****
Directory Reader permission cannot be given using az command so will need to give via UI portal

Steps to perform manually:
a)Login to https://entra.microsoft.com/#/roles
b)Go to Roles & Admin on left menu
c)Search for Directory reader
d)Add assignment - then search on the service principle name that you created to assign role
-----------------------------------------------------










