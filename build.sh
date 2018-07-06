# install all libraries
apt-get update
apt-get -y install autoconf automake libtool curl make g++ unzip

# clone the repository
git clone https://github.com/google/protobuf.git .protobuf

# init protobuf installation
cd .protobuf
git submodule update --init --recursive
./autogen.sh

# install protoc tool
./configure --prefix=/usr
make
make check
make install
ldconfig # refresh shared library cache.

# cleaning up
cd ..
rm -rf .protobuf

