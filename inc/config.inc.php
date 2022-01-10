<?php 
date_default_timezone_set('Asia/Shanghai');//设置时区
session_start();
header('Content-type:text/html;charset=utf-8');

//数据库信息
define('DB_HOST','localhost');
define('DB_USER','user');
define('DB_PASSWORD','adfa963e');
define('DB_DATABASE','bbs');
define('DB_PORT',3306);

//项目，在服务器上的绝对路径
define('SA_PATH',dirname(dirname(__FILE__)));
//项目在web根目录下的位置
define('SUB_URL',str_replace($_SERVER['DOCUMENT_ROOT'],'',str_replace('\\','/',SA_PATH)).'/');
if(!file_exists(SA_PATH.'/inc/install.lock')){
	header('Location:'.SUB_URL.'install.php');
}
