#
# Package .NET Core SDK 3.1
#

default:
	echo "No default action specified."

fetch:
	# Untar the source file.
	tar zxvf ./dotnet-sdk-3.1_3.1.107.orig.tar.gz --one-top-level=./dotnet-sdk-3.1

distclean:
	# Remove build files in reverse order
	rm -rf ./dotnet-sdk-3.1
