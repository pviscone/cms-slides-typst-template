git lfs install
git lfs track "*.pdf"
git lfs track "*.svg"
git lfs track "*.png"
git lfs track "*.jpg"
git lfs track "*.jpeg"
echo "template/assets/* !filter !diff !merge" >> .gitattributes
git add .gitattributes
