
SRC_PATH=$1
FLODER_NAME=$2
mv $1 references
cd references/{FLODER_NAME}
GIT_REPO=`cat .git/config | grep url`
cd ../../
echo "  - (${GIT_REPO})" >> resources.yaml
