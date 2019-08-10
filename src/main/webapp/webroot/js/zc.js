//用户名查重
var iName=document.getElementsByClassName("btmName")[0];
var tip=document.getElementsByClassName("tip")[0];
var btSm=document.getElementsByClassName("btSm")[0];
iName.addEventListener("blur",findMore);
function findMore(){
    console.log("in1");
     var getname=iName.value;
    console.log("getname"+getname);
     var xhr=new XMLHttpRequest();
     xhr.open("GET","/endingwork_war_exploded/user/username?name="+getname,true);
     xhr.onload=function(){
          var mes=xhr.responseText;
          console.log("mes="+mes);
          if(mes=="true"){
              console.log("in2");
                tip.style.display="inline";
              btSm.setAttribute("disabled", true);//设置不可点击
              btSm.style.backgroundColor  = '#6c6c6c';//设置背景色
          }else{
              btSm.removeAttribute("disabled");//去掉不可点击
              btSm.style.backgroundColor  = '#e4393c';
              console.log("in3");
               tip.style.display="none";
                btSm.style.disable="false";
          }  
     }
     xhr.send();
}