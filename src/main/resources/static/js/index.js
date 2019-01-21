jQuery(document).ready(function($) {

    var page_size = 20;
    var page_num = 0;
    $(".J_head a").click(function() {
        $(this).siblings('a').removeClass('active');
        $(this).addClass('active');
        var productTyppe = $(this).find("li").val();
        queryProduct(productTyppe);
    });

    function getHtmlNum(data,type) {
        if (type == 1){
            data.max_html_num = 20;
            data.min_html_num = 10;
        }
        if (type == 2){
            data.max_html_num = 30;
            data.min_html_num = 20;
        }
        if (type == 3){
            data.max_html_num = 40;
            data.min_html_num = 30;
        }
        if (type == -1){
            data.min_html_num = 40;
        }
    }
    function getPrice(data,type) {
        if (type == 1){
            data.max_price = 30;
            data.min_price = 0;
        }
        if (type == 2){
            data.max_price = 50;
            data.min_price = 30;
        }
        if (type == 3){
            data.max_price = 100;
            data.min_price = 50;
        }
        if (type == -1){
            data.min_price = 100;
        }
    }
    function queryProduct(productType,htmlNumType,priceType,productTheme) {
        var data = {};
        getHtmlNum(data,htmlNumType);
        getPrice(data,priceType);
        data.product_type = productType;
        data.product_theme = productTheme;
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
        var productType = $('.J_productType').val();
        var htmlNumType = $('.J_htmlNum').val();
        var priceType = $('.J_productPrice').val();
        var productTheme = $('.J_productTheme').val();
        queryProduct(productType,htmlNumType,priceType,productTheme);
    }
});