<!DOCTYPE html>
<html>
<head>
	<!-- #################################### Dependencies START #################################### -->
	<!-- Style CSS -->
	<link href="css/style.css" rel="stylesheet">
	<link href="css/createWiki.css" rel="stylesheet">
	<link href="css/uploadFile.css" rel="stylesheet">
	<script src="script/dropdown.js"></script>
	<!-- favicon -->
	<link href="img/favicon.png" rel=icon>
	<!-- createWiki CSS -->
	<link rel="stylesheet" type="text/css" href="css/createWiki/createWikiCSS.css">
	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="/bootstrap.min2.css">
	<script src="script/jquery.min.js"></script>
	<!-- VueJS -->
	<script src="script/vueJS/vue.js"></script>
	<!-- Navbar -->
	<link rel="stylesheet" type="text/css" href="css/dropdown.css">
	<!-- #################################### Dependencies END #################################### -->

	<meta charset="UTF-8"/>
    <title>Edit / Create Wiki Page</title>
</head>
<style>
</style>
<body>
<!-- #################################### NAVBAR START #################################### -->
<%@ include file="static/navbar.jsp"%>
<!-- #################################### NAVBAR END #################################### -->

<div id="diş-div">
<div  id="wrapper-div">
	<div style="">
		<!-- #################################### Create Wiki Text Box START #################################### -->
		<div id="button-div">
			<a href="#" class="btn btn-primary">Baslik Onayla</a>
			<a href="#" class="btn btn-primary">Paragraf Onayla</a>
			
			<form method="post" action="#" id="#">
				<div class="form-group files">
				  <label>Resim ekle </label>
				  <input type="file" class="form-control" multiple="">
				</div>			  
			</form>

			<div id="textbox-div" style="">
				<input id="titleBox" rows="1" cols="72" style="position: relative; margin-bottom: 5px; width : 100%; resize:none;" placeholder = "Konu giriniz." unselectable="on">
				<textarea  id="subject" rows="28" cols="72" style="position: relative; margin-bottom: 5px; width : 100%; resize:none;" placeholder = "Paragraf giriniz.">

				</textarea>
			</div>

		</div>
		<!-- #################################### Create Wiki Text Box END #################################### -->

	</div>




</div>
	<!-- #################################### Create Wiki Önizleme START #################################### -->
	<div id = "edit" >

	</div>
	<!-- #################################### Create Wiki Önizleme END #################################### -->
</div>



</body>
</html>












