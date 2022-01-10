<?php 
include_once '../inc/config.inc.php';
include_once '../inc/mysql.inc.php';
include_once '../inc/tool.inc.php';
$link=connect();
include_once 'inc/is_manage_login.inc.php';//验证管理员是否登录


$query="select * from manage where id={$_SESSION['manage']['id']}";
$result_manage=execute($link, $query);
$data_manage=mysqli_fetch_assoc($result_manage);

$query="select count(*) from father_module";
$count_father_module=num($link,$query);

$query="select count(*) from son_module";
$count_son_module=num($link,$query);

$query="select count(*) from content";
$count_content=num($link,$query);

$query="select count(*) from reply";
$count_reply=num($link,$query);

$query="select count(*) from member";
$count_member=num($link,$query);

$query="select count(*) from manage";
$count_manage=num($link,$query);

if($data_manage['level']=='0'){
	$data_manage['level']='超级管理员';
}else{
	$data_manage['level']='普通管理员';
}
$template['title']='系统信息';
$template['css']=array('style/public.css');
?>
<?php include 'inc/header.inc.php'?>
<div id="main">
	<div class="title">系统信息</div>
	<div class="explain">
		<ul>
			<li>|- 您好，<?php echo $data_manage['name']?></li>
			<li>|- 所属角色：<?php echo $data_manage['level']?> </li>
			<li>|- 创建时间：<?php echo $data_manage['create_time']?></li>
		</ul>
	</div>
	<div class="explain">
		<ul>
			<li>|- 父版块(<?php echo $count_father_module?>)
			                 子版块(<?php echo $count_son_module?>)
			                 帖子(<?php echo $count_content?>)
			                 回复(<?php echo $count_reply?>)
			                 会员(<?php echo $count_member?>)
			                 管理员(<?php echo $count_manage?>)
			</li>
		</ul>
	</div>
	<div class="explain">
		<ul>
			<li>|- 服务器操作系统：<?php echo PHP_OS?> </li>
			<li>|- 服务器软件：<?php echo $_SERVER['SERVER_SOFTWARE']?> </li>
			<li>|- MySQL 版本：<?php echo  mysqli_get_server_info($link)?></li>
			<li>|- 最大上传文件：<?php echo ini_get('upload_max_filesize')?></li>
			<li>|- 内存限制：<?php echo ini_get('memory_limit')?></li>
			<li>|- <a target="_blank" href="phpinfo.php">PHP 配置信息</a></li>
		</ul>
	</div>
	
	<div class="explain">
		<ul>
			<li>|- 程序安装位置：<?php echo SA_PATH?></li>
			<li>|- 程序版本：冯潇宇的数据库课设v1.0 </li>
			<li>|- 邮箱：1073813654@qq.com</li>
		</ul>
	</div>

	<div class="explain">
		<div>参考资料：</div>
		<ul>
			<li>|- <a target="_blank" href="http://58.194.172.34/opac/item.php?marc_no=443866376769716c727a736e7a7a764e414774676d513d3d">PHP和MySQL Web开发/(美) 卢克·韦林, (美) 劳拉·汤姆森著 熊慧珍, 武欣, 罗云峰等译</a></li>
			<li>|- <a target="_blank" href="http://www.sifangku.com">www.sifangku.com</a></li>
		</ul>

	</div>
</div>
<?php include 'inc/footer.inc.php'?>