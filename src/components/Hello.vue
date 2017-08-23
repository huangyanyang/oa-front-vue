<style>
  .small-col {
    height: 10px;
    width: 10px;
  }

  .modal {
    padding: 10%;
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
            name: '来文来电',
            id: 0,
            icon: '/static/img/logo/lwld.jpg',
            msgCount: 99,
            isCategory: false,
            apps: [],
            url: 'http://weixin.qq.com/'
          },
          {
            name: '任务管理',
            id: 1,
            icon: '/static/img/logo/任务管理.jpg',
            msgCount: 10,
            isCategory: false,
            apps: [],
            url: 'http://www.qq.com'
          },
          {
            name: '约稿系统',
            id: 2,
            icon: '/static/img/logo/yuegaoxitong.jpg',
            msgCount: 9,
            isCategory: false,
            apps: [],
            url: 'http://www.taobao.com'
          },
          {
            name: '项目考核',
            id: 3,
            icon: '/static/img/logo/项目考核.jpg',
            msgCount: 8,
            isCategory: false,
            apps: [],
            url: 'http://https://www.immomo.com/'
          },
          {
            name: '温氏互助',
            id: 4,
            icon: '/static/img/logo/wenshihuzhu.jpg',
            msgCount: 1,
            isCategory: false,
            apps: [],
            url: 'http://www.58.com/'
          },
          {
            name: '设备运维',
            id: 9,
            icon: '/static/img/logo/shebeiyunwei.svg',
            msgCount: 9,
            isCategory: false,
            apps: [],
            url: 'http://www.jd.com'
          },
          {
            name: '投资理财',
            id: 10,
            icon: '/static/img/logo/投资理财.jpg',
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
                icon: '/static/img/logo/lwld.jpg',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.ctrip.com/'
              },
              {
                name: '去哪儿',
                id: 13,
                icon: '/static/img/logo/lwld.jpg',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'https://www.qunar.com/'
              },
              {
                name: '支付宝',
                id: 14,
                icon: '/static/img/logo/lwld.jpg',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.alipay.com'
              },
              {
                name: '天猫',
                id: 19,
                icon: '/static/img/logo/lwld.jpg',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.baidu.com'
              }
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
                icon: '/static/img/logo/lwld.jpg',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.baidu.com'
              },
              {
                name: '去哪儿',
                id: 6,
                icon: '/static/img/logo/lwld.jpg',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.baidu.com'
              },
              {
                name: '支付宝',
                id: 7,
                icon: '/static/img/logo/lwld.jpg',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.baidu.com'
              },
              {
                name: '天猫',
                id: 8,
                icon: '/static/img/logo/lwld.jpg',
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
                icon: '/static/img/logo/lwld.jpg',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.baidu.com'
              },
              {
                name: '去哪儿',
                id: 16,
                icon: '/static/img/logo/lwld.jpg',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: 'http://www.baidu.com'
              },
              {
                name: '支付宝',
                id: 17,
                icon: '/static/img/logo/lwld.jpg',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: '/static/img/logo/lwld.jpg'
              },
              {
                name: '天猫',
                id: 18,
                icon: '/static/img/logo/lwld.jpg',
                msgCount: 9,
                isCategory: false,
                apps: [],
                url: '/static/img/logo/lwld.jpg'
              }
            ]
          },
          {
            name: '工程管理',
            id: 19,
            icon: '/static/img/logo/工程管理.jpg',
            msgCount: 99,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {name: '温氏生鲜', id: 20, icon: '/static/img/logo/wenshishengxian.jpg', msgCount: 10, isCategory: false, apps: [], url: 'http://www.baidu.com'},
          {
            name: '温氏生鲜',
            id: 21,
            icon: '/static/img/logo/wenshishengxian.jpg',
            msgCount: 9,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '智能门禁',
            id: 22,
            icon: '/static/img/logo/zhinengmenjin.jpg',
            msgCount: 8,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '公众号管理',
            id: 23,
            icon: '/static/img/logo/公众号管理.jpg',
            msgCount: 1,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '码头散粮',
            id: 24,
            icon: '/static/img/logo/码头散粮.jpg',
            msgCount: 9,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '物流运输',
            id: 25,
            icon: '/static/img/logo/物流运输.jpg',
            msgCount: 11,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '合同管理',
            id: 26,
            icon: '/static/img/logo/合同管理.jpg',
            msgCount: 99,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '展馆预订',
            id: 27,
            icon: '/static/img/logo/展馆预订.jpg',
            msgCount: 10,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '内部商城',
            id: 28,
            icon: '/static/img/logo/内部商城.jpg',
            msgCount: 9,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '培训管理',
            id: 29,
            icon: '/static/img/logo/培训管理.jpg',
            msgCount: 8,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '顺风车',
            id: 30,
            icon: '/static/img/logo/顺风车.jpg',
            msgCount: 1,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '在线客服',
            id: 31,
            icon: '/static/img/logo/在线客服.jpg',
            msgCount: 9,
            isCategory: false,
            apps: [],
            url: 'http://www.baidu.com'
          },
          {
            name: '唯品会',
            id: 32,
            icon: '/static/img/logo/lwld.jpg',
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
