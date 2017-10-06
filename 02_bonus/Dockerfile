FROM microsoft/dotnet:latest
RUN \
	apt-get update \
	&& apt-get install -y vim 
WORKDIR /app
RUN \
	dotnet new console -lang f# \
	&& dotnet add package Suave \
	&& dotnet restore
COPY Program.fs /app
EXPOSE 8080
