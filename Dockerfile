#take the .net core runtime as base image and 
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
WORKDIR /app
EXPOSE 80
#we already have a published image that we want to run using runtime
COPY ./webapidockerize/out/* ./

#dotnet run 
ENTRYPOINT ["dotnet","webapidockerize.dll"]