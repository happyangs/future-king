jQuery(document).ready(function($) {

    var totalCount = $('.J_totalCount').val();
    var defaultPageNum = 1;
    var defaultPageSize = 15
    pagination(totalCount,defaultPageNum,defaultPageSize);

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
    function queryProduct(productType,htmlNumType,priceType,productTheme,pageNum,pageSize) {
        var data = {};
        getHtmlNum(data,htmlNumType);
        getPrice(data,priceType);
        data.product_type = productType;
        data.product_theme = productTheme;
        data.page_size = pageSize;
        data.page_num = pageNum;
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
                var totalCount = data.info.meta.count;
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
                pagination(totalCount,pageNum,pageSize);
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
            query(defaultPageNum,defaultPageSize);
        }
    });

    $(".J_html_num li").click(function() {
        var index = $(this).index()
        if(index != 0){
            $(this).siblings('li').removeClass('active');
            $(this).addClass('active');
            var value = $(this).val();
            $('.J_htmlNum').val(value);
            query(defaultPageNum,defaultPageSize);
        }
    });

    $(".J_price li").click(function() {
        var index = $(this).index()
        if(index != 0){
            $(this).siblings('li').removeClass('active');
            $(this).addClass('active');
            var value = $(this).val();
            $('.J_productPrice').val(value);
            query(defaultPageNum,defaultPageSize);
        }
    });

    $(".J_theme li").click(function() {
        var index = $(this).index()
        if(index != 0){
            $(this).siblings('li').removeClass('active');
            $(this).addClass('active');
            var value = $(this).val();
            $('.J_productTheme').val(value);
            query(defaultPageNum,defaultPageSize);
        }
    });

    function query(pageNum,pageSize) {
        var productType = $('.J_productType').val();
        var htmlNumType = $('.J_htmlNum').val();
        var priceType = $('.J_productPrice').val();
        var productTheme = $('.J_productTheme').val();
        queryProduct(productType,htmlNumType,priceType,productTheme,pageNum,pageSize);
    }

    function pagination(totalCount,pageNum,pageSize) {
        /*容器2参数*/
        var obj_2 = {
            obj_box: '.page_2',//翻页容器
            total_item: totalCount,//条目总数
            per_num: pageSize,//每页条目数
            current_page: pageNum//当前页
        };
        /*调用分页方法,初始化数据*/
        page_ctrl(obj_2);
    }

    function page_ctrl(data_obj) {
        var obj_box=(data_obj.obj_box!== undefined) ? data_obj.obj_box:function () {
            return;
        };
        $(obj_box).html("");
        //翻页容器dom对象,必要参数
        var total_item = (data_obj.total_item!== undefined) ? parseInt(data_obj.total_item) : 0;//数据条目总数,默认为0,组件将不加载
        var per_num = (data_obj.per_num!== undefined) ? parseInt(data_obj.per_num) : 15;//每页显示条数,默认为10条
        var current_page = (data_obj.current_page!== undefined) ? parseInt(data_obj.current_page) : 1;//当前页,默认为1
        var total_page = Math.ceil(total_item/per_num);//计算总页数,不足2页,不加载组件
        // if(total_page < 2){
        //     return;
        // }
        //在指定容器内加载分页数据

        $(obj_box).append('<div class="page_ctrl"></div>');
        showPage();
        $(document).ready(function () {

            if(location.href.indexOf("#reloaded")==-1){
                location.href=location.href+"#reloaded";
                location.reload();
            }
        })


        function page_even() {
            query(current_page,per_num)
            showPage();
        }

        function showPage() {
            var inp_val=(current_page==total_page)?1:current_page+1;//跳转页数,input默认显示值
            var append_html='<button class="prev_page">上一页</button>';
            for(var i=0;i<total_page-1;i++){
                if(total_page>8&&current_page>6&&i<current_page-3){
                    if(i<2){
                        append_html+='<button class="page_num">'+(i+1)+'</button>';
                    }
                    else if(i==2){
                        append_html+='<span class="page_dot">•••</span>';
                    }
                }
                else if(total_page>8&&current_page<total_page-3&&i>current_page+1){
                    if(current_page>6&&i==current_page+2){
                        append_html+='<span class="page_dot">•••</span>';
                    }else if(current_page<7){
                        if(i<8){
                            append_html+='<button class="page_num">'+(i+1)+'</button>';
                        }else if(i==8){
                            append_html+='<span class="page_dot">•••</span>';
                        }
                    }
                }
                else{
                    if(i==current_page-1){
                        append_html+='<button class="page_num current_page">'+(i+1)+'</button>';
                    }
                    else{
                        append_html+='<button class="page_num">'+(i+1)+'</button>';
                    }
                }
            }
            if(current_page==total_page){
                append_html+='<button class="page_num current_page">'+(i+1)+'</button>';
            }else{
                append_html+='<button class="page_num">'+(i+1)+'</button>';
            }
            append_html+='<button class="next_page">下一页</button><span class="page_total">共 '+total_page+' 页, 到第</span><input class="input_page_num" type="text" value="'+inp_val+'"><span class="page_text">页</span><button class="to_page_num">确定</button>';
            $(obj_box).children('.page_ctrl').append(append_html);
            if(current_page==1){
                $(obj_box+' .page_ctrl .prev_page').attr('disabled','disabled').addClass('btn_dis');
            }else{
                $(obj_box+' .page_ctrl .prev_page').removeAttr('disabled').removeClass('btn_dis');
            }
            if(current_page==total_page){
                $(obj_box+' .page_ctrl .next_page').attr('disabled','disabled').addClass('btn_dis');
            }else{
                $(obj_box+' .page_ctrl .next_page').removeAttr('disabled').removeClass('btn_dis');
            }
        }

        $(obj_box+' .page_ctrl').on('click','button',function () {
            var that=$(this);
            if(that.hasClass('prev_page')){
                if(current_page!=1){
                    current_page--;
                    that.parent('.page_ctrl').html('');
                    page_even();
                }
            }
            else if(that.hasClass('next_page')){
                if(current_page!=total_page){
                    current_page++;
                    that.parent('.page_ctrl').html('');
                    page_even();
                }
            }
            else if(that.hasClass('page_num')&&!that.hasClass('current_page')){
                current_page=parseInt(that.html());
                that.parent('.page_ctrl').html('');
                page_even();
            }
            else if(that.hasClass('to_page_num')){
                current_page=parseInt(that.siblings('.input_page_num').val());
                that.parent('.page_ctrl').html('');
                page_even();
            }
        });
    }
});