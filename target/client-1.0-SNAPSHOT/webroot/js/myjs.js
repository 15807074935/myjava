var topa=document.getElementsByClassName("top-li")[3];
var localMore=document.getElementsByClassName("local-more")[0];
var initLocal=document.getElementsByClassName("init-local")[0];
topa.addEventListener("mousemove",function(){
     localMore.style.display="block"
     initLocal.style.backgroundColor="#fff";
},false)
topa.addEventListener("mouseleave",function(){
     localMore.style.display="none"
     initLocal.style.backgroundColor="";
},false)

var contentWrap=document.getElementsByClassName("content-wrap")[0];
var leftdiv=contentWrap.getElementsByClassName("left")[0];
var leftli=leftdiv.getElementsByTagName("li");
var lidiv=new Array();
for( i=0;i<5;i++){
   lidiv[i]=leftli[i].getElementsByTagName("div")[0];
   (function(j){
     leftli[j].onmousemove=function(){
          lidiv[j].style.display="block"; 
        };
        leftli[j].onmouseleave=function(){
          lidiv[j].style.display=""; 
        };
   }(i));
}

// 轮播图
var left=0;
var n=10;
var y=0;
var timer;
var sliderImages=document.getElementsByClassName("images")[0];
var yuanLi=document.getElementsByClassName("yuan")[0].getElementsByTagName("li");
var imagesLi=sliderImages.getElementsByTagName("li");
var run=function(){

     for(var i=0;i<yuanLi.length;i++)
     yuanLi[i].style.backgroundColor="#fff";
     yuanLi[-y].style.backgroundColor="#2a70e9";

     left=left-10;
     sliderImages.style.marginLeft=left+"px";
     if(left%710==0){
          n=1000;
          y=left/710;     
     }else{
          n=10;
     }
     if(left==-3550){
          left=0;
          y=0;
     }
     timer = setTimeout(run,n);
}
run();
for(var i=0;i<imagesLi.length;i++){
     (function(i){
          imagesLi[i].addEventListener("mousemove",function(){
               clearTimeout(timer)});
          imagesLi[i].addEventListener("mouseleave",function(){
               timer = setTimeout(run,n)});
     }(i));
}
//头条
var tt1=document.getElementsByClassName("t1")[0];
var tt2=document.getElementsByClassName("t2")[0];
var con1=document.getElementsByClassName("content1")[0];
var con2=document.getElementsByClassName("content2")[0];
tt2.addEventListener("mousemove",function () {
    tt1.style.borderTopColor="transparent";
    tt2.style.borderTopColor="#fff";
    con1.style.display="none";
    con2.style.display="block";
})
tt1.addEventListener("mousemove",function () {
    tt2.style.borderTopColor="transparent";
    tt1.style.borderTopColor="#fff";
    con2.style.display="none";
    con1.style.display="block";
})


// 图片回显

// $(document).ready(function(){
//     $("#pictureFile").on("change", upload );
// })
//
// function upload(){
//     /**
//      * 我们存一下this对象，
//      * 我们将在ajax的回调函数中，
//      * 将要用这个对象，
//      * 用它来改变父盒子的背景图
//      *
//      */
//     var self = this;
//     //如果不理解我写的，可以看看我的前几篇文章
//     $.ajax({
//         url: "${pageContext.request.contextPath}/goods/addgoods.do",
//         type: "post",
//         dataType: "json",
//         cache: false,
//         data: new FormData($("#formTag1")[0]),
//         processData: false,// 不处理数据
//         contentType: false, // 不设置内容类型
//         success: function(data){
//             /*
//                 后端返回的数据格式为
//                 {"url": "xxxxxx"}
//              */
//             $(self).parent().css({
//                 "background-image": "url("+data.url+")"
//             })
//         }
//
//     })
// }

