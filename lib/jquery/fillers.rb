module Fillers
  
  def skin_filler
    gray1 = "#555"
    gray2 = "#e5e5e5"
    gray3 = "#d5d5d5"
    gray4 = "#c5c5c5"
    blue  = "#6b99bf"
    border1 = "1px solid #{gray2}"
    border2 = "2px solid #{gray3}"
    border3 = "2px solid #{gray4}"
    
    <<-SKIN
/* 

	Skin

	Author:			#{author_name}
	Date:			  #{Date.today.strftime("%d %b, %Y")}

	Description:
	===============================================================
	Place styles that will affect the look and feel for your site.
	You should not have to modify reset.css, typography.css, grids.css
	or application.css if you are using the grids css system.

*/

body {
	color: #555;
}

#container {
	border-top: #{border1};
	border-left: #{border1};
	border-right: #{border2};
	border-bottom: #{border3};
	margin: 2.30em auto;
	padding: 0.77em;
	width: 73.85em;
}

#pagetitle {
	border-bottom: 2px solid #{gray2};
	padding-bottom: 0.385em;
}

	#pagetitle span {
		color: #{blue};
	}

.clearfix {
	overflow: hidden;
	_overflow: visible;
	zoom: 1;
}

pre {
	background-color: #{gray2};
	margin-bottom: 0.77em;
	overflow: auto;
	padding: 0.77em;
}

table {
	background-color: #efefef;
	border-collapse: collapse;
	border-color: #999;
	width: 100%;
}

tr, td, th {
	border-color: #ccc;
}

tr:nth-child(even) {
	background-color: #f5f5f5;
}

th {
	background-color: #444;
	color: #fff;
}
    SKIN
  end
  
  def index_filler
    str <<-INDEX
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>#{project_name}</title>

		<link rel="stylesheet" href="stylesheets/application.css" type="text/css" media="screen" title="no title" charset="utf-8">
		<script src="javascripts/jquery-1.3.2.js" type="text/javascript" charset="utf-8"></script>
    INDEX
    
    if extras
      str <<-EXTRAS
    <script src="javascripts/jquery.easing-1.3.js" type="text/javascript" charset="utf-8"></script>
		<script src="javascripts/jquery.form-2.28.js" type="text/javascript" charset="utf-8"></script>
		<script src="javascripts/jquery.ekko-0.1.js" type="text/javascript" charset="utf-8"></script>
		  EXTRAS
	  end
	  
	  str <<-INDEX
		<script src="../lib/jquery.#{project_name}.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<div id="container">
			<h1 id="pagetitle">jQuery Plugin: <span>#{project_name}</span></h1>

			<h2>Description</h2>
			<p>Place your plugin description here.</p>

			<h2>Options</h2>
			<p>Place any options for your plugin here.</p>

			<h2>Examples</h2>
			<p>Place any examples for your plugin here.</p>
		</div>
	</body>
</html>
    INDEX
    str
  end
  
  def js_filler
    <<-JS
/**
* #{project_name} - jQuery Plugin
*
* Version - 0.1
*
* Copyright (c) #{Date.today.year} #{author_name}
*  
* Permission is hereby granted, free of charge, to any person obtaining a copy of
* this software and associated documentation files (the "Software"), to deal in
* the Software without restriction, including without limitation the rights to
* use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
* the Software, and to permit persons to whom the Software is furnished to do so,
* subject to the following conditions:
*  
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*  
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
* FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
* COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
* IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
* CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*
*/
    JS
  end
  
end