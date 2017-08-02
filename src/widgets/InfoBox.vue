<template>
  <div class="info-box">
    <a :href="url" target="_blank">
      <span :class="['info-box-icon', bgColor]">
        <i :class="['fa', icon]"></i>
      </span>
      <div class="info-box-content">
        <span class="info-box-text">{{name}}</span>
        <span class="info-box-number">{{value}}</span>
      </div>
    </a>
  </div>
</template>

<script>
  export default {
    name: 'InfoBox',
    props: ['name', 'value', 'url', 'bgColor', 'icon'],
    data () {
      return {

      }
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
