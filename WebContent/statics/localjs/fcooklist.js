$('.modifyFookCookcancel').click(function(e){
	$("#modify_formtips").html('');
/*	$("#modify-froom").html('');*/
/*	$("#modify-froom").css("display","none");*/
	$("#m_id").val('');
	$("#m_fmake").html('');
	$(".moreFookCook").val('');
	$("#m_id").val('');
	$("#moreFookMake1").html('');
});

$('.viewFookCookcancel').click(function(e){
	/*$("#modify_formtip").html('');*/
	$("#m_name").val('');
	/*$("#selectrole").val('');*/
/*	$("#selectusertype").val('');
	$("#selectusertype").html('<option value=\"\" selected=\"selected\">--请选择--</option>');*/
	$(".model-form").html("");
	/*$("#m_department").val('');
	$("#m_position").val('');
	$("#m_sex").val('');
	$("#m_role").val('');
	$("#m_froom").val('');
	$("#m_school").val('');*/
});
$('.addFookCookcancel').click(function(e){
	$("#add_formtips").html('');
	$("#a_fName").val('');
	$("#a_everyone").val('');
	$("#a_fClassify").val('');
	$("#a_windowId").val('');
	$("#a_fPrice").val('');
	$("#a_isPub").val('');
	$("#a_0").val('');
	$("#a_1").val('');
	$("#a_2").val('');
	$("#a_3").val('');
	$("#a_4").val('');
	$("#a_5").val('');
	$("#a_6").val('');
	$("#a_10").val('');
	$("#a_11").val('');
	$("#a_12").val('');
	$("#a_13").val('');
	$("#a_14").val('');
	$("#a_15").val('');
	$("#a_16").val('');
	$("#alabel_0").val('');
	$("#alabel_1").val('');
	$("#alabel_2").val('');
	$("#alabel_3").val('');
	$("#alabel_4").val('');
	$("#alabel_5").val('');
	$("#alabel_6").val('');
	$("#alabel_7").val('');
	$("#alabel_8").val('');
	$("#alabel_9").val('');
	$("#alabel_10").val('');
	$("#alabel_11").val('');
	$("#alabel_12").val('');
	$("#alabel_13").val('');
	$("#alabel_14").val('');
	$("#alabel_15").val('');
	$("#alabel_16").val('');
});
$('.addFcook').click(function(e){
	$("#add_formtips").html('');
	e.preventDefault();
	$('#addFoodCookDiv').modal('show');
	$("#uniform-a_fileInputID span:first").html('无文件');
	$("#uniform-a_fileInputBank span:first").html('无文件');
});
$('.modifyFoodCook').click(function(e){
	var m_id = $(this).attr('id');
	$.ajax({
		url: 'getfoodCook.html',
		type: 'POST',
		data:{m_id:m_id},
		dataType: 'json',
		timeout: 1000,
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
			},
		success: function(result){
			if("failed" == result){
				alert("操作超时！");
			}else if("nodata" == result){
				alert("没有数据！");
			}else{
				var mid=$("#m_id").val();
				/*if(mid==result[0].fId){
					
				}else{*/
					
				
					

				$("#m_id").val(result[0].fId);
			   $("#m_fmake").append('<div class="form-group"> <label>菜品名称</label><input  type="text" value="'+result[0].fName+'" class="form-control input-sm" /><input name="mf_fId" type="hidden" value="'+result[0].fId+'"/></div>');
 		        	for(var i =0 ; i< result.length;i++ ){
			                if(i%2==0){
			            	$("#m_fmake").append('<div class="form-group even-group"><label>'+result[i].mName+'</label><input id="m_'+i+'" type="text" value="'+result[i].content+"g"+'" class="form-control input-sm" name="m_'+i+'"/><input name="mlabel_'+i+'" type="hidden" value="'+result[i].mId+'"/></div>');
			                }else{
				            $("#m_fmake").append('<div class="form-group"> <label>'+result[i].mName+'</label><input id="m_'+i+'" type="text" value="'+result[i].content+"g"+'" class="form-control input-sm" name="m_'+i+'"/><input name="mlabel_'+i+'" type="hidden" value="'+result[i].mId+'"/></div>');
			                }
 		        	}		
 		        	$(".moreFookCook").val(result[0].fId);
 		        	$("#m_id").val(result[0].fId);
 		        	/*$(".model-form").append(
 		        	'<div  class="btn moreFookCook" value="'+result[0].fId+'" style="margin-top: 10px;width: 200px;" id="'+"moreFookCook1"+'">显示更多修改选项</div>'
 					+'<div class="modal-footer">'
 				     	+'<input type="submit" class="btn btn-primary" data-dismiss="modal" value="保存" />'
 						+'<a href="#" class="btn modifyFookCookcancel" data-dismiss="modal">关闭</a>'
 					+'</div>');*/
				}	
			
			$('#modifyFoodCookDiv').modal('show');				
	}
});
});

