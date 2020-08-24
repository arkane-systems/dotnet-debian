#
# Package .NET Core SDK 3.1
#

default:
	# Invoke debuild
	debuild

# build - build the whole thing, but do not package
build:
	# Untar the source file.
	tar zxvf ../dotnet-sdk-3.1_3.1.107.orig.tar.gz --one-top-level=./dotnet-sdk-3.1

	# Build the contained source
	./dotnet-sdk-3.1/tarball/build.sh

# clean - clean up the mess
clean:
	# Invoke debuild
	debuild -- clean

distclean:
	# Remove build files in reverse order
	rm -rf ./dotnet-sdk-3.1
