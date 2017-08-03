<template>
  <div :class="['info-box', bgColor]">
      <span class="info-box-icon">
        <i :class="['ion', icon]"></i>
      </span>
      <div class="info-box-content">
        <a :href="url" target="_blank" style="color: #ffffff;">
          <span class="info-box-text">{{name}}</span>
          <span class="info-box-number">{{value}}</span>

          <div class="progress">
            <div class="progress-bar" :style="'width:' + progress + '%'"></div>
          </div>
          <span class="progress-description">
            {{description}}
          </span>
        </a>
      </div>
  </div>
</template>
<script>
  export default {
    name: 'InfoBoxProgress',
    props: ['name', 'value', 'url', 'bgColor', 'icon', 'progress', 'description'],
    mounted () {
      console.log('emit.......')
      this.$emit('onLoaded', 111)
    }
  }
</script>
<style scoped>
  .info-box {
    cursor: pointer;
  }
  .info-box-content {
    text-align: center;
    vertical-align: middle;
    display: inherit;
  }
</style>
