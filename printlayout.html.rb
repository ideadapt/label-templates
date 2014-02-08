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
        width: 29.7cm;
        height: 20.9cm;
        border: 1px solid transparent;
    }
    .row{
        height: 9cm;
        padding-top: 0.2cm;
        margin-top: 1.6cm;
    }
    .etikett{
        width: 7.425cm;
        height: 100%;
        float: left;
        position: relative;
        border: 0px solid green;
    }
    .etikett>article{
    	padding: 0;
    	padding-left: 0.3cm;
    	padding-right: 0.3cm;
    	text-align: justify;
    	margin-top: -1.4cm;
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
    	margin-top: 0.8cm;
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
(1..2).each do |ri|

	f.write('<div class="row">')
	(1..4).each do |ci|
		f.write("<div class=\"etikett\">#{CART}</div>")
	end
	f.write('</div>')
end
f.write(BOTTOM)
f.close

`wkhtmltopdf -O landscape -s A4 -B 0 -R 0 -L 0 -T 0 print.html print.pdf`
`open print.pdf`
