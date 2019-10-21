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
        <div id="news">
            <!-- nav -->
            <div id="naver"></div>
            <!-- 产品 -->
            <div class="banner top">
                <img src="images/news.png">
            </div>
            <div class="base-tit ani-view fadeInDown ani_delay9">
                <div class="swiper-container swiper-container-horizontal" id="base-tit">
                    <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                        <div class="swiper-slide swiper-slide-next" style="width: 50%;">
                            <a href="./news.jsp#social">社会新闻</a>
                        </div>
                        <div class="swiper-slide swiper-slide-active on" style="width: 50%;">
                            <a href="./news.jsp#compony">公司新闻</a>
                        </div>
                        <!-- <div class="swiper-slide">
           				<a href="/business/engineering.html">生产设备</a>
           			</div> -->
                    </div>
                </div>
            </div>
            <div class="article col-sm-8 col-sm-offset-2" id="detail">
                <h3>${news.title}</h3>
                <div class="mess">
                    <div class="time">发布时间：<span>${news.time}</span></div>
                    <div class="view">浏览次数：<span>${news.lookTimes}次</span></div>
                    <div class="share"><img src="images/qq.png"><img src="images/qzone.png"><img src="images/pyq.png"></div>
                </div>
                <div class="detaile">
                    <p>${news.content}</p>>
                    <%--<p>2019年5月18日，安徽八六三信息科技有限公司与安徽农业大学成功举办签约仪式，安徽八六三研发中心负责人与安徽农业大学工学院领导作为双方代表，签订了产学研合作协议，成功搭建产学研交流平台。http://www.it863.cn/</p>
                    <p>安徽八六三成立四年以来，借助国外先进的管理理念，自主研发出一系列信息管理系统软件，共取得专利、软著等知识产权二十余项。目前公司正在积极研发各类中心库的“智能屋系统”，该产品在医用物资实现全方位的管理方面，将具有极大促进作用。</p>--%>
                    <img src="images/qq.png">
                    <p>会上，签约双方针对“智能屋系统”设计方面展开讨论，在智能屋底层控制软件开发方面取得共识，展开深度合作，签订《智能屋底层控制软件开发》项目合作协议。双方将以开发研究“智能屋管理系统”在不同环境下使用，或特殊耗材的不同存储方式下对系统的要求，智能化的为客户管理耗材提供新的管理方案。开发全程项目追溯：从初版软件系统的开发，到从源头解决客户在使用中会遇到的问题，再到上市产品的合格产品规范，保证每批次产品从软件开发、生产加工、上市使用都可以实现智能化管理。http://www.it863.cn/</p>
                    <p>安徽八六三利用自身优秀的设计理念，结合安徽农业大学工学院先进的科研力量，通过产学研渠道，互通技术，加强了与行业专家和精尖人才的合作与交流，提升了企业创新力，提高了产品的核心竞争力。本次合作所建立产学研创新平台，将推动耗材智能化管理的技术进步，提升耗材智能化管理及信息化的水平，承领医疗管理行业发展的新浪潮，为中国医疗行业耗材智能化管理更添动力！</p>
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
