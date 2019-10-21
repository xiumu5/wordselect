<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>安徽八六三信息科技有限公司</title>
        <link rel="stylesheet" type="text/css" href="./css/index.css" />
        <link rel="stylesheet" type="text/css" href="./css/public.css" />
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon" />
    </head>

    <body>
        <div id="case">
        <!-- nav -->
        <div id="naver"></div>
        <!-- case -->
        <div class="row case">
            <div class="title top">
               <img src="images/case.png" >
            </div>
            <div class="product col-sm-10 col-sm-offset-1">
                <div class="col-sm-5 col-sm-offset-1">
                    <img src="images/w1.png">
                </div>
                    <div class="col-sm-5 col-sm-offset-1">
                    <img src="images/w2.png">
                </div>
                <div class="col-sm-5 col-sm-offset-1">
                    <img src="images/w3.png">
                </div>
                <div class="col-sm-5 col-sm-offset-1">
                    <img src="images/w4.png">
                </div>
                <div class="col-sm-5 col-sm-offset-1">
                    <img src="images/w5.png">
                </div>
                <div class="col-sm-5 col-sm-offset-1">
                    <img src="images/w6.png">
                </div>
            </div>
        </div>
        <!--case over -->
        <!-- footer -->
        <div id="footer"></div>
        </div>
        </div>
        <!-- /#wrapper -->
        <script src="./js/jquery.min.js"></script>
        <script type="text/javascript" src="./js/bootstrap.min.js"></script>
        <script type="text/javascript">
            //语言切换部分
            $(function() {
                var languageIndex = parseInt("0");
                $("#earth").on("click", function() {
                    var _href = location.href;
                    if (languageIndex === 1) {
                        location.href = _href.split("?")[0];
                    } else {
                        location.href = _href + "?lang=en";
                    }
                });
            });
        </script>
        <script>
            $("#naver").load("./naver.html");
            $("#footer").load("./footer.html");
        </script>

        <script src="./js/swiper.jquery.min.js"></script>
        <script type="text/javascript">
            $(function() {
                //console.log($(window).height());
                $(".swiper-slide").height($(window).height());
                //计算swiper高度
                var productItemWidth = $(".product > div:eq(0)").width();

                $(".product .product-item").height(productItemWidth / 1.55758);

                var mySwiper = new Swiper('.swiper-container', {
                    autoplay: 4500, //可选选项，自动滑动
                    effect: 'slide',
                    speed: 500,
                    pagination: '.swiper-pagination',
                    paginationClickable: '.swiper-pagination',
                    nextButton: '.swiper-button-next',
                    prevButton: '.swiper-button-prev',

                });
                $(".wrap").css("visibility", "visible");
            });
        </script>
        <script>
            $(function() {
                $('.menu-button').click(function() {
                    $(this).toggleClass("open");
                    $('.smart-nav').toggleClass("open");
                });

                $('.smart-nav ul li .tit').on('click', function() {
                    var _this = $(this).parent('li');
                    if (_this.hasClass('cur')) {
                        _this.removeClass('cur');
                        _this.find('.child').stop().slideUp();
                        _this.removeClass('on');
                    } else {
                        _this.addClass('on').siblings('li').removeClass('on');
                        _this.addClass('cur').siblings('li').removeClass('cur');
                        _this.find('.child').stop().slideDown().parents('li').siblings('li').find(
                            '.child').stop().slideUp();
                    };
                });
            })
        </script>
    </body>
</html>
