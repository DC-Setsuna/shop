<template>
  <div>
    <div class="search-bar">
      <el-input placeholder="输入关键字查询" v-model="keyword">
        <el-select v-model="select" slot="prepend" placeholder="所有类别">
          <el-option v-for="(value, key) in class_list" :label="key" :value="key"></el-option>
        </el-select>
        <el-button slot="append" icon="search" @click="search"></el-button>
      </el-input>
    </div>
    <div class="show-bar">
      <el-carousel :interval="3000" height="300px">
        <el-carousel-item v-for="item in showbar_list" :key="item">
          <img :src="item" width="1152" height="300">
        </el-carousel-item>
      </el-carousel>
    </div>
    <div class="homepage-con">
      <div class="menu-left">
        <el-menu default-active="1" mode="horizontal" background-color="#545c64" text-color="#fff" active-text-color="#ffd04b">
          <el-menu-item :index="value" v-for="(value, key) in class_list" @click="getItem(key)">
            {{ key }}
          </el-menu-item>
        </el-menu>
      </div>
      <div class="con-right">
        <Itembar :datas="item" v-for="item in view_data" />
      </div>
    </div>
  </div>
</template>
<script>
import Itembar from "./Itembar"

export default {
  data() {
    return {
      keyword: '',
      select: '',
      class_list: {
        '所有商品': 'all',
        '水果': '水果',
        '蔬菜': '蔬菜',
        '海鲜': '海鲜',
        '冷冻': '冷冻'
      },
      showbar_list: [
        "/static/1.pic_hd",
        '/static/2.pic_hd',
        '/static/3.pic_hd',
        '/static/4.pic_hd',
        '/static/5.pic_hd',
        '/static/6.pic_hd',
        '/static/7.pic_hd'
      ],
      view_data: {}
    }
  },
  components: { Itembar },
  methods: {
    getItem: function(key) {
      var _key = key
      if (_key === '所有商品') {
        _key = 'all'
      }
      this.axios.get(this.$store.state.API + 'home.php', {
        params: {
          cls: _key
        }
      }).then((response) => {
        console.log(response.data['data'])
        if (response.data['code'] == 200) {
          this.view_data = response.data['data']
        }

      })
    },
    search: function() {
      var datas = {
        keyword: this.keyword,
        select: this.select
      }
      this.$router.push({ name: 'Highsearch', params: datas})
    }
  },
  created: function() {
    this.getItem('all')
  }
}

</script>
<style>
.search-bar {
  margin: 20px auto;
  width: 600px;
}

.el-select {
  width: 110px;
}

.el-input-group {
  width: 600px;
}

.el-carousel__item h3 {
  color: #475669;
  font-size: 14px;
  opacity: 0.75;
  line-height: 200px;
  margin: 0;
}

.el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n+1) {
  background-color: #d3dce6;
}

.homepage-con {
  border: 1px solid #eee;
  margin-top: 20px;
  /*background-color: #eef1f6;*/
}

.menu-left {
  /*position: absolute;
  width: 200px;*/
}

.con-right {
  /*margin-left: 200px;*/
  padding-top: 40px;
  padding-bottom: 40px;
  width: 1137px;
  background-color: #fff
}

</style>
