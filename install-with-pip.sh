#!/bin/sh

echo "Usage : ./install-with-pip.sh"

if [ "$(uname)" == "Ubuntu" ]; then

    sudo apt-get install python-pip

else
    sudo easy_install pip
fi

echo 'Cython>=0.19.2' > requirements.txt
echo 'numpy>=1.7.1' > requirements.txt
echo 'scipy>=0.13.2' > requirements.txt
echo 'scikit-image>=0.9.3' > requirements.txt
echo 'matplotlib>=1.3.1' > requirements.txt
echo 'ipython>=3.0.0' > requirements.txt
echo 'h5py>=2.2.0' > requirements.txt
echo 'leveldb>=0.191' > requirements.txt
echo 'networkx>=1.8.1' > requirements.txt
echo 'nose>=1.3.0' > requirements.txt
echo 'pandas>=0.12.0' > requirements.txt
echo 'python-dateutil>=1.4,<2' > requirements.txt
echo 'protobuf>=2.5.0' > requirements.txt
echo 'python-gflags>=2.0' > requirements.txt
echo 'pyyaml>=3.10' > requirements.txt
echo 'Pillow>=2.3.0' > requirements.txt
echo 'six>=1.1.0' > requirements.txt

for req in $(cat requirements.txt);
do sudo -H pip install $req --upgrade;
done