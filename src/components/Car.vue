<template>
  <div style="padding: 20px 20px;position:relative">
    <h2>我的购物车</h2>
    <el-card class="box-car">
      <div slot="header" class="clearfix">
        <el-checkbox :indeterminate="isIndeterminate" v-model="checkAll" @change="handleCheckAllChange">全选</el-checkbox>
        <el-button type="primary" style="float:right;" @click="payfor">去结算</el-button>
        <span class="price">总金额：
					<span style="color:#B12704;font-size:30px;">¥  {{price.toFixed(2)}}</span>
        </span>
      </div>
      <el-checkbox-group v-model="checkedItem" @change="handleCheckedItemChange">
        <div v-for="item in cardata" style="min-width:1050px;">
          <!-- {{item}} -->
          <div class="car-item">
            <div class="car-item-check">
              <el-checkbox :label="item.pro_detail.pro_name" :key="item.pro_detail.pro_name">
                {{item.pro_detail.pro_name}}
              </el-checkbox>
            </div>
            <div class="car-item-img">
              <img :src="item.pro_detail.img_url" height="120">
            </div>
            <div class="car-item-price">
              <span class="qwe">单价：</span>¥ {{ item.pro_detail.pro_price }}
            </div>
            <div class="car-item-count">
              <span class="qwe">数量：</span>
              <el-input-number v-model="item.count" size="small" :min="1">
              </el-input-number>
            </div>
            <div class="car-item-price">
              <span class="qwe">合计：</span>¥ {{ (item.pro_detail.pro_price*item.count).toFixed(2) }}
            </div>
            <div class="car-item-delete" @click="remove(item)">
              <i class="el-icon-delete"></i>移除商品
            </div>
          </div>
          <el-dialog title="提示" :visible.sync="dialogVisible" size="tiny">
            <span>是否删除该商品</span>
            <span slot="footer" class="dialog-footer">
					    <el-button @click="dialogVisible = false">再想想</el-button>
					    <el-button type="primary" @click="removeItem">确 定</el-button>
					  </span>
          </el-dialog>
          <el-dialog title="订单支付" :visible.sync="payDialogVisible" size="small" custom-class="pay-img">
            <div style="text-align:center;margin-top:10px">
              <span>付款金额：<span style="color: #B12704;font-size:20px;">¥  {{price}}</span></span>
            </div>
            <div style="text-align:center;margin-top:10px">
              <el-button type="success" @click="pay">确认支付</el-button>
            </div>  
          </el-dialog>
        </div>
      </el-checkbox-group>
    </el-card>
  </div>
</template>
<script>
export default {
  data() {
    return {
      checkAll: true,
      isIndeterminate: true,
      cardata: [],
      checkedItem: [],
      itemOptions: [],
      price: 0,
      dialogVisible: false,
      removing: '',
      payDialogVisible: false
    }
  },
  methods: {
    handleCheckAllChange(event) {
      this.checkedItem = event.target.checked ? this.itemOptions : [];
      this.isIndeterminate = false
    },
    handleCheckedItemChange(value) {
      // console.log(typeof this.checkedItem[this.cardata[0].book_detail.book_title])
      // console.log(this.checkedItem[this.cardata[0]])
      //console.log(this.cardata[0].book_detail.book_title)
      // console.log(this.checkedItem[this.cardata[0].book_detail.book_title])
      let checkedCount = value.length
      this.checkAll = checkedCount === this.itemOptions.length
      this.isIndeterminate = checkedCount > 0 && checkedCount < this.itemOptions.length
    },
     countprice() {
      this.price = 0
      for (var x in this.cardata) {
        if (this.checkedItem.indexOf(this.cardata[x].pro_detail.pro_name) !== -1) {
          this.price = this.price + this.cardata[x].pro_detail.pro_price * this.cardata[x].count
        }
      }
    },
    remove(value) {
      this.dialogVisible = true
      this.removing = value
    },
    removeItem() {
      var index = this.cardata.indexOf(this.removing)
      this.cardata.splice(index, 1)
      this.dialogVisible = false
      this.axios.get(this.$store.state.API + 'car.php', {
        params: {
          id: this.removing.id,
          action: 'delete'
        }
      }).then((response) => {
        if (response.data.code === 200) {
          this.$notify.info({
            title: '购物车提示',
            message: '商品:' + this.removing.pro_detail.pro_name + '已从购物车移除'
          })
        } else {
          this.$notify.error({
            title: '出错了',
            message: '商品:' + this.removing.pro_detail.pro_name + '从购物车移除失败'
          })
        }
      })
    },
    payfor() {
    	if (this.price == 0) {
    		this.$message({
    			message: '你未选中任何商品',
    			type: 'warning'
    		})
    		return
    	}
    	if (!this.$store.state.islogin) {
    		this.$message.error({
    			message: '请登录！！'
    		})
    		return
    	}
    	this.payDialogVisible = true
    },
    pay() {
      this.payDialogVisible = false
      this.$notify({
          title: '成功',
          message: '支付成功',
          type: 'success'
        });
    }
  },
  created: function() {
    this.axios.get(this.$store.state.API + 'car.php', {
      params: {
        username: this.$store.state.username,
        action: 'see'
      }
    }).then((response) => {
      //console.log(response.data.data)
      this.cardata = response.data.data
      for (var i in response.data.data) {
        this.itemOptions[i] = response.data.data[i].pro_detail.pro_name

      }
    })
  },
  watch: {
    checkedItem: function() {
      this.countprice()
    },
    cardata: {
      handler: function() {
        this.countprice()
      },
      deep: true
    }
  }
}

</script>
<style>
.clearfix {
  line-height: 36px;
}

.car-item {
  border: 1px solid #ddd;
  margin: 20px 0;
  padding: 20px;
  height: 120px;
  line-height: 120px;
}

.car-item-check {
  float: left;
  width: 120px;
  overflow: hidden;
}

.car-item-img {
  height: 120px;
  width: 120px;
  text-align: center;
  float: left;
  border: 1px solid #eee;
}

.car-item-price {
  float: left;
  width: 180px;
  text-align: center;
  color: #B12704;
}

.car-item-count {
  float: left;
  width: 250px;
  text-align: center;
}

.qwe {
  color: #222;
  font-size: 13px;
}

.car-item-delete {
  float: right;
  width: 100px;
  text-align: center;
  cursor: pointer;
}

.car-item-delete:hover {
  background-color: rgb(200, 0, 0);
  color: #fff;
}

.price {
  float: right;
  margin-right: 60px;
}

.pay-img {
  min-width: 550px;
}

</style>
