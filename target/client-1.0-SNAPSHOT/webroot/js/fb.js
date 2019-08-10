$(document).ready(function () {
    $("#pictureFile").change(function () {
        var fil = this.files;
            console.log(fil.length);
            for (var i = 0; i < fil.length; i++) {
                console.log(fil[i]);
                console.log('--------------------------');
                reads(fil[i]);
                console.log("hello world");
        }
    });
});
function reads(fil){
    var reader = new FileReader();
    reader.readAsDataURL(fil);
    reader.onload = function(){
        var ddiv=document.getElementById("dd");
        var img=ddiv.getElementsByTagName("img")[0];
        if(img){
            ddiv.removeChild(img);
        }
        document.getElementById("dd").innerHTML += "<img src='"+reader.result+"'>";
        // $('#pictureFile').after("<img src='"+reader.result+"'>");
    };
}