<?php
$query="select views from info where id=1";
$data=mysqli_fetch_assoc(execute($link, $query));
?>
<div id="footer" class="auto">
		<div class="bottom">
			<a href="mailto:1073813654@qq.com" target="_blank">联系站长</a>
		</div>
		<div class="copyright">访问量:<?php echo $data['views']; ?></div>
		<div class="copyright">Powered by ©2021 fxy的数据库作业罢了</div>
	</div>
</body>
</html>
<?php 
@close($link);
?>