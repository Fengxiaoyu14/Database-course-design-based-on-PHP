<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登陆</title>
</head>
<body>
    <form action="./login.php" method="post">
        <img src="image_captcha.php"  onclick="this.src='image_captcha.php?'+new Date().getTime();" width="200" height="200"><br/>
        <input type="text" name="captcha" placeholder="请输入图片中的验证码"><br/>
        <input type="submit" value="验证">
    </form>
</body>
</html>