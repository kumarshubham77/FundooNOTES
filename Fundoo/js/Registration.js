function Registration() {
    var firstName = "qwerty";//$("firstname").val(); 
    var lastName = "qwerty";//$("lastname").val(); 
    var email = "qwerty12@gmail.com";//$("email").val();
    var password = "123456"; //$("password").val(); 
    //var repassword = $("repassword").val();
    var age = 12;//$("age").val(); 
    var Gender = "male";//$("gender").val();  
    var data = JSON.stringify({ firstname: firstName, lastname: lastName, email: email, password: password, age: age, gender: Gender });
    $.ajax({
        type: "POST",
        contentType: "application/json;charset=UTF-8", 
        url: '/User/Register',
        data: data,
        dataType: "json",
        success: function (result, status, xhr)
        {
            var datares = result;
            console.log("datares", datares);
        },
        error: function (x) {
            console.log("ERROR", x);
        }
    })
}