// $('#pictureFile').change(function(e) {
//     var _URL = window.URL || window.webkitURL;
//     var file, img;
//     if ((file = this.files[0])) {
//         img = new Image();
//         img.onload = function() {
//             $('.img').attr('src', this.src);
//             console.log(this.width)
//         };
//         img.src = _URL.createObjectURL(file);
//     }
// })
//图片显示
// $(document).ready(function () {
//     $("#pictureFile").change(function () {
//         var fil = this.files;
//             console.log(fil.length);
//             for (var i = 0; i < fil.length; i++) {
//                 console.log(fil[i]);
//                 console.log('--------------------------');
//                 reads(fil[i]);
//                 console.log("hello world");
//         }
//     });
// });
//
// function reads(fil){
//     var reader = new FileReader();
//     reader.readAsDataURL(fil);
//     reader.onload = function(){
//         // document.getElementById("dd").innerHTML += "<img src='"+reader.result+"'>";
//         $('#pictureFile').after("<img src='"+reader.result+"'>");
//     };
// }
//读取cookie

// 想要获取的cook键值


// 调用


function getCookie(c_name)
{
    if (document.cookie.length>0)
    {
        c_start=document.cookie.indexOf(c_name + "=")
        if (c_start!=-1)
        {
            c_start=c_start + c_name.length+1
            c_end=document.cookie.indexOf(";",c_start)
            if (c_end==-1) c_end=document.cookie.length
            return unescape(document.cookie.substring(c_start,c_end))
        }
    }
    return null;
}
 window.onload=function(){
    var zc=document.getElementById("cookieuse2");
    var dl=document.getElementById("cookieuse1");
    var user=document.getElementById("usermes");
    var name_value = getCookie("user_name");
    console.log("值为"+name_value);
    if(name_value!=null){
        zc.innerText="发布闲置";
        zc.href="/endingwork_war_exploded/html/lb.jsp";
        dl.innerText="你好，"+name_value+" V";
    }
}

// 百度接口实现补全
var txt = document.getElementsByClassName("text-search")[0];
var oUl = document.getElementsByClassName("load_more")[0];
var oBtn = document.getElementById("obtn");

txt.onkeyup = function(){
    oUl.innerHTML = "";
    var val = txt.value;
    var oScript = document.createElement("script");//动态创建script标签
    oScript.src = "https://sp0.baidu.com/5a1Fazu8AA54nxGko9WTAnF6hhy/su?wd="+val+"&cb=callback";
    //添加链接及回调函数
    document.body.appendChild(oScript);//添加script标签
    document.body.removeChild(oScript);//删除script标签
}
//回调函数

function callback(data){
    data.s.forEach(function(value){
        var oLi = document.createElement("li");
        oLi.innerHTML = "<a href=\"https://www.baidu.com/s?wd="+ value + "\">"+ value + "</a>";
        oUl.appendChild(oLi);
    })
    oUl.style.display = "block";
}
//点击跳转到百度页面，并搜索其中内容
oBtn.onclick = function(){
    var val = txt.value;
    location.href = "http://www.baidu.com.cn/s?wd=" + val + "&cl=3";
}

//user
var dl=document.getElementById("cookieuse1");
var limes=document.getElementById("userli");
var user=document.getElementById("usermes");
      limes.onmouseover=function(){
        var name_value = getCookie("user_name");
        if(name_value!=null){
            user.style.display="block";
            limes.style.background="#fff";
            dl.style.color="#999";
        }
    };
    limes.onmouseleave=function(){
        var name_value = getCookie("user_name");
        if(name_value!=null){
        user.style.display="none";
        limes.style.background="";
     }
    }

    // userout
    var out=document.getElementById("userout");
    out.addEventListener("click",function () {
        console.log("userout")
        var xhr=new XMLHttpRequest();
        xhr.open("GET","/endingwork_war_exploded/user/loginout",true)
        xhr.onload=function () {
            if(xhr.responseText=="success"){
                location.reload([true])
            }
        }
        xhr.send();
    });
