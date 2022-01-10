<?php
include_once 'inc/config.inc.php';
include_once 'inc/mysql.inc.php';
include_once 'inc/tool.inc.php';
$link=connect();
$member_id=is_login($link);


$template['title']='首页';
$template['css']=array('style/public.css','style/index.css');

$query="update info set views=views+1 where id=1";
execute($link,$query);


?>
<?php include 'inc/header.inc.php'?>
<div id="hot" class="auto">
	<div class="title">推荐主题</div>
	<ul class="newlist">
		<!-- 20条 -->
		<li><a href="#">[使用说明]</a> <a href="#">冯潇宇的数据库课设</a></li>
		<li><a href="#">[使用说明]</a> <a href="#">网站暂未适配移动端，请使用电脑浏览</a></li>
		
	</ul>
	<div style="clear:both;"></div>
</div>
<?php 
//根据父板块的排序大小升序排序显示各个板块内容
$query="select * from father_module order by sort";
$result_father=execute($link, $query);
while($data_father=mysqli_fetch_assoc($result_father)){
?>
<div class="box auto">
	<div class="title">
		<a href="list_father.php?id=<?php echo $data_father['id']?>" style="color:#105cb6;"><?php echo $data_father['module_name']?></a>
	</div>
	<div class="classList">
		<?php 
		$query="select * from son_module where father_module_id={$data_father['id']} order by sort";
		$result_son=execute($link, $query);
		if(mysqli_num_rows($result_son)){
			while ($data_son=mysqli_fetch_assoc($result_son)){
				$query="select count(*) from content where module_id={$data_son['id']} and time > CURDATE()";
				$count_today=num($link,$query);
				$query="select count(*) from content where module_id={$data_son['id']}";
				$count_all=num($link,$query);
				$html=<<<A
					<div class="childBox new">
						<h2><a href="list_son.php?id={$data_son['id']}">{$data_son['module_name']}</a> <span>(今日{$count_today})</span></h2>
						帖子：{$count_all}<br />
					</div>
A;
				echo $html;
			}
		}else{
			echo '<div style="padding:10px 0;">暂无子版块...</div>';
		}
		?>
		<div style="clear:both;"></div>
	</div>
</div>
<?php }?>
<?php include 'inc/footer.inc.php'?>