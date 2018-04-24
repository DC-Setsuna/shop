<template>
  <div>
    <div class="search-bar" @keyup.enter="search()">
      <el-input placeholder="输入关键字查询" v-model="keyword">
        <el-select v-model="select" slot="prepend" placeholder="所有类别">
          <el-option v-for="(value, key) in class_list" :label="key" :value="value"></el-option>
        </el-select>
        <el-button slot="append" icon="search" @click="search()"></el-button>
      </el-input>
    </div>
    <div v-for="data in datas" style="margin:15px 0">
    	<router-link :to="'/prodetail/' + data.id" style="text-decoration=none; color:#333">
      <el-card>
        <div style="padding:0 10px; line-height: 100px;height:100px;">
        	<nobr>
          <div style="float:left;width:240px;text-align:left;font-size:15px;font-weight:500;" v-html="data.book_title">
          </div></nobr>
          <div style="float:left;height:100px;width:300px;text-align:center;">
            <img :src="data.img_url" height="100">
          </div>
          <div style="float:left;width:150px;text-align:center;"><nobr>
            商品名：<span style="font-weight:500;" v-html="data.pro_name"></span></nobr>
          </div>
          <div style="float:left;width:150px;text-align:center;">
            售价：<span style="font-weight:500">{{ data.pro_price }}</span>
          </div>
          <div style="float:left;width:150px;text-align:center;">
            类别：<span style="font-weight:500">{{ data.pro_class }}</span>
          </div>
        </div>
      </el-card></router-link>
    </div>
  </div>
</template>
<script>
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
      datas: {}
    }
  },
  methods: {
    search() {
      this.axios.get(this.$store.state.API + 'search.php', {
        params: {
          cls: this.select,
          keyword: this.keyword
        }
      }).then((response) => {
        if (response.data.code === 200) {
          this.datas = response.data.data
        } else {
        	this.datas = {}
        }
      })
    }
  },
  watch: {
  	select: function() {
  		this.search()
  	}
  },
  created: function() {
    // console.log(this.$route.params)
    this.cls = this.$route.params.select
    this.keyword = this.$route.params.keyword
    this.search()
  }
}

</script>
<style>
.search-bar {
  margin: 20px auto;
  width: 600px;
}

.el-card:hover {
	background-color: #eee;
}
</style>
