jQuery(document).ready(function($) {

    var page_size = 10;
    var page_num = 0;
    $(".J_head a").click(function() {
        $(this).siblings('a').removeClass('active');
        $(this).addClass('active');

        var productId = $(this).find("li").val();

        queryProduct(productId);
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
                    html += '<a class="product-item J_product-item" href="detail/' + content.productId + '" title="查看详细内容" target="_blank">'
                        + '<img src="' + content.showPath + '"/>'
                        + ' <div class="product-desc">'
                        + '  <div class="product-title">' + content.productName + '</div>'
                        + ' <div class="product-price" style="display: block;">'
                        + ' <span>¥' + content.price + '</span>'
                        + ' </div>'
                        + '  </div>'
                        + '  </a>'
                });
                $('.J_product-ul').html(html);
            },
            error: function (e) {
                var res = $.parseJSON(e.responseText);
                console.log(res.msg);
            }
        });
    }
});