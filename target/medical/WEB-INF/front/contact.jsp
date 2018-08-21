<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2018/1/5
  Time: 21:21
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
                <li class="selected">
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
                            <h4>地址及联系方式</h4>
                            <p>
                                    无论您遇到任何身体不适或者疾病疼痛，请联系我们。社区医疗团队永远是您坚实的后盾，我们将竭诚为您服务。
                                    患者可以来到我们社区医院接受诊疗，若您不方便，也可以
                                    通过以下的联系方式（电话或邮箱）联系我们的主诊医生进行病情咨询并预约诊疗时间。
                                    此外，您也可以在下方留下您遇到的问题和联系方式，我们将在第一时间与你取得联系。
                                    感谢您的支持与信任。
                            </p>
                            <table>
                                <tr>
                                    <td><span>地址</span>
                                        <p>
                                            广州市番禺区内环东路
                                        </p></td>
                                    <td><span>Doctor Martin</span>
                                        <p>
                                            (222) 987 65 43 2100 <br> (687) 123 45 67 8900
                                        </p></td>
                                    <td><span>Doctor Joey</span>
                                        <p>
                                            (123) 456 789 00 <br> (987) 654 321 00
                                        </p></td>
                                </tr>
                                <tr>
                                    <td><span>邮箱地址</span>
                                        <p>
                                            123456@Hospital.com <br> 123456@163.com
                                        </p></td>
                                    <td><span>Doctor Kitty</span>
                                        <p>
                                            (123) 456 789 00 <br> (987) 654 321 00
                                        </p></td>
                                    <td><span>Doctor Mike</span>
                                        <p>
                                            (222) 987 65 43 2100 <br> (687) 123 45 67 8900
                                        </p></td>
                                </tr>
                            </table>
                        </div>
                        <div>
                            <div>
                                <h4>联系我们</h4>
                                <form action="/front/consult/add.do">
                                    <label for="name">姓名:</label>
                                    <input type="text" id="name" name="name">
                                    <label for="phone">电话:</label>
                                    <input type="text" id="phone" name="phone">
                                    <label for="mail">邮箱:</label>
                                    <input type="text" id="mail" name="mail">
                                    <label for="msg">信息:</label>
                                    <textarea name="msg" id="msg" name="msg" cols="30" rows="10"></textarea>
                                    <span>
										<input type="submit" value="发送">
										</span>
                                </form>
                            </div>
                            <div>
                                <div>
                                    <h4>流行病</h4>

                                    <p>
                                        您可以通过点击下面的按钮，查看更多关于近期流行病的发病特征。也许能帮助您更好的描述病情，也能让我们能够更准确地对您的病情做出判断，以便我们尽快作出诊疗方案及联系你。
                                    </p>
                                    <span><a href="/front/page/programs.do">查看更多流行病特征</a></span>
                                </div>
                                <div>
                                    <h4>社区医疗常见服务</h4>
                                    <ul>
                                        <li>
                                            <p>
                                                提供急救服务。
                                            </p>
                                        </li>
                                        <li>
                                            <p>
                                                提供会诊、转诊服务。
                                            </p>
                                        </li>
                                        <li>
                                            <p>
                                                提供临终关怀服务。
                                            </p>
                                        </li>
                                        <li>
                                            <p>
                                                提供康复服务。
                                            </p>
                                        </li>
                                        <li>
                                            <p>
                                                提供精神卫生服务和心理卫生咨询服务。
                                            </p>
                                        </li>
                                        <li>
                                            <p>
                                                负责辖区内免疫接种和传染病预防与控制工作。
                                            </p>
                                        </li>
                                        <li>
                                            <p>
                                                提供家庭出诊、家庭护理、家庭病床等家庭卫生保健服务。
                                            </p>
                                        </li>
                                        <li>
                                            <p>
                                                提供妇女、儿童、老年人、慢性病人、残疾人等重点人群的保健服务。
                                            </p>
                                        </li>
                                    </ul>
                                    <span><a href="/front/page/services.do">查看更多服务</a></span>
                                </div>
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
</html>
