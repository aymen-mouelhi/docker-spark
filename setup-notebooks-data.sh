# Install wget
apt-get update
apt-get -f install
apt-get install -y wget

# Create folder lastfm
cd /datasets && mkdir lastfm

# Download User Artist Data
wget http://www.iro.umontreal.ca/~lisa/datasets/profiledata_06-May-2005.tar.gz && tar xvzf profiledata_06-May-2005.tar.gz && rm profiledata_06-May-2005.tar.gz
mv profiledata_06-May-2005/* /datasets/lastfm
rm -r profiledata_06-May-2005
rm lastfm/README.txt
