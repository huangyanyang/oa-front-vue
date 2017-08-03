<template>
  <div class="box box-default" data-widget="box-widget">
    <div class="box-header">
      <h3 class="box-title">{{title}}</h3>
      <div class="box-tools">
        <!-- This will cause the box to be removed when clicked -->
        <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="删除"><i class="fa fa-times"></i></button>
        <!-- This will cause the box to collapse when clicked -->
        <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="展开/关闭"><i class="fa fa-minus"></i></button>
      </div>
    </div>
    <div class="box-body" :style="'height:' + height + 'px'">
      <iframe :src="url" frameborder='0' style="width: 100%;height: 100%;"></iframe>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'BoxFrame',
    props: ['title', 'url', 'height'],
    data () {
      return {

      }
    }
  }
</script>

<style scoped>

</style>
