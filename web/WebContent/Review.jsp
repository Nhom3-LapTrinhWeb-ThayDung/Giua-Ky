<%@page import="java.sql.Date"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Review_Question"%>
<%@page import="dao.ReviewDAO"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<link rel="stylesheet" href="public/css/coder_update.css"
	type="text/css">
<link rel="stylesheet" href="css/multiChoice.css" type="text/css">
<link rel="stylesheet" href="css/coder_update.css" type="text/css">
<link rel="stylesheet" href="css/support_face.css" type="text/css">
<link rel="stylesheet" href="css/home.css" type="text/css">
<link rel="stylesheet" href="css/common.css" type="text/css">
<title>BÀI TEST IQ SỐ 1</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="js/overlay2.js"></script>
<script type="text/javascript" src="js/home.js"></script>
<script type="text/javascript" src="js/time_olympic.js"></script>
</head>

<body>
<%		if(session.getAttribute("user")==null || session.getAttribute("user_info")==null || request.getParameter("course_id")==null)
{
		response.sendRedirect("index.jsp");
}
else
{
%>
<div id="overlay-header">
        <div id="overlay-left"> </div>
        <div id="overlay-right"> </div>
    </div>
    <div id="wrapper">
		<style type="text/css">
.p-login .infor-forget {
	top: 55px;
}

.p-login .lnk-user .infor-forget {
	display: none;
}

.p-login .lnk-user:hover .infor-forget {
	display: block;
}

.p-login .lnk-user {
	padding-bottom: 3px;
}
</style>

		<%@ include file="//includes/header.jsp" %>
		<%
			ReviewDAO reviewDAO = new ReviewDAO();
			String course_id="";
			if(request.getParameter("course_id")!=null)
			{
				course_id=request.getParameter("course_id");
			}
	
		%>
		<!--end-header-->
		
			<div id="body">
			
			<form method="post" action="ReviewServlet" id ="form1">
				<div class="box-multiChoice">
					<h2 class="bm-title">ĐÁNH GIÁ GIẢNG VIÊN</h2>
					<p style="color: red; font-style: italic;" id="123"></p>
					<div class="question">
						<h3 class="h3q-title">ĐỀ BÀI</h3>
						<div class="Rating" style="float: left;">
                        <div >
                            <div >
                                <div >
                                    <div>
                                        <h3 >Hãy cho biết mức độ đồng ý của bạn bằng cách tô tròn vào ô thích hợp cho các tiêu chí từ 1 đến 5</h3>
                                    </div>
                                    <div ></div>
                                    <div >
                                        
                                        <div >
                                            <b >1</b>. <span >Hoàn toàn không đồng ý</span>&nbsp;
                                        
                                            <b >2</b>. <span>Không đồng ý</span>&nbsp;
                                        
                                            <b>3</b>. <span >Phân vân</span>&nbsp;
                                        
                                            <b >4</b>. <span >Đồng ý</span>&nbsp;
                                        
                                            <b >5</b>. <span >Hoàn toàn đồng ý</span>&nbsp;
                                        </div>
                                        <table class="questionTable" border="1">
                                            <thead>
                                                <tr>
                                                	<th>STT</th>
                                                    <th>Nội dung</th>
                                                    <!-- ko foreach: AnswerDTOs -->
                                                    <th >1</th>
                                                    
                                                    <th >2</th>
                                                    
                                                    <th >3</th>
                                                    
                                                    <th >4</th>
                                                    
                                                    <th >5</th>
                                                    <!-- /ko -->
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%for(Review_Question rq: reviewDAO.getListReview_Question()){ %>
                                                <tr>
                                                    <td style=" text-align: center;"><%=rq.getNumber() %></td>
                                                    <td ><%=rq.getQuestion() %></td>
                                                    <!-- ko foreach: AnswerDTOs -->
                                                    <td  style="width: 20px; text-align: center;">
                                                        <input name="ans[<%=rq.getNumber() %>]"  type="radio" value="1" ></td>
                                                    
                                                    <td style="width: 20px; text-align: center;">
                                                        <input name="ans[<%=rq.getNumber() %>]"  type="radio" value="2"></td>
                                                    <td style="width: 20px; text-align: center;">
                                                        <input name="ans[<%=rq.getNumber() %>]" type="radio" checked="checked" value="3"></td>
                                                    <td style="width: 20px; text-align: center;">
                                                        <input name="ans[<%=rq.getNumber() %>]" type="radio" value="4"></td>
                                                   	<td style="width: 20px; text-align: center;">
                                                        <input name="ans[<%=rq.getNumber() %>]" type="radio" value="5"></td>
                                                    <!-- /ko -->
                                                </tr>
                                                
                                                <%} %>
                                            </tbody>
                                        </table>
                                        
                                    </div>
                                
                                    <div>
                                        <h3 > Đề xuất của Anh/Chị để việc giảng dạy môn học này được tốt hơn:</h3>
                                        <textarea rows="3" cols="130" name="opinion"></textarea>
                                    </div>
                                    <input type="hidden" name="course_id" value="<%=course_id%>">
                                    
                                </div>
                            </div>
                        </div>
                        
                    </div>
					</div>

					
					<div id="ctl15_pnStart">
				<!-- nút nộp bài -->
            <div class="bm-test-again">					
                <input type="hidden" name="TokenCSRF_Thi_NopBai" value="A01BDD2E459BCE3EF490BC2F9FF779880D17A320D13D9E7BB97908E2942997EBEE17A055CBAEA4D61F0CB4C1EB87D52969CACF8D3107C2C4600139D3DD11ADB7">
                <a onclick="if ( ! FinishConfirmation()) return false;" id="ctl15_btnNopBai" class="bm-test-again-lnk" href="">
            		GỬI ĐÁNH GIÁ
                </a>
                <input type="submit" name="ctl15$btn" value="" id="ctl15_btn" style="border-width:0px;height:0px;width:0px;">
            </div>
            
            <div style="text-align: center;">
                <span id="ctl15_lblErr"></span>
                <span id="ctl15_LblIdlbt" style="display:none">7</span>
            </div>
        
			</div>
					<div id="line_alert"
						style="text-align: center; width: 100%; color: red; padding: 10px 0px 5px; overflow: hidden:">
					</div>
					<!-- Bạn có muốn nộp bài -->
					<div id="ctl15_UpdateProgress2" style="display: none;">
						<div class="bm-test-again">
							<img src="images/ajax-loader.gif" />
						</div>
					</div>
				</div>



				<!-- 60 request một lần -->
				<script type="text/javascript">
					$(function() {
						setInterval(function() {
							$.get("KeepAlive.ashx");
						}, 1000 * 10);
					});
				</script>

				<!-- Thông báo chính thức nộp bài -->
				<script type="text/javascript">
					function FinishConfirmation() {
						<%if(user_info.getQuyen()==2){%>
						if (confirm("Gửi đánh giá. Đồng ý?") == true) {
							$('#form1').submit();
							return true;
						} else {
							return false;
						}
						<%}else{%>
							alert('Chỉ học viên của khóa học mới được đánh giá!');
						<%}%>
					}
				</script>

				<script language="javascript" type="text/javascript">
					var i = 10;
					function time() {
						if (i >= 0) {
							document.getElementById("show").innerHTML = "" + i
									+ "";
							i--;
							setTimeout("time()", 1000);
						} else {
						}
					}
					window.onload = time;
				</script>
				<script type="text/javascript">
					window.onload = function() {
						document.onkeydown = function(e) {
							return (e.which || e.keyCode) != 116;
						};
					}
				</script>
				</form>
				
			</div>
		<!--end-body-->

		<a id="to_top" href="#"
			style="display: none; bottom: 20px; position: fixed; right: 20px; z-index: 9999;"
			rel="nofollow"> <img alt="Go to top!" src="Images/gototop.png" /></a>

		<div id="footer">
			<div id="footer-menu">
				<a href="index.jsp">TRANG CHỦ</a>&nbsp;|&nbsp;

			</div>
			<div class="footer-menu-new">
				<span class="title">ĐĂNG KÝ NHẬN EMAIL</span> <span class="font-des">Đăng
					ký để nhận tài liệu bổ ích từ StudyFunny.com</span> <span
					style="float: right; line-height: 39px;"> <input
					type="email" name="femail" id="femail"
					style="background: #d4e7e3 none repeat scroll 0 0; border: 1px solid #d4e7e3; border-radius: 5px; height: 25px; margin-right: 16px; padding: 1px 10px; width: 260px;">
					<input type="button" id="btnRegisterRevMail" value="ĐĂNG KÝ"
					style="height: 26px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 1px solid rgb(255, 255, 255); color: rgb(20, 146, 142); font-weight: bold; font-size: 12px; border-radius: 5px; width: 82px;">
				</span>
			</div>

			<div id="footer-bottom">

				<!--<a class="logo-gd-footer"></a>-->

				<p
					style="color: #FFFFFF; float: left; font-size: 14px; line-height: 16px; margin-left: 200px; margin-top: 4px; text-align: center; width: 640px">
					Sản phẩm của nhóm 3 - Lớp lập trình web sáng thứ 4 - thầy Đặng
					Thanh Dũng<br> Nhóm sinh viên thực hiện: <br> Nguyễn Tuấn
					Anh - Phạm Trung Dũng - Nguyễn Ngọc Hải - Nguyễn Văn Khánh<br>
					Điện thoại: 0962126964 (miễn phí) - Fanpage: <a target="_blank"
						style="color: #14928E ! important;"
						href="https://www.facebook.com/StudyFunny">StudyFunny</a> - Email:
					<a href="mailto:StudyFunny@gmail.com">StudyFunny@gmail.com</a><br>

				</p>

				<!--<a class="logo_Study-Funny" rel="nofollow"></a>-->

				<p class="gd-copyright"></p>
			</div>

		</div>


		<style>
.footer-menu-new span {
	color: #ffffff;
	font-size: 13px;
	line-height: 37px;
}

.title {
	font-weight: bold;
	margin-right: 20px;
}
</style>



	<style>
.footer-menu-new span {
	color: #ffffff;
	font-size: 13px;
	line-height: 37px;
}

.title {
	font-weight: bold;
	margin-right: 20px;
}
</style>
	<style>
.regis-info, .sp-forget-pass {
	position: relative;
	display: inline-block;
	padding-bottom: 10px;
}

.infor-forget {
	background: #ffffff none repeat scroll 0 0;
	border: 1px solid #acacac;
	color: #333333;
	display: none;
	font-size: 13px;
	line-height: 20px;
	padding: 10px;
	position: absolute;
	right: 0;
	top: 25px;
	width: 310px;
	z-index: 99;
}

.regis-info .infor-forget {
	bottom: 28px;
	right: -33px;
	top: auto;
}

.regis-info {
	padding-top: 5px;
}

.sp-forget-pass:hover .infor-forget {
	display: block;
}

.regis-info:hover .infor-forget {
	display: block;
}
</style>
<!--end-footer-->
		<div id="overlay-footer">
			<div id="overlay-footer-left"></div>
			<div id="overlay-footer-right"></div>
		</div>
		<!--end-overlay-footer-->
	</div>
	<!--end-wrapper-->
	<%} %>
</body>
</html>