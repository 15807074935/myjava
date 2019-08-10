<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>拍拍首页</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/webroot/css/mycss.css"/>
    <script src="/endingwork_war_exploded/webroot/js/jquery-1.11.1.js"></script>
</head>
<body>
 <div class="wrapper">
 	<div class="top-nav-wrap">
 		<div class="center-nav">
 			<ul>
 				<li class="top-home top-li"></li>
 				<li class="top-li"><a href="/endingwork_war_exploded/"class="li-link">拍拍首页</a></li>
				 <li class="top-loacl top-li"></li>
 				<li class="top-li"><a href="#" class="init-local">江西</a>
                <div class="local-more">
                    <ul class=more-ul>
                    	<li class="more-li">
                    		<ul>
								<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    		</ul>
                    	</li>
                    	<li class="more-li">
                    		<ul>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    		</ul>
                    	</li>
                    	<li class="more-li">
                    		<ul>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    			<li class="more-li-li"><a href="#">江西</a></li>
                    		</ul>
                    	</li>
                    	<li class="more-li">
                    		<ul>
									<li class="more-li-li"><a href="#">江西</a></li>
									<li class="more-li-li"><a href="#">江西</a></li>
									<li class="more-li-li"><a href="#">江西</a></li>
									<li class="more-li-li"><a href="#">江西</a></li>
									<li class="more-li-li"><a href="#">江西</a></li>
									<li class="more-li-li"><a href="#">江西</a></li>
									<li class="more-li-li"><a href="#">江西</a></li>
                    		</ul>
                    	</li>
                    	<li class="more-li">
                    		<ul>
									<li class="more-li-li"><a href="#">江西</a></li>
									<li class="more-li-li"><a href="#">江西</a></li>
									<li class="more-li-li"><a href="#">江西</a></li>
									<li class="more-li-li"><a href="#">江西</a></li>
									<li class="more-li-li"><a href="#">江西</a></li>
									<li class="more-li-li"><a href="#">江西</a></li>
									<li class="more-li-li"><a href="#">江西</a></li>
                    		</ul>
						</li>
                    </ul>
                </div>
 				</li>
			 </ul>
 			<ul>
                <li class="right-li"><a href="/endingwork_war_exploded/trade/sellertrade" target="_blank" style="color:#f30213">商家中心</a></li>
 				<li class="right-li"><a href="/endingwork_war_exploded/sc/getsc" target="_blank">我的购物车</a></li>
 				<li class="right-li"><a href="/endingwork_war_exploded/html/login.jsp" target="_blank" style="color:#f30213" id="cookieuse2">免费注册</a></li>
 				<li class="right-li" id="userli"><a href="/endingwork_war_exploded/html/register.jsp" target="_blank" id="cookieuse1" style="display: block;">你好，请登陆</a>
                    <div id="usermes">
                        <ul class="innerul">
                            <li class="innerli"><a href="/endingwork_war_exploded/user/getoneuser" target="_blank">个人中心</a></li>
                            <li class="innerli"><a href="/endingwork_war_exploded/trade/usertrade" target="_blank">我的订单</a></li>
							<li class="innerli"><a id="userout">退出登录</a></li>
                        </ul>
                    </div>
                </li>
 			</ul>
 		</div>
 	</div>
    <div class="search-wrap">
    	<div class="search-content">
    		<div class="img-content">
				<a href="#"></a>
			</div>
    		<div class="main-content">
    			<div class="rec-content">
                    <from>
                        <input type="text" name="search" class="text-search">
                        <input type="submit" value="搜索" class="submit" id="obtn">
                    </from>
                    <ul class="load_more">
                    </ul>
				</div>
    			<div class="text-content">
					<a href="#" style="margin-left:0px;">OPPOR9s手机</a>
					<a href="#">小米平板</a>
					<a href="#">iphone6s64g</a>
					<a href="#">备件库</a>
					<a href="#">二手冰箱</a>
					<a href="#">奢侈品饰品</a>
					<a href="#">二手电视</a>
				</div>
    		</div>
    	</div>
	</div>
	<div class="mid-nav">
     <div class="mid-nav-wrap">
		<div class="left">
			<span>二手商品分类</span>
		</div>
		<div class="right">
			<a href="#">拍拍回收</a>
			<a href="#">拍拍夺宝</a>
			<a href="#">玩3c</a>
			<a href="#">下载APP享优惠</a>
			<a href="#">企业免押金租赁</a>
		</div>
	 </div>
    </div>
    <div class="content-wrap">
    	<div class="left">
			<ul>
				<li style="margin-top: 0px;">
					<dl class="d1">
						<dt>手机通讯<span style="margin-left:125px;"/>></dt>
						<dd style="margin-left: 10px;"><a href="/endingwork_war_exploded/ym/gettipym?goodstype=Apple&lx=phone" style="color: #666;" target="_blank">Apple</a></dd>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=Mi&lx=phone" style="color: #666;" target="_blank">小米</a></dd>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=Huawei&lx=phone" style="color: #666;" target="_blank">华为</a></dd>
						<dd style="margin-left: 10px;"><a href="/endingwork_war_exploded/ym/gettipym?goodstype=OPPO&lx=phone" style="color: #666;" target="_blank">OPPO</a></dd>
						<dd ><a href="/endingwork_war_exploded/ym/gettipym?goodstype=vivo&lx=phone" style="color: #666;" target="_blank">vivo</a></dd>
						<dd ><a href="/endingwork_war_exploded/ym/gettipym?goodstype=三星&lx=phone" style="color: #666;" target="_blank">三星</a></dd>
						<div>
							<div class="divleft">
								<div class="top">
									<dl>
										<dt>更多品牌</dt>
										<dd>美图</dd>
										<dd>魅族</dd>
										<dd>锤子</dd>
										<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=一加&lx=phone" style="color: #666;" target="_blank">一加</a></dd>
										<dd>乐视</dd>
										<dd>诺基亚</dd>
										<dd>努比亚</dd>
										<dd>360</dd>
										<dd>AGM</dd>
										<dd>海信</dd>
									</dl>
									<hr style="width:380px;size:1px;color:#666;margin-left:40px;margin-top: 78px;">
								</div>
								<div class="mid">
									<dl>
										<dt>热门单品</dt>
										<dd>苹果7</dd>
										<dd>苹果8</dd>
										<dd>小米9</dd>
										<dd>红魔3</dd>
										<dd>华为P9</dd>
									</dl>
									<hr style="width:380px;size:1px;color:#666;margin-left:40px;margin-top: 105px;">
								</div>
								<div class="btm">
									<dl>
										<dt>实惠价格</dt>
										<dd>0-599</dd>
										<dd>600-1099</dd>
										<dd>1100-1499</dd>
										<dd>1500-1999</dd>
										<dd>2000-2599</dd>
										<dd>2600-2999</dd>
										<dd>3000-3599</dd>
										<dd>3600-4099</dd>
									</dl>
								</div>
							</div>
							<div class="divright">
								<a href="/endingwork_war_exploded/ym/gettipym?goodstype=Apple&lx=phone" style="color: #666;" target="_blank"><img src="<%=request.getContextPath() %>/webroot/images/phonex.png"/></a>
								<a href="/endingwork_war_exploded/ym/gettipym?goodstype=Apple&lx=phone" style="color: #666;" target="_blank"><img src="<%=request.getContextPath() %>/webroot/images/phone8.png"/></a>
							</div>
						</div>
					</dl>
				</li>
				<li>
					<dl class="d2">
					<dt>学习用品<span style="margin-left:125px;"/>></dt>
					<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=书籍&lx=study" style="color: #666;" target="_blank">书籍</a></dd>
					<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=文具&lx=study" style="color: #666;" target="_blank">文具</a></dd>
					<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=学霸笔记&lx=study" style="color: #666;" target="_blank">学霸笔记</a></dd>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=学习机&lx=study" style="color: #666;" target="_blank">学习机</a></dd>
					<div>
							<div class="divleft">
									<div class="top">
										<dl>
											<dt>更多分类</dt>
											<dd>考研资料</dd>
											<dd>等级考试</dd>
											<dd>教辅</dd>
										</dl>
										<hr style="width:380px;size:1px;background-color:#d8d6d0;margin-left:40px;margin-top: 78px;">
									</div>
									<div class="mid">
										<dl>
											<dt>热门单品</dt>
											<dd>三体</dd>
											<dd>Java编程思想</dd>
											<dd>effective Java</dd>
										</dl>
										<hr style="width:380px;size:1px;color:#d8d6d0;margin-left:40px;margin-top: 105px;">
									</div>
									<div class="btm">
										<dl>
											<dt>实惠价格</dt>
											<dd>0-59</dd>
											<dd>60-109</dd>
											<dd>110-169</dd>
											<dd>170-209</dd>
											<dd>210-269</dd>
											<dd>270-329</dd>
										</dl>
									</div>
								</div>
								<div class="divright">
									<img src="<%=request.getContextPath() %>/webroot/images/book1.jpg"/>
									<img src="<%=request.getContextPath() %>/webroot/images/book2.jpg"/>
								</div>
					</div>
				</dl>
			    </li>
				<li>
					<dl class="d3">
                        <dt>服饰<span style="margin-left:125px;"/>></dt>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=男装&lx=clothes" style="color: #666;" target="_blank">男装</a></dd>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=女装&lx=clothes" style="color: #666;" target="_blank">女装</a></dd>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=童装&lx=clothes" style="color: #666;" target="_blank">童装</a></dd>
						<dd>其它</dd>
						<div>
								<div class="divleft">
										<div class="top">
											<dl>
												<dt>更多分类</dt>
												<dd>大码男装</dd>
												<dd>大码女装</dd>
											</dl>
											<hr style="width:380px;size:1px;background-color:#d8d6d0;margin-left:40px;margin-top: 78px;">
										</div>
										<div class="mid">
											<dl>
												<dt>热门品牌</dt>
												<dd>森马</dd>
												<dd>优衣库</dd>
												<dd>李宁</dd>
												<dd>安踏</dd>
											</dl>
											<hr style="width:380px;size:1px;color:#d8d6d0;margin-left:40px;margin-top: 105px;">
										</div>
										<div class="btm">
											<dl>
												<dt>实惠价格</dt>
												<dd>0-59</dd>
												<dd>60-109</dd>
												<dd>110-169</dd>
												<dd>170-209</dd>
												<dd>210-269</dd>
												<dd>270-329</dd>
											</dl>
										</div>
									</div>
									<div class="divright">
										<img src="<%=request.getContextPath() %>/webroot/images/c1.jpg"/>
										<img src="<%=request.getContextPath() %>/webroot/images/c2.jpg"/>
									</div>	
						</div>
					</dl>
				</li>
				<li>
					<dl class="d4">
                        <dt>数码影音<span style="margin-left:125px;"/>></dt>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=耳机&lx=sm" style="color: #666;" target="_blank">耳机</a></dd>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=音响&lx=sm" style="color: #666;" target="_blank">音响</a></dd>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=无人机&lx=sm" style="color: #666;" target="_blank">无人机</a></dd>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=摄影摄像&lx=sm" style="color: #666;" target="_blank">摄影摄像</a></dd>
						<div>
								<div class="divleft">
										<div class="top">
											<dl>
												<dt>热门单品</dt>
												<dd>佳能5D</dd>
												<dd>索尼6000L</dd>
											</dl>
											<hr style="width:380px;size:1px;background-color:#d8d6d0;margin-left:40px;margin-top: 78px;">
										</div>
										<div class="mid">
											<dl>
												<dt>精选品牌</dt>
												<dd>Beats</dd>
												<dd>JBL</dd>
												<dd>先锋</dd>
												<dd>漫步者</dd>
												<dd>AKG</dd>
												<dd>Bose</dd>
												<dd>苹果</dd>
												<dd>尼康</dd>
											</dl>
											<hr style="width:380px;size:1px;color:#d8d6d0;margin-left:40px;margin-top: 105px;">
										</div>
										<div class="btm">
											<dl>
												<dt>实惠价格</dt>
												<dd>0-599</dd>
												<dd>600-1099</dd>
												<dd>1100-1499</dd>
												<dd>1500-1999</dd>
												<dd>2000-2599</dd>
												<dd>2600-2999</dd>
												<dd>3000-3599</dd>
												<dd>3600-4099</dd>
											</dl>
										</div>
									</div>
									<div class="divright">
										<img src="<%=request.getContextPath() %>/webroot/images/5912e0d9N2b796ddc.jpg"/>
										<img src="<%=request.getContextPath() %>/webroot/images/5912ebc8Ndc79381c.png"/>
									</div>
						</div>
					</dl>
				</li>
				<li>
					<dl class="d5">
						<dt>二手电脑<span style="margin-left:125px;"/>></dt>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=华硕&lx=computer" style="color: #666;" target="_blank">华硕</a></dd>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=苹果&lx=computer" style="color: #666;" target="_blank">苹果</a></dd>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=惠普&lx=computer" style="color: #666;" target="_blank">惠普</a></dd>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=神州&lx=computer" style="color: #666;" target="_blank">神州</a></dd>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=戴尔&lx=computer" style="color: #666;" target="_blank">戴尔</a></dd>
						<dd><a href="/endingwork_war_exploded/ym/gettipym?goodstype=外星人&lx=computer" style="color: #666;" target="_blank">外星人</a></dd>
						<div>
								<div class="divleft">
										<div class="top">
											<dl>
												<dt>更多品牌</dt>
												<dd>联想</dd>
												<dd>小米</dd>
												<dd>华为</dd>
												<dd>微星</dd>
											</dl>
											<hr style="width:380px;size:1px;background-color:#d8d6d0;margin-left:40px;margin-top: 78px;">
										</div>
										<div class="mid">
											<dl>
												<dt>热门单品</dt>
												<dd>顽石5</dd>
												<dd>灵越2</dd>
											</dl>
											<hr style="width:380px;size:1px;color:#d8d6d0;margin-left:40px;margin-top: 105px;">
										</div>
										<div class="btm">
											<dl>
												<dt>实惠价格</dt>
												<dd>0-599</dd>
												<dd>600-1099</dd>
												<dd>1100-1499</dd>
												<dd>1500-1999</dd>
												<dd>2000-2599</dd>
												<dd>2600-2999</dd>
												<dd>3000-3599</dd>
												<dd>3600-4099</dd>
											</dl>
										</div>
									</div>
									<div class="divright">
										<a href="/endingwork_war_exploded/ym/gettipym?goodstype=戴尔&lx=computer" style="color: #666;" target="_blank"><img src="<%=request.getContextPath() %>/webroot/images/dell.jpg"/></a>
										<a href="/endingwork_war_exploded/ym/gettipym?goodstype=戴尔&lx=computer" style="color: #666;" target="_blank"><img src="<%=request.getContextPath() %>/webroot/images/dellgame.jpg"/></a>
									</div>
						</div>
					</dl>
				</li>
			</ul>
		</div>
    	<div class="center">
			<div class="slider">
				<ul class="images">
						<li><a href="#"><img src="<%=request.getContextPath() %>/webroot/images/center1.jpg"></a></li>
						<li><a href="#"><img src="<%=request.getContextPath() %>/webroot/images/center2.jpg"></a></li>
						<li><a href="#"><img src="<%=request.getContextPath() %>/webroot/images/center3.png"></a></li>
						<li><a href="#"><img src="<%=request.getContextPath() %>/webroot/images/center4.jpg"></a></li>
						<li><a href="#"><img src="<%=request.getContextPath() %>/webroot/images/center5.png"></a></li>
						<li><a href="#"><img src="<%=request.getContextPath() %>/webroot/images/center1.jpg"></a></li>
				</ul>
				<ul class="yuan">
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
				</ul>
			</div>
			<div class="images">
			<img src="<%=request.getContextPath() %>/webroot/images/btmimages1.jpg" style="margin-top: 10px;margin-right: 5px;">
			<img src="<%=request.getContextPath() %>/webroot/images/btmimages2.jpg">
			</div>
		</div>
    	<div class="right">
			<div class="right-top">
				<div class="tip">
					<span class="t1" style="margin-left: 65px">促销</span>
					<span class="t2" style="border-top: 3px solid transparent;">公告</span>
				</div>
				<div class="content1">
					<a class="c1" href="#">iPhone X 256G 低至5155</a>
					<a class="c2" href="#">冰洗大家电低至5折</a>
					<a class="c3" href="#">95新iPhone 7低至3149，机惠不容错过</a>
				</div>
				<div class="content2" style="display: none">
					<a class="c1" href="#">京东企业免押金租赁，你值得拥有</a>
					<a class="c2" href="#">二手机品质分级你真的懂吗？</a>
					<a class="c3" href="#">买二手数码时需要关注些什么?</a>
				</div>
			</div>
			<div class="right-btm">
				<img src="<%=request.getContextPath() %>/webroot/images/zb.jpg">
				<img src="<%=request.getContextPath() %>/webroot/images/qy.png" style="margin-top: 5px">
			</div>
		</div>
    </div>
    <div class="cheap-wrap"></div>
</div>
<script type="text/javascript" src="<%=request.getContextPath() %>/webroot/js/myjs.js"></script>
</body>
</html>