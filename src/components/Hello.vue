<style>
  .small-col {
    height: 10px;
    width: 10px;
  }

  .modal {
    padding: 80px;
  }

</style>
<template>
  <div>
    <drag :appList="appList"></drag>
  </div>
</template>
<script>
  import Drag from './drag.vue'

  export default {
    components: {
      Drag
    },
    data () {
      return {
        appList: [
          {
            name: '微信',
            id: 0,
            icon: 'ios-bell-outline',
            msgCount: 99,
            isCategory: false,
            apps: [],
            url: 'http://weixin.qq.com/'
          },
          {name: 'QQ', id: 1, icon: 'xbox', msgCount: 10, isCategory: false, apps: [], url: 'http://www.qq.com'},
          {name: '淘宝', id: 2, icon: 'headphone', msgCount: 9, isCategory: false, apps: [], url: 'http://www.taobao.com'},
          {
            name: '陌陌',
            id: 3,
            icon: 'social-chrome',
            msgCount: 8,
            isCategory: false,
            apps: [],
            url: 'http://https://www.immomo.com/'
          },
          {
            name: '58同城',
            id: 4,
            icon: 'social-octocat',
            msgCount: 1,
            isCategory: false,
            apps: [],
            url: 'http://www.58.com/'
          },
          {
            name: '京东',
            id: 9,
            icon: 'ios-flower',
            msgCount: 9,
            isCategory: false,
            apps: [],
            url: 'http://www.jd.com'
          },
          {
            name: '唯品会',
            id: 10,
            icon: 'ios-flame',
            msgCount: 11,
            isCategory: false,
            apps: [],
            url: 'http://www.vip.com'
          },
          {
            name: '社交网络',
            id: 11,
            icon: '',
            msgCount: 999,
            isCategory: true,
            apps: [
              {
                name: '携程',
                id: 12,
                icon: 'social-github',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.ctrip.com/'
              },
              {
                name: '去哪儿',
                id: 13,
                icon: 'social-twitter',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'https://www.qunar.com/'
              },
              {
                name: '支付宝',
                id: 14,
                icon: 'social-linkedin-outline',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.alipay.com'
              },
              {name: '天猫', id: 19, icon: 'disc', msgCount: 9, isCategory: false, apps: [], url: 'http://www.baidu.com'}
            ]
          },
          {
            name: '购物',
            id: 12,
            icon: '',
            msgCount: 999,
            isCategory: true,
            apps: [
              {
                name: '携程',
                id: 5,
                icon: 'android-globe',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.baidu.com'
              },
              {
                name: '去哪儿',
                id: 6,
                icon: 'android-subway',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.baidu.com'
              },
              {
                name: '支付宝',
                id: 7,
                icon: 'android-bicycle',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.baidu.com'
              },
              {
                name: '天猫',
                id: 8,
                icon: 'android-upload',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'https://www.tmall.com/'
              }
            ]
          },
          {
            name: '美颜',
            id: 14,
            icon: '',
            msgCount: 999,
            isCategory: true,
            apps: [
              {
                name: '携程',
                id: 15,
                icon: 'android-camera',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.baidu.com'
              },
              {
                name: '去哪儿',
                id: 16,
                icon: 'android-image',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.baidu.com'
              },
              {
                name: '支付宝',
                id: 17,
                icon: 'android-print',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.baidu.com'
              },
              {
                name: '天猫',
                id: 18,
                icon: 'social-instagram',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.baidu.com'
              }
            ]
          },
          {
            name: '微信',
            id: 19,
            icon: 'ios-bell-outline',
            msgCount: 99,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {name: 'QQ', id: 20, icon: 'xbox', msgCount: 10, isCategory: false, apps: [], url: 'http://www.baidu.com'},
          {
            name: '淘宝',
            id: 21,
            icon: 'headphone',
            msgCount: 9,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '陌陌',
            id: 22,
            icon: 'social-chrome',
            msgCount: 8,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '58同城',
            id: 23,
            icon: 'social-octocat',
            msgCount: 1,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '京东',
            id: 24,
            icon: 'ios-flower',
            msgCount: 9,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '唯品会',
            id: 25,
            icon: 'ios-flame',
            msgCount: 11,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '微信',
            id: 26,
            icon: 'ios-bell-outline',
            msgCount: 99,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {name: 'QQ', id: 27, icon: 'xbox', msgCount: 10, isCategory: false, apps: [], url: 'http://www.baidu.com'},
          {
            name: '淘宝',
            id: 28,
            icon: 'headphone',
            msgCount: 9,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '陌陌',
            id: 29,
            icon: 'social-chrome',
            msgCount: 8,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '58同城',
            id: 30,
            icon: 'social-octocat',
            msgCount: 1,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '京东',
            id: 31,
            icon: 'ios-flower',
            msgCount: 9,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '唯品会',
            id: 32,
            icon: 'ios-flame',
            msgCount: 11,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          }
        ],
        isDragging: false,
        delayedDragging: false
      }
    }
  }

</script>
