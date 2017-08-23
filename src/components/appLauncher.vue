<style>
  .app-launcher {
    text-align: center;
  }

  .name {
    display: block;
    margin-top: 5px;
  }

  .logo {
    width: 100px;
    height: 100px;
    margin: 0 auto;
  }
</style>
<template>
  <div class="app-launcher" @click="dbclick">
    <badge :count="msgCount">
      <img :src="icon" class="logo"/>
      <br>
      <span class="name">{{name}}</span>
    </badge>
  </div>
</template>

<script type="text/ecmascript-6">
  import iview from 'iview'
  //  import img from '../img/logo/yuegao.png'

  export default {
    name: 'appLauncher',
    data () {
      return {
//        imgSrc: 'http://img.taopic.com/uploads/allimg/140313/235026-1403130Z43831.jpg'
        imgSrc: '/static/img/logo/lwld.jpg',
        isRediract: false
      }
    },
    props: ['name', 'icon', 'msgCount', 'url'],
    components: {
      iview
    },
    methods: {
      dbclick (e) {
        let willConfirm = true
        if (willConfirm) {
          this.$Modal.confirm({
            content: '你确定要跳转到' + this.url + '吗',
            okText: '好的',
            cancelText: '我不小心点到了',
            onOk: () => {
              location.href = this.url
//              this.$Modal.confirm({
//                content: '那你希望下次点击app的时候还会出现这个提示吗',
//                okText: '要滴',
//                cancelText: '不再提示',
//                onOk: () => {
//                  location.href = this.url
//                },
//                onCancel: () => {
//                  willConfirm = false
//                }
//              })
            },
            onCancel: () => {
              return
            }
          })
        } else {
          return
        }
      }
    }
  }
</script>