$('.moreFookMake').click(function(e){
	
 	for(var i =6 ; i< 10;i++ ){
        	$("#moreFookMake1").append('<div class="form-group"><label>原材料'+i+'</label><input id="a_'+i+'" type="text" value="" class="form-control input-sm inputMaterial" name="a_'+i+'"/></div>');
            $("#moreFookMake1").append('<div class="form-group even-group"><label>含量</label><input id="alabel_'+i+'" type="text" value="" class="form-control input-sm " name="alabel_'+i+'"/></div>');
 	}
            $(".p-15").height($(".p-15").height()+200);
            $(".model-form").css("height","1200px");
            $(".moreFookMake").css("display","none");
            $("#moreFookMake1").append('<a href="#" class="btn moreFoodMake2"  style="margin-top: 10px;width: 200px;" onclick="moreFoodMake2();">更多材料添加</a>');
 			
});
function moreFoodMake2(){
 	 	for(var i =10 ; i< 17;i++ ){ 		
 	        	$("#moreFookMake1").append('<div class="form-group"><label>原材料'+i+'</label><input id="a_'+i+'" type="text" value="" class="form-control input-sm inputMaterial" name="a_'+i+'"/></div>');
 	            $("#moreFookMake1").append('<div class="form-group even-group"><label>含量</label><input id="alabel_'+i+'" type="text" value="" class="form-control input-sm" name="alabel_'+i+'"/></div>');
 	 	}
 	 	        $(".p-15").height($(".p-15").height()+400);
 	 	        $(".model-form").css("height","1500px");
 	            $(".moreFoodMake2").css("display","none");
}
$('#moreFookCook1').click(function(e){
	var m_id = $(this).val();
	$.ajax({
		url: 'getMorefCook.html',
		type: 'POST',
		data:{m_id:m_id},
		dataType: 'json',
		timeout: 1000,
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
			},
		success: function(result){
			if("failed" == result){
				alert("操作超时！");
			}else if("nodata" == result){
				alert("没有数据！");
			}else{
		$('.moreFookCook').css("display","none");
		$("#m_moreFcook").append('<input name="moreFCookFlag" type="hidden" value="1">');
		$("#m_moreFcook").append('<div class="form-group even-group"> <label>每份含量(g)</label><input id="m_everyone" type="text" value="'+result.everyone+'" class="form-control input-sm" name="m_everyone"/></div>');	        	
		$("#m_moreFcook").append('<div class="form-group "> <label>分类</label><input id="m_fClassify" type="text" value="'+result.fClassify+'" class="form-control input-sm" name="m_fClassify"/></div>');
		$("#m_moreFcook").append('<div class="form-group even-group"> <label>窗口</label><input id="m_windowId" type="text" value="'+result.windowId+'" class="form-control input-sm" name="m_windowId"/></div>');
		$("#m_moreFcook").append('<div class="form-group "> <label>价格</label><input id="m_fPrice" type="text" value="'+result.fPrice+'" class="form-control input-sm" name="m_fPrice"/></div>');
		/*$("#m_moreFcook").append('<img src="'+result.fImg+'" style="width: 125px;height: 76px;margin-top: 17px;margin-bottom:10px;"></img> ');  */           	        	
		$("#m_moreFcook").val(1);
		$("#m_moreFcook").append('<div class="clear"></div><ul class="downul" id="m_upload" >'
					+'<li>'
					+'<label>上传新的菜品图片：</label>'
						+'<input type="hidden" id="a_fileInputIDPath" name="idCardPicPath" value=""/>'
						+'<input id="a_fileInputID" name="a_fileInputID" type="file" class="fileInput"/>'
						+'<input type="button" id="a_uploadbtnID" style="width:66px;" class="fileInput" value="上传" onclick="upload_a();" />'
						/*+'<input type="button" id="a_uploadbtnID" value="上传" class="fileInput" style="width:66px;"/>'*/
						+'<p><span style="color:red;font-weight: bold;">*注：1、大小不得超过5m.2、图片格式：jpg、png、jpeg、pneg</span></p>'
						+'<div id="a_idPic"></div>'
					+' </li>'
				+'</ul>');
			}
	}
		
		});
});
//当上传按钮被触发时,解决下面click方法不兼容问题
function upload_a(){
	TajaxFileUpload($("#m_id").val(),'a_fileInputID','a_uploadbtnID','a_idPic','a_fileInputIDPath');
}
//当上传按钮被触发时
$("#a_uploadbtnID").click(function(){
	//依次传入五个参数：对应菜品的ID,文件的Id,上传的按钮的Id,显示图片的div的Id,图片的路径
	TajaxFileUpload('0','a_fileInputID','a_uploadbtnID','a_idPic','a_fileInputIDPath');
});
$('.viewFNurtration').click(function(e){
	var s_id = $(this).attr('id');
	/*var m_fname = $(this).attr('fname');*/
	$.ajax({
		url: 'showFNurtration.html',
		type: 'POST',
		data:{s_id:s_id},
		dataType: 'json',
		timeout: 1000,
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
			},
		success: function(result){
			if("failed" == result){
				alert("操作超时！");
			}else if("nodata" == result){
				alert("没有数据！");
			}else{

			alert(result);
	}
}
		
		});
});

