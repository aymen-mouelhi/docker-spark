# Install wget
apt-get update
apt-get -f install
apt-get install -y wget

# Create folder lastfm
cd /datasets && mkdir lastfm

# Download data
wget http://www.iro.umontreal.ca/~lisa/datasets/profiledata_06-May-2005.tar.gz && tar xvzf profiledata_06-May-2005.tar.gz && rm profiledata_06-May-2005.tar.gz
