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

			}
		})
	}

	return {
		checkid : findid
	}
})()
