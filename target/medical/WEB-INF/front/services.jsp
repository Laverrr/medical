<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2018/1/5
  Time: 21:23
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
                <li class="selected">
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
            <div class="services">
                <div>
                    <div>
                        <div>
                            <h4>社区医疗服务</h4>
                            <h3>下列为本社区医疗站点提供的基本服务：</h3>
                            <ul>
                                <li>
                                    <p>
                                        开展社区卫生状况调查，进行社区诊断，向社区管理部门提出改进社区公共卫生的建议及规划，对社区爱国卫生工作予以技术指导。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        有针对性地开展慢性非传染性疾病、地方病与寄生虫病的健康指导、行为干预和筛查，以及高危人群监测和规范管理工作。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        负责辖区内免疫接种和传染病预防与控制工作。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        运用适宜的中西医药及技术，开展一般常见病、多发病的诊疗。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        提供急救服务。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        提供家庭出诊、家庭护理、家庭病床等家庭卫生保健服务。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        提供会诊、转诊服务。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        提供精神卫生服务和心理卫生咨询服务。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        提供妇女、儿童、老年人、慢性病人、残疾人等重点人群的保健服务。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        提供康复服务。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        开展健康教育与健康促进工作。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        开展计划生育咨询、宣传并提供适宜技术服务。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        提供个人与家庭连续性的健康管理服务。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        负责辖区内社区卫生服务信息资料的收集、整理、统计、分析与上报。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        在社区建设中，协助社区管理部门不断拓展社区服务，繁荣社区文化，美化社区环境，共同营造健康向上、文明和谐的社区氛围。
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        根据社区卫生服务功能和社区居民需求，提供其它适宜的基层卫生服务。
                                    </p>
                                </li>

                            </ul>

                            <p>
                                如果您需求其他特别的服务，欢迎<a href="/front/page/contact.do">联系我们。</a>
                            </p>
                        </div>
                        <div>
                            <div>
                                <h3>什么是社区卫生服务</h3>
                                <img src="<%=basePath %>images/services2.jpg" alt="">
                                <p>
                                    社区卫生服务（community health service，CHS）是社区建设的重要组成部分，是在政府领导、社区参与、上级卫生机构指导下，以基层卫生机构为主体，全科医师为骨干，合理使用社区资源和适宜技术，以人的健康为中心、家庭为单位、社区为范围、需求为导向，以妇女、儿童、老年人、慢性病人、残疾人、贫困居民等为服务重点，以解决社区主要卫生问题、满足基本卫生服务需求为目的，融预防、医疗、保健、康复、健康教育、计划生育技术服务功能等为一体的，有效、经济、方便、综合、连续的基层卫生服务。
                                </p>
                                <span><a href="/front/page/contact.do">联系我们获取更多服务</a></span>
                            </div>
                            <div>
                                <h4>基本原则</h4>
                                <ul>
                                    <li>
                                        <p>
                                            坚持预防为主，综合服务，健康促进。
                                        </p>
                                    </li>
                                    <li>
                                        <p>
                                            坚持政府领导，部门协同，社会参与，多方筹资，公有制为主导。
                                        </p>
                                    </li>
                                    <li>
                                        <p>
                                            坚持社区卫生服务与社区发展相结合。保证社区卫生服务可持续发展。
                                        </p>
                                    </li>
                                    <li>
                                        <p>
                                            坚持实事求是。积极稳妥，循序渐进，因地制宜，分类指导，以点带面，逐步完善。
                                        </p>
                                    </li>
                                    <li>
                                        <p>
                                            坚持为人民服务的宗旨。依据社区人群的需求，正确处理社会效益和经济效益的关系，把社会效益放在首位。
                                        </p>
                                    </li>
                                    <li>
                                        <p>
                                            坚持以区域卫生规划为指导。引进竞争机制，合理配置和充分利用现有卫生资源；努力提高卫生服务的可及性，做到低成本 、广覆盖、高效益，方便群众。
                                        </p>
                                    </li>
                                </ul>
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
