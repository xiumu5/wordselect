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
        <!-- nav -->
        <div id="naver"></div>
        <!-- 焦点图 -->
        <div class="row product">
            <div class="part col-sm-6" style="">
                <video width="100%" height="" controls="controls">
                    <source src="movie.mp4" type="video/mp4">
                    </source>
                    <object width="" height="" type="application/x-shockwave-flash" data="myvideo.swf">
                        <param name="movie" value="myvideo.swf" />
                        <param name="flashvars" value="autostart=true&amp;file=myvideo.swf" />
                    </object>
                    当前浏览器不支持 video直接播放，点击这里下载视频： <a href="myvideo.webm">下载视频</a>
                </video>
            </div>
            <div class="part col-sm-6" style="">
                <img src="./images/q1.png">
                <div class="content">
                    <div class="title title-cn">权限柜</div>
                    <div class="title title-en">Authority Cabinet</div>

                    <div class="readmore"><a href="${pageContext.request.contextPath}/toProductDetail.action?id=1">了解更多 &gt;&gt;</a></div>
                </div>
            </div>
            <div class="part col-sm-6" style="">
                <img src="./images/q2.png">
                <div class="content">
                    <div class="title title-cn">智能屋</div>
                    <div class="title title-en">Intelligent House</div>

                    <div class="readmore"><a href="">了解更多 &gt;&gt;</a></div>
                </div>
            </div>
            <div class="part col-sm-6" style="">
                <img src="./images/q3.png">
                <div class="content">
                    <div class="title title-cn">智能柜A</div>
                    <div class="title title-en">Intelligent Cabinet A</div>

                    <div class="readmore"><a href="">了解更多 &gt;&gt;</a></div>
                </div>
            </div>
            <div class="part col-sm-6" style="">
                <img src="./images/q4.png">
                <div class="content">
                    <div class="title title-cn">智能柜B</div>
                    <div class="title title-en">Intelligent Cabinet B</div>

                    <div class="readmore"><a href="">了解更多 &gt;&gt;</a></div>
                </div>
            </div>
            <div class="part col-sm-6" style="">
                <img src="./images/q5.png">
                <div class="content">
                    <div class="title title-cn">智能柜C</div>
                    <div class="title title-en">Intelligent Cabinet C</div>

                    <div class="readmore"><a href="">了解更多 &gt;&gt;</a></div>
                </div>
            </div>
            <div class="part col-sm-6" style="">
                <img src="./images/q6.png">
                <div class="content">
                    <div class="title title-cn">智能墙</div>
                    <div class="title title-en">Intelligent Wall</div>

                    <div class="readmore"><a href="">了解更多 &gt;&gt;</a></div>
                </div>
            </div>
            <div class="part col-sm-6" style="">
                <img src="./images/q7.png">
                <div class="content">
                    <div class="title title-cn">SPD</div>
                    <div class="title title-en">Supply Processing Distribution</div>

                    <div class="readmore"><a href="">了解更多 &gt;&gt;</a></div>
                </div>
            </div>
        </div>

        <!-- 焦点图结束 -->

        <!-- footer -->
        <div id="footer"></div>
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
                    // if(language.length === 0){
                    // 	language = $('<div id="language" class="language"><ul><li>中</li><li>En</li></ul></div>');
                    // 	$("body").append(language);
                    // }
                    // if(language.css("display") === "block"){
                    // 	language.slideUp(300);
                    // 	return;
                    // }
                    // language.css("left",$(this).offset().left+"px");
                    // language.slideDown(300);
                    // language.on("click","li",function(){
                    // 	var index = $(this).index();
                    // 	if(index === parseInt(languageIndex)){
                    // 		//退出
                    // 		language.slideUp(300);
                    // 		language.off();
                    // 		return ;
                    // 	}
                    // 	var _href = location.href;
                    // 	console.log(_href);
                    // 	if(index === 0){
                    // 		location.href= _href.split("?")[0];
                    // 	} else {
                    // 		location.href= _href + "?lang=en";
                    // 	}
                    // });
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
