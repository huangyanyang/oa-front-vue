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
        imgSrc: '/static/img/logo/lwld.jpg'
      }
    },
    props: ['name', 'icon', 'msgCount', 'url'],
    components: {
      iview
    },
    methods: {
      dbclick (e) {
        console.log(e)
        location.href = this.url
      }
    }
  }
</script>
