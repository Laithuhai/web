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
			width:250px;
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
	.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}


.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
	
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}


.tab button:hover {
    background-color: #ddd;
}


.tab button.active {
    background-color: #ccc;
}


.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}
		
		ul li{
			list-style: none;
		}
</style>	
</head>

<body>
<?php include("header.php")
?>	
<div class="content">
<div class="left-content">
	<span><p><b>Nhãn hàng</b></p>
		<input type="checkbox">rtr</br>
	    <input type="checkbox">rtr</br>
	    <input type="checkbox">rtr</br>
	<hr>
	</span>
<span><p><b>Chất liệu</b></p>
		<input type="checkbox">Da</br>
	    <input type="checkbox">Vải</br>
	    <input type="checkbox">Nỉ</br>
<hr>
	</span>
<span><p><b>Bảng giá</b></p>
		<input type="checkbox">0-1tr</br>
	    <input type="checkbox">1-2tr</br>
	    <input type="checkbox">2-5tr</br>
		<input type="checkbox">5-10tr</br>
		<input type="checkbox">>10tr</br>
<hr>
</span>
	</div>	
<div clas="right-content">
	<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'new')">Sản phẩm mới</button>
  <button class="tablinks" onclick="openCity(event, 'bestseller')">Sản phẩm bán chạy</button>
  <button class="tablinks" onclick="openCity(event, 'unique')">Sản phẩm độc lạ</button>
</div>

<div id="new" class="tabcontent active">
  <h3>Sản phẩm mới</h3>
   <div class="row">
    <div class="col-md-3">
      <div class="thumbnail">
	<a href="detail.php"><img Width="100%" src="sofaImage/bedroom/bedroomsofa (2).jpg"></a>
	 <span class="caption">
		  <ul>tên sản phẩm</ul>
		  <li>rate</li>
		  <li><strike>giá cũ</strike> <b class="text-danger">giá mới</b></li>
		  <button class="btn-danger">Mua ngay</button>
	  <button class="btn-default">Thêm vào giỏ hàng</button>
	  </span>
	</div>
	   </div>	
	
	
    <div class="col-md-3">
      <div class="thumbnail">
	<a href="detail.php"><img src="sofaImage/bedroom/bedroomsofa3.jpg"></a>
	 <span class="caption">
		  <ul>tên sản phẩm</ul>
		  <li>rate</li>
		  <li><strike>giá cũ</strike> <b class="text-danger">giá mới</b></li>
		  <button class="btn-danger">Mua ngay</button>
	  <button class="btn-default">Thêm vào giỏ hàng</button>
	  </span>
	</div>
	   </div>	
	</div>
	</div>
<div id="bestseller" class="tabcontent">
  <h3>Sảm phẩm bán chạy</h3>
	<div class="row">
    <div class="col-md-3">
      <div class="thumbnail">
	<a href="detail.php"><img src="sofaImage/bedroom/bedroomsofa4.jpg"></a>
	 <span class="caption">
		  <ul>tên sản phẩm</ul>
		  <li>rate</li>
		  <li><strike>giá cũ</strike> <b class="text-danger">giá mới</b></li>
		  <button class="btn-danger">Mua ngay</button>
	  <button class="btn-default glyphicon-shopping-cart">Thêm vào giỏ hàng</button>
	  </span>
	</div>
	   </div>	
	</div>
	</div>
<div id="unique" class="tabcontent">
  <h3>Sản phẩm độc lạ</h3>
  <div class="row">
    <div class="col-md-3">
      <div class="thumbnail">
	<a href="detail.php"><img src="sofaImage/bedroom/bedroomsofa (2).jpg"></a>
	 <span class="caption">
		  <ul>tên sản phẩm</ul>
		  <li>rate</li>
		  <li><strike>giá cũ</strike> <b class="text-danger">giá mới</b></li>
		  <button class="btn-danger">Mua ngay</button>
	  <button class="btn-default">Thêm vào giỏ hàng</button>
	  </span>
	</div>
	   </div>	
	</div>
</div>

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
</script>
     
	</div>	
	
	</div>	
</body>
</html>
<?php include("footer.php")?>