pushd src
  bash build.sh
  zip -r dist.zip dist
  rm -rf dist
popd

rm chall.zip
mv src/dist.zip chall.zip
