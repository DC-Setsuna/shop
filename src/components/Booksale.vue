<template>
  <div class="carsale_all">
    <div class="carsale_sale">
      <span>货品信息</span>
    </div>
    <div class="carsale_form">
      <el-form ref="form" :model="form" size="mini">
        <el-form-item label-width='150px' label="货品名 :">
          <el-input class="newtask_row_input" v-model="form.pro_name"></el-input>
        </el-form-item>
        <el-form-item label-width='150px' label="价格 :">
          <el-input class="newtask_row_input" v-model="form.pro_price"></el-input>
        </el-form-item>
        <el-form-item label-width='150px' label="种类 :">
          <el-input class="newtask_row_input" v-model="form.pro_class"></el-input>
        </el-form-item>
        <el-form-item label-width='150px' label="Upload :">
          <el-upload class="upload-demo" :show-file-list="true" drag action="http://localhost/addImg.php" :on-success="UploadSuccess" multiple>
            <i class="el-icon-upload"></i>
            <div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
            <div class="el-upload__tip" slot="tip">目前只能上传SQL文件</div>
          </el-upload>
        </el-form-item>
        <el-form-item label-width='150px' label="车况 :">
          <el-input class="newtask_text_input" type="textarea" :autosize="{ minRows: 5, maxRows: 10}" placeholder="请输入内容" v-model="form.pro_introduce"></el-input>
        </el-form-item>
      </el-form>
      <el-button class="carsale_sale_button" type="primary" @click="onSubmit">Submit</el-button>
    </div>
  </div>
</template>
<script type="text/javascript">
export default {
  data() {
    return {
      form:{
        pro_name: '',
        pro_price: '',
        pro_class: '',
        pro_introduce: '',
        img_url: ''
      },
      active: '1'
    }
  },
  methods: {
    onSubmit() {
      console.log(this.form.pro_name)
      this.axios.get(this.$store.state.API + 'add.php',{params:this.form}).then((response) => {
        if (response.data.code === 200) {
          this.$notify({
            title: '货品添加成功',
            message: '生鲜超市',
            type: 'success',
            duration: 3000,
            offset: 70
          })
        } else {
          this.$message.error('添加失败')
        }
      })
    },
    Remove(file, fileList) {
      console.log(file,fileList);
    },
    UploadSuccess(response,file,fileList) {
      this.form.img_url = response.data.url
    }
  }
}
</script>
<style type="text/css">
	.carsale_sale {
    text-align: center;
    margin: 30px 0px;
    font-size: 40px;
    font-family:'STKaiti';
  }
  .newtask_text_input {
    width: 72%;
  }
  .newtask_row_input {
    width: 30%;
    margin-right: 40px;
  }
  .newtask_input {
    width: 30%;
  }
  .carsale_sale_button {
    margin: 0 0 5% 80%;
  }
  .carsale_form {
    border:#37e1ec solid 1px; 
    border-radius:10px;
    width: 80%;
    margin-left:10%;
  }
</style>