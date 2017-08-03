<template>
  <!-- Main content -->
  <section class="content">
    <!-- Info boxes -->
    <div class="row">
      <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <h4><i class="icon fa fa-check"></i> CoPilot is open source!</h4>
        Click on icon to check it out on github. <a href="https://github.com/misterGF/CoPilot" target="_blank"><i class="fa fa-github fa-2x"></i></a>
      </div>
    </div>
    <div class="row" v-for="row in rows">
      <div v-for="col in row.columns" :class="row.classes">
        <info-box v-if="col.widget === 'info-box'" :name="fromDashboard(col.id, 'name')" :value="fromDashboard(col.id, 'value')" :url="fromDashboard(col.id, 'url')" :bgColor="fromDashboard(col.id, 'bgColor')" :icon="fromDashboard(col.id, 'icon')"></info-box>
        <info-box-progress v-else-if="col.widget === 'info-box-progress'" :name="fromDashboard(col.id, 'name')" :value="fromDashboard(col.id, 'value')" :url="fromDashboard(col.id, 'url')" :bgColor="fromDashboard(col.id, 'bgColor')" :icon="fromDashboard(col.id, 'icon')" :progress="fromDashboard(col.id, 'progress')" :description="fromDashboard(col.id, 'description')"></info-box-progress>
        <box-frame v-else-if="col.widget === 'box-frame'" :title="fromDashboard(col.id, 'title')" :url="fromDashboard(col.id, 'url')" :height="fromDashboard(col.id, 'height')"></box-frame>
      </div>


      <!-- /.col -->
    </div>
    <!-- /.row -->

    <div class="row">
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="box box-default" data-widget="box-widget">
          <div class="box-header">
            <h3 class="box-title">Box Tools</h3>
            <div class="box-tools">
              <!-- This will cause the box to be removed when clicked -->
              <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
              <!-- This will cause the box to collapse when clicked -->
              <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
            </div>
          </div>
          <div class="box-body">
            <Table stripe :columns="columns1" :data="data1"></Table>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="box box-default" data-widget="box-widget">
          <div class="box-header">
            <h3 class="box-title">Box Tools</h3>
            <div class="box-tools">
              <!-- This will cause the box to be removed when clicked -->
              <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
              <!-- This will cause the box to collapse when clicked -->
              <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
            </div>
          </div>
          <div class="box-body">
            HELL
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-xs-12">
        <div class="box">
          <div class="box-header with-border">
            <h3 class="box-title"></h3>
            <div class="box-body">
              <div class="col-sm-6 col-xs-12">
                <p class="text-center">
                  <strong>Web Traffic Overview</strong>
                </p>
                <canvas id="trafficBar" ></canvas>
              </div>
              <hr class="visible-xs-block">
              <div class="col-sm-6 col-xs-12">
                <p class="text-center">
                  <strong>Language Overview</strong>
                </p>
                <canvas id="languagePie"></canvas>
              </div>
            </div>
          </div>
          <small class="space"><b>Pro Tip</b> Don"t forget to star us on github!</small>
        </div>
      </div>
    </div>
    <!-- /.row -->

    <!-- Main row -->
    <div class="row">
      <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-yellow">
          <span class="info-box-icon"><i class="ion ion-ios-pricetag-outline"></i></span>

          <div class="info-box-content">
            <span class="info-box-text">Inventory</span>
            <span class="info-box-number">5,200</span>

            <div class="progress">
              <div class="progress-bar" style="width: 50%"></div>
            </div>
            <span class="progress-description">
                  50% Increase
                </span>
          </div>
          <!-- /.info-box-content -->
        </div>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <info-box-progress @onLoaded="onLoaded" :icon="'ion-ios-heart-outline'" :name="'增长'" :value="'23,2323'" :bgColor="'bg-green'" :progress="70" :description="'70%增长'" :url="'http://baidu.com'"></info-box-progress>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <info-box-progress :name="'增长'" :value="'23,2323'" :bgColor="'bg-red'" :progress="70" :description="'70%增长'" :url="'http://baidu.com'"></info-box-progress>
      </div>
      <div class="col-md-3 col-sm-6 col-xs-12">
        <info-box-progress :icon="'ion-ios-heart-outline'" :name="'增长'" :value="'23,2323'" :bgColor="'bg-blue'" :progress="20" :description="'20%增长'" :url="'http://baidu.com'"></info-box-progress>
      </div>
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</template>

