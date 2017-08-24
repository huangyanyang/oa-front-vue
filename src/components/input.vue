<style>
  .nameInput {
    margin-top: 15px;
    text-align: center;
    width: 100px;
    height: 30px;
    font-size: 20px;
  }
</style>
<template>
  <div>
    <input class="nameInput" v-model="categoryName" v-focus>
  </div>
</template>

<script type="text/ecmascript-6">
  export default {
    name: 'focusInput',
    props: ['value'],
    data () {
      return {
        categoryName: this.value
      }
    },
    watch: {
      value (v) {
        this.categoryName = v
      },
      categoryName (v) {
        this.$emit('input', v)
      }
    },
    directives: {
      focus: {
        inserted: function (el) {
          console.log('666')
          el.focus()
        }
      }
    }
  }

</script>


