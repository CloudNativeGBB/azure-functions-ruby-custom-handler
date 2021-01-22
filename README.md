# Azure Functions Custom Handler for Ruby

This is an Azure Functions Custom Handler running Ruby with the Sinatra Web Framework.

## Configuration

1. Rename ```local.settings.json.example``` to ```local.settings.json``` for local testing and add your Azure Storage Connection String.
1. If you change the name of the app (```RubyJob```) you must update:
	1. Dockerfile accordingly (line 105: ```RUN cd /home/site/wwwroot/RubyJob && bundle 1install```)
	1. ```host.json``` -> ```{customHandler:{ workingDirectory: "RubyJob"}" }```
## Running the app/custom handler

Follow offical Azure Functions Docs:
- https://docs.microsoft.com/en-us/azure/azure-functions/functions-custom-handlers