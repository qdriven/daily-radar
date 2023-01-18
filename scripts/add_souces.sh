
GIT_REPO=$1


echo "  - ${GIT_REPO} " >> resources.yaml

cd references
echo `pwd`
git clone ${GIT_REPO} --depth=1
