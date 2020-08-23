#
# This Makefile orchestrates compilation of the source tarball,
# extraction of the build artifacts, and
# packaging of the results.
#

package:
	# TODO: downloading of the source tarball
	# TODO: extraction of the source tarball
	# Build the source tarball
	# tarball/build.sh
	# Extract the results to the dotnet-root folder
	tar zxvf tarball/artifacts/x64/Release/dotnet-sdk-3.1.107-debian.bullseye-x64.tar.gz --one-top-level=./dotnet-root
	# Extract the man pages
	mkdir ./manpages
	find -iname '*.1' -type f -path './tarball/src/cli*' -exec cp {} ./manpages \;

clean:
	rm -rf ./dotnet-root
	rm -rf ./manpages
