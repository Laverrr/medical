<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2018/1/5
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>社区医疗网站</title>
    <link rel="stylesheet" href="<%=basePath %>css/front-style.css" type="text/css">
</head>
<body>
<div class="background">
    <div class="page">
        <a href="index.html" id="logo">社区医疗网</a>
        <div class="sidebar">
            <ul>
                <li class="selected">
                    <a href="/front/page/index.do">首页</a>
                </li>
                <li>
                    <a href="/front/page/programs.do">流行病</a>
                </li>
                <li>
                    <a href="/front/page/news.do">最新资讯</a>
                </li>
                <li>
                    <a href="/front/page/services.do">医疗服务</a>
                </li>
                <li>
                    <a href="/front/page/blog.do">医学常识</a>
                </li>
                <li>
                    <a href="/front/page/contact.do">联系我们</a>
                </li>
            </ul>
            <div class="first">
                <div>
                    <h3>Doctor Martin（院长）</h3>
                    <img src="<%=basePath %>images/man.jpg" alt="">
                    <p>
                        毕业于广东药科大学并获医学博士学位，2012起在内科从事临床工作，完成了内科所有专科病房、急诊、重症监护室的轮转.
                    </p>
                </div>
            </div>
            <div>
                <div>
                    <h3>医疗团队</h3>
                    <img src="<%=basePath %>images/doctors-and-nurse.jpg" alt="">
                    <p>
                        本院医生均在大型三甲医院从事过多年临床接诊，均有丰富的医疗经验及职业操守。护理团队均拥有多年本岗位工作经验、相关资质及多年临床医疗从业经验，其中坚力量都是医药大学毕业，均有医生从业经历，对医疗疾病的原理及病理均有深度了解。多年来在团队不断努力下，一直不懈地服务社区居民，以解决居民看病难，看病贵，病难治为总体目标。
                    </p>
                </div>
            </div>
        </div>
        <div class="body">
            <div class="home">
                <div class="featured">
                    <img src="<%=basePath %>images/doctors.jpg" alt="">
                    <div>
                        <p>
                            专业的医疗团队，24小时守护着您和您家人的健康。
                            <br>
                            社区医疗为你提供全心全意的医疗服务，为您解决治病难，治病贵，病难治的问题。
                        </p>
                    </div>
                </div>
                <div>
                    <div>
                        <div>
                            <h4>流行病</h4>
                            <h3>流行病知识普及</h3>
                            <p>
                                社区医疗中心会不定期针对近期突发的流行病，组织线下流行病的宣传与防治工作。<a href="/front/page/programs.do"><img src="<%=basePath %>images/programs.jpg" alt=""></a>您也可以通过点击下面的按钮获取更多相关流行病的患病特征与防治措施。
                            </p>
                            <span><a href="/front/page/programs.do">查看更多流行病知识</a></span>
                        </div>
                        <div>
                            <h4>医学常识</h4>
                            <h2>下面的医学常识你知道多少？</h2>
                            <ul>
                                <li>正常心率：每分钟75次</li>
                                <li>不要给乳儿吃蜂蜜</li>
                                <li>中国式的坐月子是不必要而且有害的</li>
                                <li>乙肝和艾滋病没那么可怕</li>
                                <li>不存在有效的减肥药物</li>
                                <li>打耳洞一定要慎重</li>
                                <li>被咬伤后注射狂犬疫苗非常重要</li>
                                <li>避孕尽量不要靠紧急避孕药</li>
                                <li>豆浆并不能代替牛奶</li>
                            </ul>
                            <span><a href="programs.html">查看更多医学常识</a></span>
                        </div>
                    </div>
                    <div>
                        <h4>社区医疗常见服务</h4>
                        <a href="/front/page/services.do"><img src="<%=basePath %>images/services.jpg" alt=""></a>
                        <ul>
                            <li>
                                <a href="/front/page/services.do">提供急救服务。</a>
                            </li>
                            <li>
                                <a href="/front/page/services.do"> 提供康复服务。</a>
                            </li>
                            <li>
                                <a href="/front/page/services.do">提供临终关怀服务。</a>
                            </li>
                            <li>
                                <a href="/front/page/services.do">提供会诊、转诊服务。</a>
                            </li>
                            <li>
                                <a href="/front/page/services.do">提供个人与家庭连续性的健康管理服务。</a>
                            </li>
                            <li>
                                <a href="/front/page/services.do">提供精神卫生服务和心理卫生咨询服务。</a>
                            </li>
                            <li>
                                <a href="/front/page/services.do">负责辖区内免疫接种和传染病预防与控制工作。</a>
                            </li>
                            <li>
                                <a href="/front/page/services.do">开展计划生育咨询、宣传并提供适宜技术服务。</a>
                            </li>
                            <li>
                                <a href="/front/page/services.do">提供家庭出诊、家庭护理、家庭病床等家庭卫生保健服务。</a>
                            </li>
                            <li>
                                <a href="/front/page/services.do">提供妇女、儿童、老年人、慢性病人、残疾人等重点人群的保健服务。</a>
                            </li>
                        </ul>
                        <span><a href="/front/page/services.do">查看更多服务</a></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">


        </div>
    </div>
</div>
</body>
</html>