$('.viewFoodCookMake').click(function(e){
	var m_id = $(this).attr('id');
	var m_fname = $(this).attr('fname');
	$.ajax({
		url: 'getfCook.html',
		type: 'POST',
		data:{id:m_id,fName:m_fname},
		dataType: 'json',
		timeout: 1000,
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
			},
		success: function(result){
			if("failed" == result){
				alert("操作超时！");
			}else if("nodata" == result){
				alert("没有数据！");
			}else{
				$(".model-form").append('<div class="form-group"> <label>菜品名称</label><input id="v_heatCount" type="text" value="'+result[0].fName+'" class="form-control input-sm"/></div>');
			        	for(var i =0 ; i< result.length;i++ ){
			        	
			                if(i%2==0){
			            	$(".model-form").append('<div class="form-group even-group"> <label>'+result[i].mName+'</label><input id="v_heatCount" type="text" value="'+result[i].content+"g"+'" class="form-control input-sm"/></div>');
			                }else{
				            $(".model-form").append('<div class="form-group"> <label>'+result[i].mName+'</label><input id="v_heatCount" type="text" value="'+result[i].content+"g"+'" class="form-control input-sm"/></div>');
	
			                }
			                }
			       
			        	/*$("#m_fName").val(result[0].fname);*/
			        	
			}
		       
/*}
				m = eval('(' + result + ')');
				for (var y : m) {
$(".model-form").html('<div class="form-group even-group"> <label>'+m.get(i).mName+'</label><input id="v_heatCount" type="text" value="'+m.get(i).content+'" class="form-control input-sm"/></div>');
				}*/			
				/*$("#v_createTime").val(m.createTime);*/
			$('#viewFoodCookDiv').modal('show');
			
			
	}
		
		});
});
$('.deleteFoodCook').click(function(e){
	//delete
	var d = $(this);
	var d_name = d.attr('fName');
	var d_id = d.attr('id');
	if(confirm("您确定要删除【"+d_name+"】这个菜品吗？")){
		//delete
		$.post("delFoodCook.html",{'d_id':d_id},function(result){
			if("success" == result){
				alert("删除成功！");
				window.location.href="foodCookList.html";
			}else{
				alert("删除失败！");
			}
		},'html');
	}
});
//菜品上架
$('.pubFoodCook').click(function(e){
	var d = $(this);
	var d_id = d.attr('id');
		//delete
		$.post("pubFoodCook.html",{'p_id':d_id},function(result){
			if("success" == result){
				d.html("");
				d.css("background","#66CD00");
				d.html("已上架");
			}else{
				alert("上架失败！");
			}
		},'html');
	
});
$("#a_loginCode").blur(function(){
	var alc = $("#a_loginCode").val();
	if(alc != ""){
		$.post("logincodeisexit.html",{'loginCode':alc},function(result){
			if(result == "repeat"){
				$("#add_formtip").css("color","red");
				$("#add_formtip").html("<li>对不起，该管理员账号已存在。</li>");
				$("#add_formtip").attr("key","1");
				result = false;
			}else if(result == "failed"){
				alert("操作超时!");
			}else if(result == "only"){
				$("#add_formtip").css("color","green");
				$("#add_formtip").html("<li>该管理员账号可以正常使用。</li>");
				$("#add_formtip").attr("key","0");
			}
		},'html');
	}
});
//添加菜品和成分验证
function addfCookAndfMakeFunction(){
	$("#add_formtips").html("");
	var result = true;
	if($.trim($("#a_fName").val()) == "" || $("#a_fName").val() == null){
		$("#add_formtips").css("color","red");
		$("#add_formtips").append("<li>对不起，菜品名称不能为空。</li>");
		$(".p-15").height($(".p-15").height()+20);
		result = false;
	}
	if($.trim($("#a_fPrice").val()) == "" || $("#a_fPrice").val() == null){
		$("#add_formtips").css("color","red");
		$("#add_formtips").append("<li>对不起，菜品单份价格不能为空。</li>");
		$(".p-15").height($(".p-15").height()+20);
		result = false;
	}
	if($.trim($("#a_everyone").val()) == "" || $("#a_everyone").val() == null){
		$("#add_formtips").css("color","red");
		$("#add_formtips").append("<li>对不起，菜品单份含量不能为空。</li>");
		$(".p-15").height($(".p-15").height()+20);
		result = false;
	}
	if($.trim($("#a_fClassify").val()) == "" || $("#a_fClassify").val() == null){
		$("#add_formtips").css("color","red");
		$("#add_formtips").append("<li>对不起，菜品分类不能为空。</li>");
		$(".p-15").height($(".p-15").height()+20);
		result = false;
	}
	if($.trim($("#a_windowId").val()) == "" || $("#a_windowId").val() == null){
		$("#add_formtips").css("color","red");
		$("#add_formtips").append("<li>对不起，窗口编号不能为空。</li>");
		$(".p-15").height($(".p-15").height()+20);
		result = false;
	}
	if($.trim($("#a_isPub").val()) == "" || $("#a_isPub").val() == null){
		$("#add_formtips").css("color","red");
		$("#add_formtips").append("<li>对不起，是否上架不能为空。</li>");
		$(".p-15").height($(".p-15").height()+20);
		result = false;
	}
	if($.trim($("#a_0").val()) == "" || $("#a_0").val() == null){
		$("#add_formtips").css("color","red");
		$("#add_formtips").append("<li>对不起，原材料名称不能为空。</li>");
		$(".p-15").height($(".p-15").height()+20);
		result = false;
	}
	if($.trim($("#alabel_0").val()) == "" || $("#alabel_0").val() == null){
		$("#add_formtips").css("color","red");
		$("#add_formtips").append("<li>对不起，含量名称不能为空。</li>");
		$(".p-15").height($(".p-15").height()+20);
		result = false;
	}
	if($.trim($("#a_1").val()) == "" || $("#a_1").val() == null){
		$("#add_formtips").css("color","red");
		$("#add_formtips").append("<li>对不起，原材料数量不能少于三。</li>");
		$(".p-15").height($(".p-15").height()+20);
		result = false;
	}
	if($.trim($("#alabel_1").val()) == "" || $("#alabel_1").val() == null){
		$("#add_formtips").css("color","red");
		$("#add_formtip").append("<li>对不起，原材料2含量不能为空。</li>");
		$(".p-15").height($(".p-15").height()+20);
		result = false;
	}
	if($.trim($("#a_2").val()) == "" || $("#a_2").val() == null){
		$("#add_formtips").css("color","red");
		$("#add_formtips").append("<li>对不起，原材料数量不能少于三。</li>");
		$(".p-15").height($(".p-15").height()+20);
		result = false;
	}
	if($.trim($("#alabel_2").val()) == "" || $("#alabel_2").val() == null){
		$("#add_formtips").css("color","red");
		$("#add_formtips").append("<li>对不起，原材料3含量不能为空。</li>");
		$(".p-15").height($(".p-15").height()+20);
		result = false;
	}
     /*  特殊判断*/
	if($("#a_isPub").val() != "0" && $("#a_isPub").val() != "1"){
		$("#add_formtips").css("color","red");
		$("#add_formtips").append("<li>对不起，请在是否上架栏输入1或0。</li>");
		$(".p-15").height($(".p-15").height()+20);
		result = false;
	}
	
	if(result == true && $("#add_formtips").html() == "") alert("添加成功 ^_^");
	return result;
}