<script>
  import Chart from 'chart.js'
  import InfoBox from '@/widgets/InfoBox'
  import InfoBoxProgress from '@/widgets/InfoBoxProgress'
  import BoxFrame from '@/widgets/BoxFrame'

  export default {
    name: 'Dashboard',
    components: {
      InfoBox,
      InfoBoxProgress,
      BoxFrame
    },
    methods: {
      rowClassName (row, index) {
//        if (index === 1) {
//          return 'demo-table-info-row'
//        } else if (index === 3) {
//          return 'demo-table-error-row'
//        }
        return ''
      },
      loadDataOne (one, tow) {
        console.log('loadDataOne:' + one + ':' + tow)
      },
      onLoaded (p) {
        console.log('onLoaded:' + p)
      },
      fromDashboard (id, field) {
        if (this.dashboard[id]) {
          return this.dashboard[id][field]
        } else {
          return ''
        }
      }
    },
    data () {
      return {
        rows: [
          { columns: [
              {name: 'dd', id: 1, widget: 'info-box'},
              {name: 'dd', id: 2, widget: 'info-box'},
              {name: 'dd', id: 3, widget: 'info-box'},
              {name: 'dd', id: 4, widget: 'info-box'}],
            classes: 'col-md-3 col-sm-6 col-xs-12'
          },
          { columns: [
            {name: 'dd', id: 6, widget: 'info-box-progress'},
            {name: 'dd', id: 7, widget: 'info-box-progress'},
            {name: 'dd', id: 8, widget: 'info-box-progress'},
            {name: 'dd', id: 9, widget: 'info-box-progress'}],
            classes: 'col-md-3 col-sm-6 col-xs-12'
          },
          { columns: [
            {name: 'dd', id: 10, widget: 'box-frame'}],
            classes: 'col-xs-12'
          },
          { columns: [
            {name: 'dd', id: 11, widget: 'box-frame'},
            {name: 'dd', id: 12, widget: 'box-frame'}],
            classes: 'col-sm-6 col-xs-12'
          }
        ],
        dashboard: {
          1: {name: 'hello', value: '90%', url: 'http://www.baidu.com', bgColor: 'bg-blue', icon: 'ion-ios-gear-outline'},
          2: {name: '销售', value: '23,2322', url: 'http://www.baidu.com', bgColor: 'bg-red', icon: 'ion-ios-people-outline'},
          3: {name: '毛利', value: '80%', url: 'http://www.baidu.com', bgColor: 'bg-green', icon: 'ion-ios-cart-outline'},
          4: {name: '毛利', value: '80%', url: 'http://www.baidu.com', bgColor: 'bg-green', icon: 'ion-ios-cart-outline'},
          6: {name: '毛利', value: '80%', url: 'http://www.baidu.com', bgColor: 'bg-green', icon: 'ion-ios-cart-outline', progress: '10%', description: '测试'},
          10: {title: '百度', url: 'http://www.baidu.com', height: 600},
          11: {title: '温氏', url: 'http://www.wens.com.cn', height: 600},
          12: {title: '鲜品', url: 'http://xpc.wens.com.cn', height: 600},
          13: {title: 'Hao123', url: 'http://www.hao123.com'}
        },
        generateRandomNumbers (numbers, max, min) {
          var a = []
          for (var i = 0; i < numbers; i++) {
            a.push(Math.floor(Math.random() * (max - min + 1)) + max)
          }
          return a
        },
        columns1: [
          {
            title: '姓名',
            key: 'name'
          },
          {
            title: '年龄',
            key: 'age'
          },
          {
            title: '地址',
            key: 'address'
          }
        ],
        columns9: [
          {
            title: '姓名',
            key: 'name'
          },
          {
            title: '年龄',
            key: 'age',
            className: 'demo-table-info-column'
          },
          {
            title: '地址',
            key: 'address'
          }
        ],
        data1: [
          {
            name: '王小明',
            age: 18,
            address: '北京市朝阳区芍药居'
          },
          {
            name: '张小刚',
            age: 25,
            address: '北京市海淀区西二旗'
          },
          {
            name: '李小红',
            age: 30,
            address: '上海市浦东新区世纪大道'
          },
          {
            name: '周小伟',
            age: 26,
            address: '深圳市南山区深南大道'
          }
        ],
        data8: [
          {
            name: '王小明',
            age: 18,
            address: '北京市朝阳区芍药居'
          },
          {
            name: '张小刚',
            age: 25,
            address: '北京市海淀区西二旗',
            cellClassName: {
              age: 'demo-table-info-cell-age',
              address: 'demo-table-info-cell-address'
            }
          },
          {
            name: '李小红',
            age: 30,
            address: '上海市浦东新区世纪大道'
          },
          {
            name: '周小伟',
            age: 26,
            address: '深圳市南山区深南大道',
            cellClassName: {
              name: 'demo-table-info-cell-name'
            }
          }
        ]
      }
    },
    computed: {
      coPilotNumbers () {
        return this.generateRandomNumbers(12, 1000000, 10000)
      },
      personalNumbers () {
        return this.generateRandomNumbers(12, 1000000, 10000)
      },
      isMobile () {
        return (window.innerWidth <= 800 && window.innerHeight <= 600)
      }
    },
    mounted () {
      this.$nextTick(() => {
        var ctx = document.getElementById('trafficBar').getContext('2d')
        var config = {
          type: 'line',
          data: {
            labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
            datasets: [{
              label: 'CoPilot',
              fill: false,
              borderColor: '#284184',
              pointBackgroundColor: '#284184',
              backgroundColor: 'rgba(0, 0, 0, 0)',
              data: this.coPilotNumbers
            }, {
              label: 'Personal Site',
              borderColor: '#4BC0C0',
              pointBackgroundColor: '#4BC0C0',
              backgroundColor: 'rgba(0, 0, 0, 0)',
              data: this.personalNumbers
            }]
          },
          options: {
            responsive: true,
            maintainAspectRatio: !this.isMobile,
            legend: {
              position: 'bottom',
              display: true
            },
            tooltips: {
              mode: 'label',
              xPadding: 10,
              yPadding: 10,
              bodySpacing: 10
            }
          }
        }

        new Chart(ctx, config) // eslint-disable-line no-new

        var pieChartCanvas = document.getElementById('languagePie').getContext('2d')
        var pieConfig = {
          type: 'pie',
          data: {
            labels: ['HTML', 'JavaScript', 'CSS'],
            datasets: [{
              data: [56.6, 37.7, 4.1],
              backgroundColor: ['#00a65a', '#f39c12', '#00c0ef'],
              hoverBackgroundColor: ['#00a65a', '#f39c12', '#00c0ef']
            }]
          },
          options: {
            responsive: true,
            maintainAspectRatio: !this.isMobile,
            legend: {
              position: 'bottom',
              display: true
            }
          }
        }

        new Chart(pieChartCanvas, pieConfig) // eslint-disable-line no-new
      })
    }
  }
</script>
<style>
  .fullCanvas {
    width: 100%;
  }
  .ivu-table .demo-table-info-row td{
    background-color: #2db7f5;
    color: #fff;
  }
  .ivu-table .demo-table-error-row td{
    background-color: #ff6600;
    color: #fff;
  }
  .ivu-table td.demo-table-info-column{
    background-color: #2db7f5;
    color: #fff;
  }
  .ivu-table .demo-table-info-cell-name {
    background-color: #2db7f5;
    color: #fff;
  }
  .ivu-table .demo-table-info-cell-age {
    background-color: #ff6600;
    color: #fff;
  }
  .ivu-table .demo-table-info-cell-address {
    background-color: #187;
    color: #fff;
  }
</style>
