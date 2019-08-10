console.log("out0");
$(document).ready(function(){
    var xhr=new XMLHttpRequest();
    console.log("inajax1");
    xhr.open("GET","/endingwork_war_exploded/goods/goodslist",true);
    xhr.onload=function(){
        xhr.responseText
        console.log("inajax2");
    }
    xhr.send();
})