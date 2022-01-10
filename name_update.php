<?php 
include_once 'inc/config.inc.php';
include_once 'inc/mysql.inc.php';
include_once 'inc/tool.inc.php';
$link=connect();
$member_id=is_login($link);
if(isset($_POST['submit'])){
	escape($link,$_POST);
    if(!$_POST['name']){
        skip("name_update.php", "error", "用户名不得为空！");
    }
	$query="update member set name='{$_POST['name']}' where name='{$_COOKIE['sfk']['name']}'";
    // $query=ltrim($query, "'");
    // var_dump($query);
    // exit();
	$result=execute($link, $query);
	if(mysqli_affected_rows($link)==1){
		skip('login.php','ok','修改成功, 请重新登陆！');
	}else{
		skip('name_update.php', 'error', '修改失败！');
	}
}
$template['title']='修改用户名';
$template['css']=array('style/public.css','style/register.css');
?>
<?php include 'inc/header.inc.php'?>
	<div id="register" class="auto">
		<h2>修改用户名</h2>
		<form method="post">
			<label>请输入新的用户名：
                <input type="text" name="name"  /><span></span>
            </label>
			<div style="clear:both;"></div>
			<input class="btn" type="submit" name="submit" value="修改" />
		</form>
	</div>
<?php include 'inc/footer.inc.php'?>