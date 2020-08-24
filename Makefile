#
# Package .NET Core SDK 3.1
#

default:
	echo "No default action specified."

fetch:
	# Fetch and untar the source file.
	wget http://localhost:8080/dotnet-sdk-3.1.107-debian.bullseye-x64.tar.gz
	tar zxmf ./dotnet-sdk-3.1.107-debian.bullseye-x64.tar.gz --one-top-level=./dotnet-sdk-3.1

distclean:
	# Remove build files in reverse order
	rm -rf ./dotnet-sdk-3.1
	rm -f  ./dotnet-sdk-3.1.107-debian.bullseye-x64.tar.gz
