export DEBIAN_FRONTEND=noninteractive
echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections 
pip install --upgrade pip 
apt-get update 
apt-get install git-lfs 
git-lfs clone https://huggingface.co/spaces/susunghong/Self-Attention-Guidance 
cd Self-Attention-Guidance 
pip install -r requirements.txt 
python app.py --share --autolaunch --listen --port 7860