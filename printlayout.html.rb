TOP = <<-TOP
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<style>
    body {
        margin: 0;
        padding: 0;
        background-color: transparent;
        font: 10pt "Helvetica";
    }
    .page{
        // normal 29.7*21.0, druckrand von 3 mm
        // rechts und unten 0.3 abziehen.
        width: 29.1cm;
        height: 20.4cm;
        border: 1px solid transparent;
    }
    .etikett{
        width: 7.2cm; // 29.1/4 = 7.2...
        height: 10cm;
        float: left;
        position: relative;
        border: 0px solid green;
    }
    .etikett>article{
    	padding: 0;
    	padding-left: 0.5cm;
    	padding-right: 0.3cm;
    	text-align: justify;
    	padding-top: 0.3cm;
    }
    .icon{
    	float: right;
    	margin-left: 0.3cm;
    }
    .icon.can{
    	width: 0.75cm;
    }
    .icon.sun{
    	width: 0.75cm;
    }
    em{
    	font-weight: bold;
    	font-style: normal;
    }
    .logo{
    	width: 3cm;
    }
    .teaser{
    	height: 3.2cm;
    	overflow: hidden;
    }
    .teaser>img{
    	width: 100%;
    }
    h1{
    	text-align: center;
    	margin-top: 0.5cm;
    	font-size: 16pt;
    }
</style>
</head>
<body>
<div class="page">
TOP

BOTTOM = <<-EOF
</div>
</body>
</html>
EOF

CART = <<-EOF
<article>
<header>
<img src="logo.png" class="logo" />
<img src="icon-sun.png" class="icon sun" />
<img src="icon-can-34.png" class="icon can" />
</header>
<h1>Chili Mustard Habanero</h1>
<div class="teaser">
<img src="habanero.png" />
</div>
<p><em>Schärfeskala: 9 von 10+</em> Sehr scharf!</p>
<p>Diese produktiven Pflanzen tragen viele Früchte, welche von hellgrün mit einem Hauch von purpur über senfgelborange bis zu einem leuchtenden orange ausreifen.</p>
<p>In durchlässige Erde pflanzen.</p>
<footer>
<p>Biologische Aufzucht von Floraritäten.</p>
</footer>
</article>
EOF

f = File.open('print.html', 'w:UTF-8')
f.write(TOP)

	(1..8).each do |ci|
		f.write("<div class=\"etikett\">#{CART}</div>")
	end

f.write(BOTTOM)
f.close

`wkhtmltopdf -O landscape -s A4 -B 0 -R 0 -L 0 -T 0 print.html print.pdf`
`open print.pdf`
