# wens-oa-front-vue

## 运行前配置
编辑dev_build.sh文件，设置backend_path指向本机的ws_oa_front目录。

## 运行步骤

``` bash
# 安装依赖包
npm install

# 启动本地测试
npm run dev

# 发布非压缩版本到odoo的static目录
./dev_build.sh

# 发布压缩版本到odoo的static目录
./prod_build.sh

# 发布压缩版本到dist目录
npm run build

# 编译发布到odoo的static目录，并生产编译报告
npm run build --report

# unit test
npm run unit

# e2e test
npm run e2e

# test all
npm test
```

更多的功能
[guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).
