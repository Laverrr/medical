<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2018/1/5
  Time: 21:22
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
                <li>
                    <a href="/front/page/programs.do">流行病</a>
                </li>
                <li>
                    <a href="/front/page/news.do">最新资讯</a>
                </li>
                <li>
                    <a href="/front/page/services.do">医疗服务</a>
                </li>
                <li class="selected">
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
            <div class="contact">
                <div>
                    <div>
                        <div>
                            <h4>医学常识</h4>
                            <ul>
                                <c:forEach items="${pageInfo.list}" var="nous">
                                    <h3>${nous.id}:${nous.name}</h3>
                                    <li>
                                        <p>
                                                ${nous.content}
                                        </p>
                                    </li>
                                </c:forEach>
                            </ul>
                            <div>
                                <nav aria-label="Page navigation">
                                    <ul class="pagination">
                                        <c:if test="${pageInfo.hasPreviousPage}">
                                            <li>
                                                <a aria-hidden="true"
                                                   href="/front/page/blog.do?pageNum=${pageInfo.prePage}">&laquo;</a>
                                            </li>
                                        </c:if>

                                        <c:forEach begin="1" end="${pageInfo.pages}" var="pageIndex" step="1">
                                            <li <c:if test="${pageInfo.pageNum==pageIndex}">class="active"</c:if>><a
                                                    href="/front/page/blog.do?pageNum=${pageIndex}">${pageIndex}</a>
                                            </li>
                                        </c:forEach>
                                        <c:if test="${pageInfo.hasNextPage}">
                                            <li>
                                                <a aria-hidden="true"
                                                   href="/front/page/blog.do?pageNum=${pageInfo.nextPage}">&raquo;</a>
                                            </li>
                                        </c:if>

                                    </ul>
                                </nav>
                            </div>
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
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</html>
