<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>

   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title></title> 
   <link rel="stylesheet" href="<%=request.getContextPath()%>/view/css/Main.css">	
   <link rel="stylesheet" href="<%=request.getContextPath()%>/view/css/frame.css">
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyBHMTbb3PSi-VRIRBK03vKE3nqMXEqwkk0" ></script>
   <script>
      $(function(){
   		$('.mainImg').hover(
   				function(){$('#Double').addClass('buttonColor')},
   				function(){$('#Double').removeClass('buttonColor')}		
   		)
      });
   </script>
</head>
<body>
	<div class="wrap">                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
	<div class="frame">
			<!-- header??????-?????????,???????????? ?????? ?????? -->
			 <jsp:include page="../../module/header.jsp" flush="false"/>
			 <!-- ????????? -->
	      	 <jsp:include page="../../module/menu.jsp" flush="false"/>
    </div>   
    
    <!-- main ?????? ?????? -->
	<div class="mainView">
	   	<div class="mainImg">
	   		<img src="<%=request.getContextPath()%>/view/imgs/dog2.jpg" width="100%" height="800px" /> 
   		</div>
	   	<div class="mainImgText">
	   		<h1 class="mainContent">???????????? ??? ????????? ??????</h1> 
	   		<h1 class="mainContent2">????????? ??????</h1>
	   	</div>
		<div class="mainImgContainer"></div>
   		
   		<div class="firstMainText">
	   		<div class="firstMainTextCenter">
		   		<span id="top_title">SeaDog</span> ??? <br>
		   		<h1>?????? ?????????</h1>
				<img src="<%=request.getContextPath()%>/view/imgs/arrow.png" /><br>
					??????????????? ??????????????????!
		   		<br/> ???????????? ??????
		   		<br/> ??????????????? ???????????? ??????????????????
		   		<br/> ???????????? ???????????? ??????
	   		</div>
   		</div> 
 	
		<div class="roomFirst">  	
		   	<div class="middleImg">
				<div class="roomlink"><a href="<%= request.getContextPath()%>/onlyView/introRoom.do">??????</a></div>
				<img src="<%=request.getContextPath()%>/view/imgs/arrow.png" /><br>
		  		<div class="roomName"><span>?????????</span></div><div class="roomName"><span>?????????</span></div><div class="roomName"><span>????????????</span><br/></div>
		   		<div class="roomImgContainer">
			   		<img src="<%=request.getContextPath()%>/view/imgs/room1in.jpg" width="350px" height="350px" class="roomImg" />
			   	</div> 
			   	<div class="roomImgContainer"> 	 
			   		<img src="<%=request.getContextPath()%>/view/imgs/room2in.jpg" width="350px" height="350px" class="roomImg" />
			   	</div>  
			   	<div class="roomImgContainer">	 
			   		<img src="<%=request.getContextPath()%>/view/imgs/room3in.jpg" width="350px" height="350px" class="roomImg" />
			   	</div>	
		   </div> 
	 	</div>  	

	   	<div class="faImgContainer">
			<div class="falink">
				<span id="top_title">SeaDog</span> ??? <br>
		   		<h1>????????? ??????</h1>
		   		<img src="<%=request.getContextPath()%>/view/imgs/arrow.png" /><br>
		   	</div>
	  		<div class="fa">?????????<span class="eng"> WaitingRoom</span class="eng"></div><div class="fa">?????? <span class="eng"> Education</span></div><div class="fa">?????? <span class="eng">Park</span></div><div class="fa">?????? <span class="eng">Spa</span><br/></div>
		   		<img src="<%=request.getContextPath()%>/view/imgs/main2-4.jpg" width="280px" height="280px" class="faImg" />
		   		<img src="<%=request.getContextPath()%>/view/imgs/main2-2.jpg" width="280px" height="280px" class="faImg" />
		   		<img src="<%=request.getContextPath()%>/view/imgs/main2-3.jpg" width="280px" height="280px" class="faImg" />
		   		<img src="<%=request.getContextPath()%>/view/imgs/main2-1.jpg" width="280px" height="280px" class="faImg" />
	   	</div>
	</div>
	
		<!--topbtn ?????? -->
		<jsp:include page="../../module/top.jsp" flush="false"/>
		
		<div class="frame">
		    <!--footer ?????? -->
			<jsp:include page="../../module/footer.jsp" flush="false"/>
	    </div>	
	</div> 
</body>
</html>