//修改菜品信息验证
function modifyfCookFunction(){
	$("#modify_formtips").html("");
	var result = true;
	for(var i=0;i<20;i++){
		if($("#id_"+i).length > 0){
			if($("#id_"+i).val()==null||$("#id_"+i).val()==""){
				$("#modify_formtips").css("color","red");
				$("#modify_formtips").append('<li>对不起,'+$("#mlabel_"+i).val()+'的含量不能为空</li>');
				result=false;
			}
		}
	}
	if($("#m_moreFcook").val()==1){
	if($("#m_everyone") == ""|| $("#m_everyone").val() == null){
		$("#modify_formtips").css("color","red");
		$("#modify_formtips").append("<li>对不起，菜品每份含量不能为空。</li>");
		result = false;
	}
	if($.trim($("#m_fClassify").val()) == "" || $("#m_fClassify").val() == null){
		$("#modify_formtips").css("color","red");
		$("#modify_formtips").append("<li>对不起，菜品分类不能为空。</li>");
		result = false;
	}
	if($.trim("windowId") == "" || $.trim("windowId") == null){
		$("#modify_formtips").css("color","red");
		$("#modify_formtips").append("<li>对不起，菜品所在窗口不能为空。</li>");
		result = false;
	}
	if($.trim("fPrice") == "" || $.trim("fPrice") == null){
		$("#modify_formtips").css("color","red");
		$("#modify_formtips").append("<li>对不起，菜品价格不能为空。</li>");
		result = false;
	}if($.trim("ImgPicture") == "" || $.trim("ImgPicture") == null){
		$("#modify_formtips").css("color","red");
		$("#modify_formtips").append("<li>对不起，菜品图片不能为空。</li>");
		result = false;
	}
	}
	if(result == true){
		alert("修改成功 ^_^");
	
	}
	return result;
}
//删除图片，例：<span onclick="delpic('','a_idPic','a_uploadbtnID',this,'/shiyan3/statics/uploadfiles/1519065578419_IDcard.jpg','a_fileInputIDPath','a_fileInputID');">x</span>
function delpic(id,closeSpan,uploadBtn,obj,picpath,picText,fileinputid){
	//delete
	$.post("delpic.html",{'id':id,'picpath':picpath},function(result){
		if("success" == result){
			alert("删除成功！");
			$('#'+picText).val('');
   			$("#uniform-"+fileinputid+" span:first").html('无文件');
			document.getElementById(closeSpan).removeChild(obj.parentElement);$('#'+uploadBtn).show();
			//修改后p-15,model-foot的样式
		   $(".p-15").height($(".p-15").height-100);
  		   $(".modal-footer").css({"position":"relative","top":"0px"});
		}else{
			alert("删除失败！");
		}
	},'html');
	
}
//依次传入五个参数：对应菜品的ID,文件的Id,上传的按钮的Id,显示图片的div的Id,图片的路径
//'0','a_fileInputID','a_uploadbtnID','a_idPic','a_fileInputIDPath'
function TajaxFileUpload(flag,t1,t2,t3,t4)
{   
	//如果文件为空
	if($("#"+t1+"").val() == '' || $("#"+t1+"").val() == null){
		alert("请选择上传文件！");
	}else{
		//由/statics/js2/ajaxFileUpload.js这个插件生效，简化上传图片的操作
		$.ajaxFileUpload
	    ({ 
	           url:'upload.html', //处理上传文件的服务端
	           secureuri:false,//是否启用安全提交，默认为false
	           fileElementId:t1,
	           dataType: 'jsonp',
	           success: function(data) { 
	        	   //利用el表达式规整
	        	   data = data.replace(/(^\s*)|(\s*$)/g, "");
	        	   //文件大小不符合标准时的提示和调整
	        	   if(data == "1"){
	        		   alert("上传图片大小不得超过50K！");
	        		   //js内部的操作，下面的id位置不直接显示在原html中
	        		   $("#uniform-"+t1+" span:first").html('无文件');
	        		   //在用户选择完上传图片后，需要把图片名称显示到输入框中
	        		   $("input[name='"+t1+"']").change(function(){
	        			   var fn = $("input[name='"+t1+"']").val(); 
	        			   //应对IE浏览器的处理策略
	        			   if($.browser.msie){
	        				   fn = fn.substring(fn.lastIndexOf("\\")+1);
	        			   }
	        			   $("#uniform-"+t1+" span:first").html(fn);
	        		   });
	        	   }else if(data == "2"){//上传的格式不正确时的提示和规整，和data=="1"的处理方式类似
	        		   alert("上传图片格式不正确！");
	        		   $("#uniform-"+t1+" span:first").html('无文件');
	        		   //在用户选择完上传图片后，需要把图片名称显示到输入框中
	        		   $("input[name='"+t1+"']").change(function(){
	        			   var fn = $("input[name='"+t1+"']").val(); 
	        			   if($.browser.msie){//对ie浏览器的操作（不同浏览器取出值是不一样的）
	        				   fn = fn.substring(fn.lastIndexOf("\\")+1);
	        			   }
	        			   $("#uniform-"+t1+" span:first").html(fn);
	        		   });
	        	   } else{//成功上传图片的规整
	        		   //显示已经上传的图片(例t3==m_idPic)，加上随机数，解决浏览器的缓存问题
	        		   $("#"+t3+"").append("<p><span onclick=\"delpic('"+flag+"','"+t3+"','"+t2+"',this,'"+data+"','"+t4+"','"+t1+"');\">x</span><img id='ImgPicture' src=\""+data+"?m="+Math.random()+"\"  /></p>");
	        		   $("#"+t3+"").append('<input name="ImgPicture" type="hidden" value="'+data+'"/>');
	        		  /*$("#"+t3+"").append("<p><span onclick=\"delpic('"+flag+"','"+t3+"','"+t2+"',this,'"+data+"','"+t4+"','"+t1+"');\">x</span><img id='ImgPicture' src=\""+data+"\" /></p>");*/
	        		   /*$("#"+t3+"").append('<img id="ImgPicture" src="'+data+'" /></p>');*/
	        		   //t2代指上传这个按钮，当成功上传时隐藏上传按钮
	        		   $("#"+t2+"").hide();
	        		   //t4代指吐图片的路径，例m_fileInputIDPath
	        		   $("#"+t4+"").val(data);
	        		   //此操作和之前data=="1"/"2"一样
	        		   $("input[name='"+t1+"']").change(function(){
	        			   var fn = $("input[name='"+t1+"']").val(); 
	        			   if($.browser.msie){
	        				   fn = fn.substring(fn.lastIndexOf("\\")+1);
	        			   }
	        			   $("#uniform-"+t1+" span:first").html(fn);
	        		   });
	        		   
	        		   //修改modal-footer,model-form ,p-15的样式
	        		   $(".p-15").height($(".p-15").height()+100);
	        		   $(".model-form").css("height","900px");
	        		   $(".modal-footer").css({"position":"relative","top":"137px"});
	        	   }
	           },  
	           error: function() {  
	              alert("上传失败！");
	           } 
	        });
	}
}

