const findService = (function() {

	function findid(find, callback) {
		console.log("인서트");
		$.ajax({
			type : "POST",
			url : "/check/id",
			data : JSON.stringify(find),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function() {
				console.log("오류입니다.")
			}
		})
	}
	function findemail (find, callback) {
		console.log("인서트");
		$.ajax({
			type : "POST",
			url : "/check/email",
			data : JSON.stringify(find),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function() {
				console.log("오류입니다.")
			}
		})
	}

	return {
		checkid : findid,
		checkemail : findemail
	}
})()
