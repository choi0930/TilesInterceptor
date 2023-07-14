/**
 * 
 */
function getContextPath(){
	var hostIndex = location.href.indexOf(location.host)+location.host.length;
	console.log("location.href:"+location.href);
	console.log("location.host:"+location.host);
	console.log("location.href.indexOf(location.host)"+location.href.indexOf(location.host));
	
	console.log(hostIndex);
	var contextPath = location.href.substring(hostIndex, location.href.indexOf('/', hostIndex + 1));
	console.log(contextPath);
	return contextPath;
}

$(function(){
	$('#alert-success').hide();
	$('#alert-danger').hide();
	$("input").keyup(function(){
		var pwd1 = $('#userPwd').val();
		var pwd2 = $('#userPwdCheck').val();
		if(pwd1 !="" || pwd2 != ""){
			if(pwd1 == pwd2){
				$('#alert-success').show();
				$('#alert-danger').hide();
				$('#submit').removeAttr("disabled");
			}else{
				$('#alert-success').hide();
				$('#alert-danger').show();
				$('#submit').attr("disabled","disabled");
			}
		}
	});
});
function fn_checkId(){ //아이디 중복체크
	var contextPath = getContextPath();
	var _id = $("#userId").val();
	if(_id==''){
		alert("아이디를 입릭하세요");
		return false;
	}
	$.ajax({
		type:"post",
		async:true,
		url:contextPath+"/member/checkId.do",
		dataType:"text",
		data:{id:_id},
		success:function(data, textStatus){
			if(data=='usable'){
				$('#message').text("사용할 수 있는 ID입니다");
				$('#message').removeClass();
				$('#message').addClass("greenText");
			}else{
				$('#message').text("사용할 수 없는 ID입니다.");
				$('#message').removeClass();
				$('#message').addClass("redText");
			}
		},
		error:function(data, textStatus){
			alert("에러가 발생했습니다.");
		},
		complete:function(data, textStatus){
			
		}
	});
}
