backend_path='/Users/hhl/Desktop/work/wens-oa-front/wens_app/ws_oa_front'
webpack --config=build/webpack.odoo.dev.conf.js
echo 'finished build, copy files'
cp -rf ./static/* $backend_path'/static/'
cp ./dist/index.html $backend_path'/templates'
cp ./dist/** $backend_path'/static/'
echo 'finished copy files'
