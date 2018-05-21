$('.addMaterial').click(function(e){
	$("#add_formtip").html('');
	e.preventDefault();
	$('#addMaterialDiv').modal('show');
});
//查看单个原材料的营养成分
$('.viewMNurtrition').click(function(e){
	var m_id = $(this).attr('id');
	$.ajax({
		url: 'getmaterial.html',
		type: 'POST',
		data:{id:m_id},
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
			}else if("nodata" == result){
				alert("没有数据！");
			}else{
				m = eval('(' + result + ')');
				$("#v_mName").val(m.mName);
				$("#v_fat").val(m.fat);
				$("#v_heatCount").val(m.heatCount);
				$("#v_fibrin").val(m.fibrin);
				$("#v_vC").val(m.vC);
				$("#v_carotenes").val(m.carotenes);
				$("#v_riboflavin").val(m.riboflavin);
				$("#v_cholesterol").val(m.cholesterol);
				$("#v_ca").val(m.ca);
				$("#v_zn").val(m.zn);
				$("#v_mn").val(m.mn);
				$("#v_p").val(m.p);
				$("#v_se").val(m.se);
				$("#v_carbohy").val(m.carbohy);
				$("#v_protein").val(m.protein);
				$("#v_vA").val(m.vA);
				$("#v_vE").val(m.vE);
				$("#v_thiamine").val(m.thiamine);
				$("#v_niacin").val(m.niacin);
				$("#v_mg").val(m.mg);
				$("#v_fe").val(m.fe);
				$("#v_cu").val(m.cu);
				$("#v_k").val(m.k);
				$("#v_na").val(m.na);
				$("#v_vB").val(m.vB);
				$("#v_classify").val(m.classify);
				/*$("#v_createTime").val(m.createTime);*/
			$('#viewMNurtritionDiv').modal('show');
			
			}
		
		}
		});
});
//删除管理员的对应原材料
$('.delMaterial').click(function(e){
	//delete
	var d = $(this);
	var d_name = d.attr('name');
	var d_id = d.attr('id');
	if(confirm("您确定要删除【"+d_name+"】这个原材料吗？")){
		//delete
		$.post("delMaterial.html",{'d_id':d_id},function(result){
			if("success" == result){
				alert("删除成功！");
				window.location.href="materiallist.html";
			}else{
				alert("删除失败！");
			}
		},'html');
	}
});
//保存管理员的原材料添加信息
$('.saveMaterial').click(function(e){
	var mName = $("#a_mName").val();
	var content = $("#a_content").val();
		$.post("saveMaterial.html",{'a_mName':mName,'a_content':content},function(result){
			if("success" == result){
				window.location.href="materiallist.html";
			}else{
				alert("添加失败！");
			}
		},'html');
	
});

//检查原材料库是否有管理员输入的材料名称
function checkIsExist(){
	var a_mName = $("#a_mName").val();
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
				$("#add_formtip").html("");
				$("#add_formtip").css("color","green");
			    $("#add_formtip").append("<li>可用原材料</li>");
			}else{
				$("#add_formtip").html("");
				$("#add_formtip").css("color","red");
				$("#add_formtip").append("<li>没有您输入的原材料名称，为您推荐以下名词</li>");
				m = eval('(' + result + ')');
				for (var i = 0; i < m.length; i++) {
					$("#add_formtip").append(m[i]+"  ");
				}
				
			}
		
		}
		});
}
//更新材料库的数量
function modifyContent(){
	var d = $(".center input");
	var m_id = d.attr('id');
	var m_content=d.val();
	
	$.ajax({
		url: 'modifyContent.html',
		type: 'POST',
		data:{m_id:m_id,m_content:m_content},
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
			}else{
				$("#inputmodify").html("");
				$("#inputmodify").css("color","green");
			    $("#inputmodify").html("已修改");
			}
		
		}
		});
}




