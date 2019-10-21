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
        <div id="present">
            <!-- nav -->
            <div id="naver"></div>
            <!-- 产品 -->
            <div class="banner top">
                <img src="${cargoDetail.picture}">
            </div>

            <div class="article col-sm-8 col-sm-offset-2" id="detail">
                <h3>${cargoDetail.title}</h3>
                <div class="mess">
                    <div class="time">发布时间：<span>${cargoDetail.time}</span></div>
                    <div class="view">浏览次数：<span>${cargoDetail.lookTimes}次</span></div>
                </div>
                <div class="detaile">
                   <%-- <p>高值耗材智能存储柜，简称智能柜，是针对目前医用物资管理存在的不足研发出的智能管理模式，主要用于医院高值耗材、特殊药品的管理。</p>
                    <p>该产品采用物联网+RFID技术，有机结合智能识别、智能存取、自动控制、自动补货等技术，将RFID射频识别技术融入订购管理、内部请领、使用跟踪一系列流程分析中，对柜体内存放的各类耗材或特殊药品进行智能化管理，对内实施全程管控，对外实行医疗物资溯源，实现医用物资无人值守管理、安全管理、智能化管理，加快医疗信息现代化管理步伐。</p>--%>
                    <p>${cargoDetail.content}</p>
                    <h4>核心技术</h4>
                    <div class="col-sm-6 col-sm-offset-3">
                        <img src="images/p1.png">
                    </div>
                    <p>通过物联网+RFID技术对柜体内存放的各类耗材或者特殊药品进行智能化管理。</p>
                    <h4>实现功能</h4>
                    <div class="col-sm-6 col-sm-offset-3">
                        <img src="images/p2.png">
                    </div>
                    <img src="images/p3.png">
                </div>
            </div>
            <!-- 产品结束 -->
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
                });
            });
        </script>
        <script>
            $("#naver").load("./naver.html");
            $("#footer").load("./footer.html");
        </script>
        <script type="text/javascript">
            $(function() {
                $(".wrap").css("visibility", "visible");
            });
        </script>
        <script src="./js/swiper.jquery.min.js"></script>
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
