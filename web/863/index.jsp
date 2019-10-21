<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>安徽八六三信息科技有限公司</title>
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" type="text/css" href="./css/index.css" />
    </head>

    <body>
        <!-- nav -->
        <div id="naver"></div>
        <!-- 焦点图 -->
        <div class="row index">
            <div class="swiper-container swiper-container-horizontal">
                <div class="swiper-wrapper">
                    <div class="swiper-slide" style="">
                        <div class="content">
                            <div class="title title-en">Intelligent cabinet</div>
                            <div class="title title-cn">智能柜</div>
                            <div class="readmore"><a href="${pageContext.request.contextPath}/toDetil.action?id=1">了解更多 &gt;&gt;</a></div>
                        </div>
                    </div>
                    <div class="swiper-slide" style="">
                        <div class="content">
                            <div class="title title-en">Smart wall</div>
                            <div class="title title-cn">智能墙</div>
                            <div class="readmore"><a href="${pageContext.request.contextPath}/toDetil.action?id=3">了解更多 &gt;&gt;</a></div>
                        </div>
                    </div>
                    <div class="swiper-slide" style="">
                        <div class="content">
                            <div class="title title-en">Intelligent house</div>
                            <div class="title title-cn">智能屋</div>
                            <div class="readmore"><a href="${pageContext.request.contextPath}/toDetil.action?id=2">了解更多 &gt;&gt;</a></div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span
                        class="swiper-pagination-bullet"></span></div>
                <!--  <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div> -->
            </div>
        </div>
        <!-- 焦点图结束 -->
        <!-- about -->
        <div class="row mainer">
            <div class="title top">
                关于我们
                <p>ABOUT US</p>
            </div>
            <div class="about col-sm-10 col-sm-offset-1">
                <div class="col-sm-6">
                   <%-- <p>安徽八六三信息科技有限公司（简称“八六三科技”）公司最初主要从合理用药医疗系统维护工作，后期逐步向系统集成、医疗信息化转型。</p>
                    <p>2016年初，公司为顺应国家医改政策，借助国外先进的管理理念，通过自主研发，开发出一系列的信息系统管理系统和设备，比如：SPD智能管理柜、医用冷链监测系统、数据互动同步系统等并申请获得了系列专利和软件著作权。目前公司已成功研发并投入使用的医用物资智能存储柜，简称智能柜...</p>--%>
                    <p>${about.content}</p>
                       <div class="readmore"><a href="">了解更多 &gt;&gt;</a></div>
                </div>
                <div class="col-sm-6">
                    <video width="100%" height="" controls src="${about.video}" type="video/mp4">
                    </video>
                </div>
            </div>
        </div>
        </div>
        <!-- 产品 -->
        <div class="row">
            <div class="title top">
                新闻动态
                <p>NEWS FEED</p>
            </div>
            <div class="product col-sm-10 col-sm-offset-1">
                <div class="news-list col-sm-12">
                    <div class="up">
                        <a href="${pageContext.request.contextPath}/toNewsDetail.action?id=${news[0].id}">
                            <div class="col-sm-4">
                                <img src="img/a1.png">
                            </div>
                            <div class="col-lg-7 col-lg-offset-1 up-text">

                                <h4>${news[0].title}</h4>
                  <%--              <p>公立医院在管理上普遍存在重视或强化临床业务管理，忽视或弱化医院运营管理，部门之间协同性较差，整体运营成本偏高的现象;医院在取消药品加成、降低耗材收益等医疗产品收入的情况下，如果没有政府足够的财政补偿，医院运营将会越来越困难。
                                    医院在信息化应用上普遍存在医疗业务信息化程度高，医院供应链等信息化应用缺乏，与供应商信息系统不对接......</p>--%>
                                <p>${news[0].content}</p>
                                <div class="det">
                                    <div class="date"><img src="img/date.png">
                                        <span>${news[0].time}</span></div><div class="look"><span>${news[0].lookTimes}</span><img src="img/look.png"></div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="bottom">
                        <ul>
                            <div class="col-sm-6">
                                <li>
                                    <a href="${pageContext.request.contextPath}/toNewsDetail.action?id=${news[1].id}">
                                       ${news[1].content}
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/toNewsDetail.action?id=${news[2].id}">
                                        ${news[2].content}
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/toNewsDetail.action?id=${news[3].id}">
                                        ${news[3].content}
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/toNewsDetail.action?id=${news[4].id}">
                                        ${news[4].content}
                                    </a>
                                </li>
                            </div>
                            <div class="col-sm-6">
                                <li>
                                    <a href="${pageContext.request.contextPath}/toNewsDetail.action?id=${news[5].id}">
                                        ${news[5].content}
                                    </a>
                                </li>
                     <%--           <li>
                                    <a href="${pageContext.request.contextPath}/toNewsDetail.action?id=${news[0].id}">
                                        医院SPD系统——医院耗材管理痛点难点解决方案
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        医院SPD系统——医院耗材管理痛点难点解决方案
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        医院SPD系统——医院耗材管理痛点难点解决方案
                                    </a>
                                </li>--%>
                            </div>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
        </div>
        <!-- 产品结束 -->
        <!-- case -->
        <div class="row case">
            <div class="title top">
                合作案例
                <p>Cooperation Case</p>
            </div>
            <div class="product col-sm-10 col-sm-offset-1">
                <div class="col-sm-4">
                    <img src="${cooperate.picture1}">
                </div>
                <div class="col-sm-4">
                    <img src="${cooperate.picture2}">
                </div>
                <div class="col-sm-4">
                    <img src="${cooperate.picture3}">
                </div>
                <div class="col-sm-4">
                    <img src="${cooperate.picture4}">
                </div>
                <div class="col-sm-4">
                    <img src="${cooperate.picture5}">
                </div>
                <div class="col-sm-4">
                    <img src="${cooperate.picture6}">
                </div>
            </div>
        </div>
        <!-- footer -->
        <div id="footer"></div>
        </div>
        <!-- /#wrapper -->
        <script src="./js/jquery.min.js"></script>
        <script type="text/javascript" src="./js/bootstrap.min.js"></script>
        <script src="./js/swiper.jquery.min.js"></script>
        <script type="text/javascript" src="./js/loader.js">
<%--        <!--<script>
            $('#naver').load('./naver.html');
            $('#footer').load('./footer.html');
        </script>-->--%>
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

        <script type="text/javascript">
            $(function() {
                //console.log($(window).height());
                $(".swiper-slide").height($(window).height());
                var mySwiper = new Swiper('.swiper-container', {
                    autoplay: 4000, //可选选项，自动滑动
                    effect: 'slide',
                    speed: 500,
                    pagination: '.swiper-pagination',
                    paginationClickable: '.swiper-pagination'
                });
                $(".wrap").css("visibility", "visible");
            });
        </script>

    </body>
</html>
