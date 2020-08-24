#
# Package .NET Core SDK 3.1
#

default:
	# Invoke debuild
	debuild

# build - build the whole thing, but do not package
build:
	# Fetch the source file if it does not exist.
	test -f ../dotnet-sdk-3.1_3.1.107.orig.tar.gz || wget -O ../dotnet-sdk-3.1_3.1.107.orig.tar.gz http://localhost:8080/source-tarball.tar.gz

	# Untar the source file if it is not already untarred.
	test -d ./dotnet-sdk-3.1/tarball || tar zxvf ../dotnet-sdk-3.1_3.1.107.orig.tar.gz --one-top-level=./dotnet-sdk-3.1

	# Build the contained source
	test -d ./dotnet-sdk-3.1/results || ./dotnet-sdk-3.1/tarball/build.sh
	test -d ./dotnet-sdk-3.1/results || tar zxvf ./dotnet-sdk-3.1/tarball/artifacts/x64/Release/dotnet-sdk-3.1.107-debian.bullseye-x64.tar.gz --one-top-level=./dotnet-sdk-3.1/results

# clean - clean up the mess
clean:
	# Invoke debuild
	debuild -- clean

distclean:
	# Remove build files in reverse order
	rm -rf ./dotnet-sdk-3.1
	rm -f  ../dotnet-sdk-3.1_3.1.107.orig.tar.gz

