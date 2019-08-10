//顶部
// var topa = document.getElementsByClassName("top-li")[3];
// var localMore = document.getElementsByClassName("local-more")[0];
// var initLocal = document.getElementsByClassName("init-local")[0];
// topa.addEventListener("mousemove", function() {
//     localMore.style.display = "block"
//     initLocal.style.backgroundColor = "#fff";
// }, false)
// topa.addEventListener("mouseleave", function() {
//     localMore.style.display = "none"
//     initLocal.style.backgroundColor = "";
// }, false)
//
// var contentWrap = document.getElementsByClassName("content-wrap")[0];
// var leftdiv = contentWrap.getElementsByClassName("left")[0];
// var leftli = leftdiv.getElementsByTagName("li");
// var lidiv = new Array();
// for (i = 0; i < 5; i++) {
//     lidiv[i] = leftli[i].getElementsByTagName("div")[0];
//     (function(j) {
//         leftli[j].onmousemove = function() {
//             lidiv[j].style.display = "block";
//         };
//         leftli[j].onmouseleave = function() {
//             lidiv[j].style.display = "";
//         };
//     }(i));
// }

// prices red
var pr=new Array();
for(var i=0;i<7;i++){
     pr[i]=document.getElementsByClassName("pricesred"+i)[0];
}
window.onload=function () {
    if("${btn}"!=null){
        var btnred=document.getElementsByClassName("${btn}")[0];
        btnred.style.color="#f30213";
    }
}
