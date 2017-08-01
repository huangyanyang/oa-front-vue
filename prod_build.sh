#!/usr/bin/env bash
rm -rf ./dist/*
backend_path='/Users/hhl/Desktop/work/wens-oa-front/wens_app/ws_oa_front'
npm run build
echo 'finished build, copy files'
cp -rf ./static/* $backend_path'/static/'
cp ./dist/index.html $backend_path'/templates'
cp -rf ./dist/static/ $backend_path'/static/'
echo 'finished copy files'
