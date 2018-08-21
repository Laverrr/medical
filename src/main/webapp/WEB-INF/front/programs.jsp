<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2018/1/5
  Time: 21:24
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
                <li>
                    <a href="/front/page/index.do">首页</a>
                </li>
                <li class="selected">
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
            <div class="programs">
                <div>
                    <div>
                        <div>
                            <h4>流行病</h4>
                            <h3>（可以感染众多人口的疾病）</h3>
                            <p>
                                流行病指可以感染众多人口的传染病。能在较短的时间内广泛蔓延的传染病，如流行性感冒、脑膜炎、霍乱等。广泛流传的社会弊病。流行病可以只是在某地区发生，可以是全球性的大流行。欧洲语言中，辞源均来自希腊语。当某一疾病之观察值超过预期值时，就称之为流行。而全球流行其定义为某一疾病之传染已经跨过洲与洲的界限时称之。
                            </p>
                            <ul>
                                <li>
                                    <a href="/front/disease/diseases.do?parentId=1&Id=1">春季流行病</a>
                                </li>
                                <li>
                                    <a href="/front/disease/diseases.do?parentId=2&Id=2">夏季流行病</a>
                                </li>
                                <li>
                                    <a href="/front/disease/diseases.do?parentId=3&Id=3">秋季流行病</a>
                                </li>
                                <li>
                                    <a href="/front/disease/diseases.do?parentId=4&Id=4">冬季流行病</a>
                                </li>
                            </ul>
                        </div>
                        <div class="featured">
                            <img src="<%=basePath %>images/sharing.jpg" alt="">
                            <p>
                                &nbsp&nbsp;如果你发现有以上流行病的患病特征，请点击下面的按钮联系我们，我们将竭诚为您治疗。
                            </p>
                            <span><a href="/front/page/contact.do"> 联系 我们</a></span>
                        </div>
                        <div class="section">
                            <h4>常见流行病</h4>
                            <ul>
                                <li>
                                    <h3>春季</h3>
                                    <p>
                                        一、急性肠道传染病（痢疾）二、伤风感冒 三、流行性乙脑 四、流行性结膜炎（红眼病）五、传染性肝炎
                                    </p>
                                </li>
                                <li>
                                    <h3>秋季</h3>
                                    <p>
                                        一、秋燥症 二、呼吸道感染(支气管哮喘) 三、慢性咽炎 四、心脑血管疾病 五、流感
                                    </p>
                                </li>
                                <li>
                                    <h3>夏季</h3>
                                    <p>
                                        一、腹泻 二、中暑 三、热伤风 四、皮肤病 五、肠炎  六、食物中毒
                                    </p>
                                </li>
                                <li>
                                    <h3>冬季</h3>
                                    <p>
                                        一、流感和感冒 二、上呼吸道疾病 三、胃肠道疾病 四、皮肤病 五、口角炎 六、心肌梗死
                                    </p>
                                </li>

                            </ul>
                        </div>
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
