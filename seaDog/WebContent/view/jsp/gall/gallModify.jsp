<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title></title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/css/frame.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/css/gallModify.css">
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script>
      $(function(){
    	  var buttonIdSelector;
    	  var buttonId;
    	  var divSrcSelector;
    	  var divId;
    	  var divIdSelector;
    	  var oldfileNameSelector;
    	  var delimg_no;
    	  var variable;
    	  var deleteImgNo;
			$("input[type=file]").on('change',function(e){
				buttonId = $(this).attr('id'); 
				buttonIdSelector = "#"+buttonId;
				variable=buttonId.substring(buttonId.length-1,buttonId.length);
				
				divSrcSelector = "#imgs"+variable+" img";
				divSpanSelector = "#imgs"+variable+" span";
				divId = "imgs"+variable;
				divIdSelector = "#"+divId;
				oldfileNameSelector="#oldfileName"+variable;				
				hidden_idName="delete"+variable;
				deleteImgNo="#deleteImgNo"+variable;
				
				
				if($(divIdSelector).attr("id")!=null){
					var files = e.target.files[0];
					updateURL(files)
					$(oldfileNameSelector).empty();
					if($(deleteImgNo).attr("disabled")=="disabled"){
						$(deleteImgNo).attr("disabled",false)				
					}
				}else{
					$(divIdSelector).remove();
					 var files = e.target.files[0];	
					readURL(files);
				} 
			});
			
			function updateURL(f){
				var fileName = f.name;
				fileName= fileName.replace(/(\s*)/g, "");
				if(fileName.length>10){
					fileName=fileName.substr(0,6)+"...";
				}
				  if(f.type.match('image.*')){
					   var reader = new FileReader();
					   reader.onload = function (e){
						   $(divSrcSelector).attr('src',e.target.result);
						   $(divSpanSelector).html(fileName);
					   }
				  }
			  reader.readAsDataURL(f);  
			}
		   function readURL(f){
				   var fileName = f.name;
				   fileName= fileName.replace(/(\s*)/g, "");
				   if(fileName.length>10){
					   fileName =fileName.str(0,6)+"...";
				   }
				   var str = '<div id="'+divId+'" style="display: inline-flex; padding:10px;"><li>';
				   str += '<span>'+fileName+'</span><br>';
				   if(f.type.match('image.*')){
					   var reader = new FileReader();
					   reader.onload = function (e){
						   str += '<img src="'+e.target.result+'" title="'+f.name+'" width=200 height=200 />';
						   str += '</li></div>;'
						   $(str).appendTo('#imgchange');
					   }
					   reader.readAsDataURL(f);
				   }else{
					   str += '<img src="http://placehold.it/250x200" title="'+f.name+'" width=200 height=200 />';
					   $(str).appendTo('#imgchange');
				   }
		   } 
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
	 <div id="content">
 
		   <form name="gallModifyForm" id="gallModifyForm" method="post" action="gallModify.do" enctype="multipart/form-data">
		   		<div id="hidden" >
			   		<input type="hidden" name="no" value="${modifyForm.gall_no}" />
			   		<input type="hidden" name="gPageNo" value="${gPageNo}" />
			   		<input type="hidden" name="deleteImgNo1" id="deleteImgNo1" value="${modifyForm.gallData.gallImgDto[0].img_no}" disabled="disabled" />
			   		<input type="hidden" name="deleteImgNo2" id="deleteImgNo2" value="${modifyForm.gallData.gallImgDto[1].img_no}" disabled="disabled" />
			   		<input type="hidden" name="deleteImgNo3" id="deleteImgNo3" value="${modifyForm.gallData.gallImgDto[2].img_no}" disabled="disabled" />
		   		</div>
		   		<table width="1000" id="gallModify_table">
		   			<tr>
		   				<th colspan="2" style="text-align:left"><input type="text" name="title" id="title"  placeholder="????????? ??????????????????" size="100" autofocus required="required" value="${modifyForm.gallData.gallDto.gall_title}"></th>
		   			</tr>
					<tr>
		   				<td width="50"><input type="file" name="img1" id="img1" /></td>
						<td id="oldfileName1">${modifyForm.gallData.gallImgDto[0].img_old}</td>
		   			</tr>
		   			<tr>
		   				<td width="50"><input type="file" name="img2" id="img2" /></td>
						<td id="oldfileName2">${modifyForm.gallData.gallImgDto[1].img_old}</td>
		   			</tr>
		   			<tr>
		   				<td width="50"><input type="file" name="img3" id="img3" /></td>
		   				<td id="oldfileName3">${modifyForm.gallData.gallImgDto[2].img_old}</td>
		   			</tr>
		   			<tr>
		   				<td colspan="2">
		   					<textarea name="content" id="content" rows="30" placeholder="????????? ???????????????" required="required" >${modifyForm.gallData.gallDto.gall_content}</textarea>
		   				</td>
		   			</tr>
		 			<tr>
		   				<td colspan="2">
			   				<div id="imgchange">
			   					<c:forEach var="gallImg" varStatus="i" items="${modifyForm.gallData.gallImgDto}"> 
				   					<div id="imgs${i.count}" style="display: inline-flex; padding:10px;">
				   						<li>
											<span>${gallImg.img_old}</span><br/>
												<img src="<%=request.getContextPath()%>/images/${gallImg.img_new}" title="${gallImg.img_old}" width="200" height="200" />
										</li>		
									</div>
								</c:forEach>
			   				</div>
		   				</td>
		   			</tr>
		   			<tr>
		   				<td colspan="2">
		   					<input type="submit" name="submit" id="submit" value="????????????">
			   				<button class ="gallReadButton"><a href="../board/gallList.do?gPageNo=${param.gPageNo}">????????????</a></button>
		   				</td>
		   			</tr>
		   		</table>
		   </form>
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