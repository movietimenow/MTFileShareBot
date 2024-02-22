if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/movietimenow/MTFileShareBot /MTFileShareBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MTFileShareBot
fi
cd /MTFileShareBot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
