# CICD Apply policies

This is an example of command line tools to apply policies to MuleSoft API deployed on Anypoint.

## Getting Started

Please pull the sources from github

### Prerequisites

Installation of Anypoint CLI

https://docs.mulesoft.com/runtime-manager/anypoint-platform-cli

### Running the command

Set up the environment variables:
```
export ANYPOINT_USERNAME=anthonyrabiaza
export ANYPOINT_PASSWORD=<your password>
export ANYPOINT_ENV=Sandbox
```
Check the content of deploy_clientid_enforcement.txt, it is applying client_id enforcement on CICD Dummy

Run the scripts:
```
./anypoint-cli-execute.sh deploy_clientid_enforcement.txt
```

After few second the policy will be apply to the API, You can call the API and check that it requires a client_id:
```
{
  "error": "missing_client",
  "description": "client_id is missing"
}
```