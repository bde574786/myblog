let index = {
	
	 init: function() {
		
		
		$("#btn-join").bind("click", () => {
			this.join();
		});
		
		$("#btn-login").bind("click", () => {
			this.login();
		});
		
	
	},
	
	join: function() {
		let data = {
			username: $("#username").val(),
			password: $("#password").val(),
			email: $("#email").val()
		}
		
		$.ajax({
			type: "POST",
			url: "/blog/api/user",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
			
		}).done(function(){
			alert("회원가입이 완료되었습니다")
			location.href="/blog";
		}).fail(function(){
			alert("회원가입에 실패하였습니다.")
		});	
		
	},
	
	login: function() {
		let data = {
			username: $("#username").val(),
			password: $("#password").val()
		}
		$.ajax({
			type: "POST",
			url: "/blog/api/user/login",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(data, textStatus, xhr) {
			alert("로그인이 완료되었습니다");
			location.href="/blog";
			console.log(data);
		}).fail(function(error) {
			alert("로그인에 실패했습니다");
			console.log(error);
		});
		
				
	}
	
	
	
	
	
}


index.init();

