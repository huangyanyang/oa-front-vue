<style>
  .categoryDiv {
    height: 100px;
    width: 100px;
    background: #f8f8f9;
    margin: 0 auto;
    padding: 8px;
    overflow: scroll;
  }

  body {
    padding: 50px;
  }

  .appSmallImg {
    width: 25px;
    height: 25px;
    margin: 2px;
  }

  .name {
    display: block;
    margin-top: 15px;
    font-size: 20px;
  }
</style>
<template>
  <div>
    <badge :count="realMsgCount">
      <div class="categoryDiv" @click="showCategory = true">
        <row>
          <transition-group @enter="enter" @beforeEnter="beforeEnter">
            <Col span="8" v-for="app in appsInCategory" :key="app.id" v-model="dataApps">
            <img :src="app.icon" class="appSmallImg"/>
            </Col>
          </transition-group>
        </row>
      </div>
      <Modal v-model="showCategory" width="90%" :closable="false">
        <drag2 class="modal" :list="appsInCategory" @listMove="listMove" @listRemove="listRemove"></drag2>
        <div slot="footer">
        </div>
      </Modal>
    </badge>
    <br>
    <Tooltip content="点击更改文件夹名字" v-if="isNotChangeName">
      <span class="name" @click="changeName">{{dataName}}</span>
    </Tooltip>
    <focusInput v-else v-model="dataName" @mouseleave.native="mouseleave"></focusInput>
  </div>
</template>

<script type="text/ecmascript-6">
  import iView from 'iview'
  import Drag from './drag.vue'
  import Drag2 from './drag2.vue'
  import focusInput from './input.vue'
  import Velocity from 'velocity-animate'

  export default {
    name: 'category',
    components: {
      Drag2,
      Drag,
      iView,
      focusInput
    },
    data () {
      return {
        dataApps: this.apps,
        dataName: this.name,
        dataMsgCount: this.msgCount,
        dataId: this.id,
        showCategory: false,
        appsInCategory: this.apps,
        isNotChangeName: true
      }
    },
    props: ['apps', 'name', 'msgCount', 'id'],
    methods: {
      mouseleave () {
        console.log('this.dataName', this.dataName)
        if (this.dataName !== '') {
          this.$emit('categoryNameChange', {id: this.dataId, name: this.dataName})
          this.isNotChangeName = true
        } else {
          this.$Message.error('文件名不能为空')
          this.isNotChangeName = false
        }
      },
      changeName (e) {
        this.isNotChangeName = false
      },
      beforeEnter (el, done) {
        el.style.opacity = 0
      },
      enter (el, done) {
        Velocity(el, {opacity: 1}, {duration: 1500, delay: 1000})
      },
      listMove (list) {
        this.appsInCategory = list
      },
      listRemove (appOut) {
        let that = this
        setTimeout(function () {
          that.showCategory = false
        }, 1300)
        this.$emit('appInCategoryRemove', appOut)
      }
    },
    computed: {
      realMsgCount () {
        let realMsgCount = 0
        for (let i = 0; i < this.apps.length; i++) {
          realMsgCount += this.apps[i].msgCount
        }
        return realMsgCount
      },
      inputId () {
        return 'input' + this.dataId
      }
    }
  }
</script>


