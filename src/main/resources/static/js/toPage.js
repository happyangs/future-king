function page_ctrl(data_obj) {
      var obj_box=(data_obj.obj_box!== undefined) ? data_obj.obj_box:function () {
        return;
      };

      //翻页容器dom对象,必要参数
      var total_item = (data_obj.total_item!== undefined) ? parseInt(data_obj.total_item) : 0;//数据条目总数,默认为0,组件将不加载
      var per_num = (data_obj.per_num!== undefined) ? parseInt(data_obj.per_num) : 10;//每页显示条数,默认为10条
      var current_page = (data_obj.current_page!== undefined) ? parseInt(data_obj.current_page) : 1;//当前页,默认为1
      var total_page = Math.ceil(total_item/per_num);//计算总页数,不足2页,不加载组件
      if(total_page < 2){
        return;
      }
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
          /*加载数据*/
          function change_content() {
              $.ajax({
                  type: 'POST',
                  url: 'product/queryByCondition',
                  dataType: 'JSON',
                  data: JSON.stringify({
                      'page_size': per_num,
                      'page_num': current_page
                  }),
                  contentType: "application/json;charset=utf-8",
                  sync: true,
                  success: function (data) {
                      $('.J_product-ul').empty();   //清空resText里面的所有内容
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
                      totalCount = data.info.meta.count;
                      init();
                  },
                  error: function (e) {
                      var res = $.parseJSON(e.responseText);
                      console.log(res.msg);
                  }
              });
          }

          change_content();
          showPage();
      }

    function init(totalCount) {
        var obj_2 = {
            obj_box: '.page_2',//翻页容器
            total_item: totalCount,//条目总数
            per_num: 20,//每页条目数
            current_page: 1//当前页
        };
        /*调用分页方法,初始化数据*/
        page_ctrl(obj_2);
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