<%@ page import="cn.itcast.JavaBean.LoginBean" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2020/10/8
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <title>Title</title>
  <!-- Bootstrap -->
  <link href="./css/bootstrap.min.css" rel="stylesheet">

  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="FA/css/all.css">
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="tab">
  <button id="but1">提交表单</button>

  <span>|</span>

  <button id="but2">我的表单</button>
  <a href="javascript:void (0)" id="logina" class="btn btn-success">登录</a>
</div>
<div class="Choose">
  <iframe src="./my-repair-bill.jsp" frameborder="0" id="Frame1" ></iframe>
</div>
<!--登录小窗口-->
<div id="Login">
  <button id="close" class="btn btn-warning"><i class="fa fa-arrow-circle-left"></i></button>
  <form action="Servlet01" method="post">
    <div id="div1">
      <span>用户:</span><input type="text" name="username" class="form-control"></div>
    <br>  <br>
    <div id="div2">
      <span>密码:</span><input type="text" name="userpass" class="form-control"></div>
    <br>  <br>
    <div id="div3">
      <br>
      <br>
      <br>
      <br>

    <a href=""><button type="submit" class="btn btn-primary">登录</button></a>

    <a href="javascript:void(0)"><button class="btn btn-primary" onclick="func3()" type="button">注册</button></a>
    </div>

  </form>
</div>
<!--注册小窗口-->
<div id="Register">
  <button id="close2" class="btn btn-warning"><i class="fa fa-arrow-circle-left" ></i></button>
  <div id="regis">
  <form action="Servlet04" method="post" class="form-inline">
    <div id="div12" class="form-group">
      <label>用户:</label>
      <input type="text" name="username" class="form-control"  ></div>
    <br>
    <br>
    <br>
    <div id="div22" class="form-group">
      <label>密码:</label>
      <input type="text" class="form-control"  name="userpass" ></div>
    <br>
    <br><br>
    <div id="div33" class="form-group">
      <label>电话:</label>
      <input type="text" name="tel"  class="form-control" ></div>
    <br>

    <br>
    <br>

    <div id="div44">
      <a href=""><button type="submit" class="btn btn-primary" onclick="window.location.reload()">注册</button></a>
    </div>

  </form></div>
</div>
<!--遮罩层-->
<div id="cover"></div>
<script>
  var user="<%=session.getAttribute("user")%>";
  var N="null";

  var but2=document.getElementById("but2");

  var but1=document.getElementById("but1");
  but1.onclick=function () {
    if (!(user == N))
    {
      but1.style.backgroundColor="deepskyblue";
      but1.style.color="white";

      but2.style.backgroundColor="white";
      but2.style.color="deepskyblue";
      document.getElementById("Frame1").src="./Submit-bill.jsp";
    }else
    {
      var Login=document.getElementById("Login");
      Login.style.display="block";


      document.getElementById("cover").style.display="block";
    }


    /*  but1.style.backgroundColor="deepskyblue";
      but1.style.color="white";

      but2.style.backgroundColor="white";
      but2.style.color="deepskyblue";
      document.getElementById("Frame1").src="./Submit-bill.jsp";*/
  };
  but2.onclick=function () {
    but2.style.backgroundColor="deepskyblue";
    but2.style.color="white";

    but1.style.backgroundColor="white";
    but1.style.color="deepskyblue";

    document.getElementById("Frame1").src="./my-repair-bill.jsp";
  };
  document.getElementById("logina").onclick=function () {
    var Login=document.getElementById("Login");
    Login.style.display="block";


    document.getElementById("cover").style.display="block";
  }

  document.getElementById("close").onclick=function () {
    var Login=document.getElementById("Login");
    Login.style.display="none";
    document.getElementById("cover").style.display="none";
  }



  if(!(user == N))
  {
    document.getElementById("logina").innerHTML="你好！"+"<%=session.getAttribute("user")%>"
  }

  function  func3()
  {
    document.getElementById("Register").style.display="block";
  }


  document.getElementById("close2").onclick=function () {
    var Login=document.getElementById("Register");
    Login.style.display="none";
    document.getElementById("cover").style.display="none";
  }
</script>


<link rel="script" href="js/index.js">
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="js/jquery-3.2.1.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>