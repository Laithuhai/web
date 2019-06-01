<?php
include("function.php");
$connection=connect();



?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
	<link rel="shortcut icon" href="sofaImage/logo/logo.jpg">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sofa Center</title>
	<style>
		.left-content{
			float:left;
			width:320px;
			padding: 30px;
			margin: 20px;
			box-shadow: 7px;
			border: solid  gray;
			border-radius:5px; 
		}
		.left-content span{
			padding: 30px;
			margin: 20px;
			
		}
		.right-content{
			float: right;
			width:900px;
			height:auto;
			padding: 10px;
		}	
	
</style>	
</head>

<body>
<?php include("header.php")?>	
<div class="content">
<div class="left-content">
	<span class="list-group"><p><b>Nhãn hàng</b></p>
		<?php
	$query="select DISTINCT (ten_hang) from tb_hang INNER JOIN tb_sp on tb_hang.id=tb_sp.id_hang WHERE trangthai=1";
	$result=execute($query);

	foreach($result as $row){?>
		<div class="list-group-item-checkbox">
		<label><input type="checkbox" class="common_selector brand" value="<?php echo $row['ten_hang']?>">
		<?php echo $row['ten_hang']?></label></div>
	<?php	
	}
		?>
	<hr>
	</span>
<span class="list-group"><p><b>Chất liệu</b></p>
	<?php
	$query1="select DISTINCT (chatlieu) from tb_chatlieu INNER JOIN tb_sp on tb_chatlieu.id=tb_sp.id_chatlieu WHERE trangthai=1";
	
	$result=execute($query1);
	
	
	foreach($result as $row){?>
		<div class="list-group-item-checkbox">
		<label><input type="checkbox" class="common_selector brand" value="<?php echo $row['chatlieu']?>">
		<?php echo $row['chatlieu']?></label></div>
	<?php	
	}
		?>	
<hr>
	</span>
<span class="list-group"><p><b>Giá tiền</b></p>
	<input type="hidden" id="hidden_minimum_price" value="0"/>
	<input type="hidden" id="hidden_maximum_price" value="100000000">
	<p id="price_show">500.000VND - 100000000VND</p>
	<div id="price_range"></div>
<hr>
</span>
	</div>	
<div class="right-content">
	<div class="row">
		<div class="column">
			<div class="card">
<!--				-->
 <a href="detail.php"> <img src="sofaImage/sofared.png"style="width:100%"></a>
  <h1>Tên sản phẩm</h1>
  <p class="price">$19.99</p>
  <p>Mô tả</p>
  <p><button class="btn-danger">Mua ngay</button>
	<button class="btn-block">Thêm vào giỏ hàng</button></p>
</div>
		</div>
		<div class="column">
		<div class="card">
 <a href="detail.php"> <img src="sofaImage/sofawhite.png"  style="width:100%"></a>
  <h1>Tên sản phẩm</h1>
  <p class="price">$19.99</p>
  <p>Mô tả</p>
  <p><button class="btn-danger">Mua ngay</button>
	<button class="btn-block">Thêm vào giỏ hàng</button></p>
</div>
		</div>
		<div class="column">
			<div class="card">
  <a href="detail.php"><img src="sofaImage/sofabrown.png" style="width:100%"></a>
  <h1>Tên sản phẩm</h1>
  <p class="price">$19.99</p>
  <p>Mô tả</p>
  <p><button class="btn-danger">Mua ngay</button>
	<button class="btn-block">Thêm vào giỏ hàng</button></p>
</div>
		</div>
	</div>
</div>
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: 10px;
  float:left;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7
}
	table th img{
		height: 70%;
		padding-left: 20px;
		padding-right: 20px;
		margin: 20px;
	}
</style>
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
//	#dk lọc giá tiền
	$('#price_range').slider({
        range:true,
        min:500000,
        max:100000000,
        values:[500000, 100000000],
        step:500000,
        stop:function(event, ui)
        {
            $('#price_show').html(ui.values[0] + ' - ' + ui.values[1]);
            $('#hidden_minimum_price').val(ui.values[0]);
            $('#hidden_maximum_price').val(ui.values[1]);
            filter_data();
        }
    });
</script>
     
	</div>	
<div class="navbar-brand"><table>
	<th><img src="sofaImage/logo/bellasofa.png"></th>
	<th><img src="sofaImage/logo/sofaworks.jpg"></th>
	<th><img src="sofaImage/logo/omegasofa.jpg"></th>
	<th><img src="sofaImage/logo/logo-diamond.png"></th>
	</table></div>
	
</body>
</html>
<?php include("footer.php")?>