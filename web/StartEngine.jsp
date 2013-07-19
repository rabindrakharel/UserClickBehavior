<!DOCTYPE html>
<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title></title>
    <link href="default.css" rel="stylesheet">
   
    <style>
html, body {
  height: 100%;
  margin: 0;
  padding: 0;
}

#map-canvas, #map_canvas {
  height: 100%;
}

@media print {
  html, body {
    height: auto;
  }

  #map-canvas, #map_canvas {
    height: 350px;
    width : 350px;
  }
}

#panel {
  position: absolute;
  top: 5px;
  left: 50%;
  margin-left: -180px;
  z-index: 5;
  background-color: #fff;
  padding: 5px;
  border: 1px solid #999;
}</style>
 
    <div id="form" align >
	<form action="SendLog" method="POST">
	<fieldset class="fset">
	<label>Enter the log file Path</label><br/>
	  
        <input type="text"  name="FilePath" /> 
        <input type="submit" name="Submit" value="Submit">
        </form>
	</div>
  </body>
</html>

