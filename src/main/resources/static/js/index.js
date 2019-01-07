jQuery(document).ready(function($) {

    var page_size = 20;
    var page_num = 0;
    $(".J_head a").click(function() {
        $(this).siblings('a').removeClass('active');
        $(this).addClass('active');
        var productTyppe = $(this).find("li").val();
        queryProduct(productTyppe);
    });

    function queryProduct(productType) {
        var data = {};
        data.product_type = productType;
        data.page_size = page_size;
        data.page_num = page_num;
        $.ajax({
            type: 'POST',
            url: 'product/queryByCondition',
            dataType: 'JSON',
            data: JSON.stringify(data),
            contentType: "application/json;charset=utf-8",
            sync: true,
            success: function (data) {
                $('.J_product-ul').empty();
                var html = '';
                var info = data.info.data;

                $.each(info, function (index, content) {
                    html +=   '<a class="product-item J_product-item" href="detail/' + content.productId + '" title="查看详细内容" style="text-decoration:none" target="_blank">'
                        + '<img src="' + content.showPath + '"/>'
                        + '<div class="product-desc">'
                        + '<span class="product-id clear">编号:'+content.productId+'</span>'
                        + '<span class="product-htmlNum clear">张数:'+content.htmlNum+'</span>'
                        + '<div class="Line"></div>'
                        + '<div class="product-title">' + content.productName + '</div>'
                        + '<div class="product-price" style="display: block;">'
                        + '<span>¥' + content.price + '</span>'
                        + '</div>'
                        + '</div>'
                        + '</a>'
                });
                $('.J_product-ul').html(html);
            },
            error: function (e) {
                var res = $.parseJSON(e.responseText);
                console.log(res.msg);
            }
        });
    }

    $(".J_product_type li").click(function() {
        var index = $(this).index()
        if(index != 0){
            $(this).siblings('li').removeClass('active');
            $(this).addClass('active');
            var value = $(this).val();
            $('.J_productType').val(value);
            query();
        }
    });

    $(".J_html_num li").click(function() {
        var index = $(this).index()
        if(index != 0){
            $(this).siblings('li').removeClass('active');
            $(this).addClass('active');
            var value = $(this).val();
            $('.J_htmlNum').val(value);
            query();
        }
    });

    $(".J_price li").click(function() {
        var index = $(this).index()
        if(index != 0){
            $(this).siblings('li').removeClass('active');
            $(this).addClass('active');
            var value = $(this).val();
            $('.J_productPrice').val(value);
            query();
        }
    });

    $(".J_theme li").click(function() {
        var index = $(this).index()
        if(index != 0){
            $(this).siblings('li').removeClass('active');
            $(this).addClass('active');
            var value = $(this).val();
            $('.J_productTheme').val(value);
            query();
        }
    });

    function query() {
        var J_productType = $('.J_productType').val();
        var html_num = $('.J_htmlNum').val();
        var J_productPrice = $('.J_productPrice').val();
        var J_productTheme = $('.J_productTheme').val();
        alert(J_productType+":"+html_num+":"+J_productPrice+":"+J_productTheme);
    }
});