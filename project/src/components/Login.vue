<template>
   <div>
      <mt-field
      label="用户名" placeholder="请输入用户名" v-model="uname" :attr="{maxlength:10,autofous:true}"></mt-field>  
      <mt-field
      label="密码" placeholder="请输入密码" v-model="upwd" :attr="{maxlength:10,autofous:true}"></mt-field>  
      <mt-button @click="login">登录</mt-button>
   </div>  
</template>
<script>
export default {
  data(){
    return {
      uname:"",
      upwd:""
    }
  },
  methods:{
    login(){
      //0创建验证正则
      var reg=/^[a-z0-9]{3,12}$/i;
      var uname=this.uname;
      var upwd=this.upwd;
      //1验证用户名格式
      if(!reg.test(uname)){
         this.$messagebox("提示","用户名格式不正确")
         return
      }
      //2验证密码格式
       if(!reg.test(upwd)){
         this.$messagebox("提示","用户名格式不正确")
         return
      }
      //axios
      //1.创建发送请求时要传入的参数
      var obj={uname,upwd}
      //2.发送axios请去
      this.axios.get("login",{params:obj}).then(res=>{
        if(res.data.code==-1){
          this.$messagebox("提示","用户名或密码错误")
        }else{
          this.$toast("登录成功")
        }
      })
    }
  }
}
</script>
<style scoped>
   .mint-button--normal{
     width: 100%;
   }
</style>