//检查原材料库是否有管理员输入的材料名称
$(".inputMaterial").blur(function(){
		var d = $(this)
		var a_mName=d.val();
		$.ajax({
			url: 'MaterialIsExist.html',
			type: 'POST',
			data:{mName:a_mName},
			dataType: 'html',
			timeout: 1000,
			error: function(XMLHttpRequest, textStatus, errorThrown) {	
				alert(XMLHttpRequest.status);
				alert(XMLHttpRequest.readyState);
				alert(textStatus);
				},
			success: function(result){
				if("failed" == result){
					alert("操作超时！");
				}else if("repeat" == result){
					d.html("");
					d.css("border","1px solid springgreen");
					d.css("background","none");
				}else{
					$("#add_formtips").html("");
					$("#add_formtips").css("color","red");
					$("#add_formtips").append("<li>没有您输入的原材料名称，为您推荐以下名词</li>");
					m = eval('(' + result + ')');
					for (var i = 0; i < m.length; i++) {
						$("#add_formtips").append(m[i]+"  ");
					}
					$(".p-15").height($(".p-15").height+20);
					
				}
			
			}
			});
});
//下架菜品
$(".downFoodCook").click(function(){
	var d=$(this);
	var d_id=d.attr('id');
	var tr="."+d_id;   
	//delete
	$.post("downFoodCook.html",{'d_id':d_id},function(result){
		if("success" == result){
			$(tr).html("");
		}else{
			alert("下架失败！");
		}
	},'html');
	
});

