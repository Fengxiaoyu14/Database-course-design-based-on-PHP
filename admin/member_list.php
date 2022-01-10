<?php 
include_once '../inc/config.inc.php';
include_once '../inc/mysql.inc.php';
include_once '../inc/tool.inc.php';
$link=connect();
include_once 'inc/is_manage_login.inc.php';//验证管理员是否登录
if(isset($_POST['submit'])){
	foreach ($_POST['sort'] as $key=>$val){
		if(!is_numeric($val) || !is_numeric($key)){
			skip('son_module.php','error','排序参数错误！');
		}
		$query[]="update son_module set sort={$val} where id={$key}";
	}
	if(execute_multi($link,$query,$error)){
		skip('son_module.php','ok','排序修改成功！');
	}else{
		skip('son_module.php','error',$error);
	}
}
$template['title']='子版块列表页';
$template['css']=array('style/public.css');
?>
<?php include 'inc/header.inc.php'?>
<div id="main">
	<div class="title">用户列表</div>
	<form method="post">
	<table class="list">
		<tr>
			<th>id</th>
			<th>用户名</th>
			<th>注册时间</th>
			<th>最后登录时间</th>
		</tr>
		<?php 
		$query="select * from member order by id";
		$result=execute($link,$query);
		while ($data=mysqli_fetch_assoc($result)){
			$id = $data['id'];
            $name = $data['name'];
            $register_time=$data['register_time'];
            $last_time=$data['last_time'];
$html=<<<A
			<tr>
				<td>{$data['id']}</td>
				<td>{$data['name']}</td>
				<td>{$data['register_time']}</td>
				<td>{$data['last_time']}</td>
			</tr>
A;
			echo $html;
		}
		?>
		
	</table>
	</form>
</div>
<?php include 'inc/footer.inc.php'?>