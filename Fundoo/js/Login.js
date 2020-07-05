function Login() {
    var email = "shubham123@gmail.com";//$("email").val();
    var password = "qwerty"; //$("password").val();   
    var data = JSON.stringify({ email: email, password: password});
    $.ajax({
        type: "POST",
        contentType: "application/json;charset=UTF-8",
        url: '/User/Login',
        data: data,
        dataType: "json",
        success: function (result, status, xhr,token) {
            var datares = result;
            console.log("datares", datares);
            var Token = datares;
            localStorage.setItem("Token", Token)
        },
        error: function (x) {
            console.log("ERROR", x);
        }
    })
}
function Forgot() {
    var email = "shubham123@gmail.com";//$("email").val();
    var password = "qwerty123456"; //$("password").val();   
    var data = JSON.stringify({ email: email, password: password });
    $.ajax({
        type: "POST",
        contentType: "application/json;charset=UTF-8",
        url: '/User/ForgotPassword',
        data: data,
        dataType: "json",
        success: function (result, status, xhr, token) {
            var datares = result;
            alert(datares);
        },
        error: function (x) {
            console.log("ERROR", x);
        }
    })
}

