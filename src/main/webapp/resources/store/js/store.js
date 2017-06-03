jQuery(document).ready(function() {

    $("#shopAddress").blur(function () {
        var shopName = $("#shopName").val();
        var shopAddress = $("#shopAddress").val();
        $.ajax({
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            url:"/AgioServer/store/isstoreexit",
            async:true,
            type:"post",
            data: {"shopName": shopName,"shopAddress":shopAddress},
            dataType: "json",
            error: function(){ //失败
                alert(shopName+"链接错误！");
            },
            success:function(data){
                //alert(shopName);
                if ( data.status == "0"){
                    alert("同一地方该店铺已存在!");
                    $("#shopAddress").addClass('input-error');
                }
            }
        });
    });
});
