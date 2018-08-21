<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2018/1/5
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                            <h4>${disease.name}</h4>
                            <p>
                                ${disease.des}
                            </p>
                            <ul>
                                <c:forEach items="${diseases}" var="disease">
                                    <li>
                                        <a href="/front/disease/diseases.do?parentId=${disease.parentId}&Id=${disease.id}">${disease.name}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <c:if test="${disease.parentId!=0}">
                            <div class="section">
                                <h4>预防措施</h4>
                                <h5>不同的传染病有不同的治疗方法，但基本的预防措施是相通的，我们只要注意以下几点，就能有效地减少疾病的发生和传播。</h5>
                                <p>
                                    1、 按时注射预防疫苗<br>
                                    2、每天开窗通风，保持室内空气新鲜，尤其寝室、电脑室、书房等；<br>
                                    3、 不到人口密集、空气污染的场所去，如歌舞厅、影院、录像厅；<br>
                                    4、 勤洗手，并用流动水彻底清洗干净，包括不用污浊的毛巾擦手；<br>
                                    5、 到医院就诊最好戴口罩，回家后洗手，避免交叉感染；<br>
                                    6、 注意不要过度疲劳，防止感冒，以免抗病力下降；<br>
                                    7、 合理膳食，增加营养；<br>
                                    8、 发热或有其它不适及时就医；<br>
                                    9、 避免接触传染病人，尽量不到传染病流行疫区；<br>
                                    10、 传染病人用过的物品及房间适当消毒，如日光下晾晒衣被，房内门把手、桌面、地面用含氯消毒剂喷洒、擦拭。<br>
                                </p>
                            </div>
                        </c:if>
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
