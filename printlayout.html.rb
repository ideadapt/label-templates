TOP = <<-TOP
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<style>
	* {
		box-sizing: content-box;
		-webkit-box-sizing: content-box;
		border: 0;
	}

    body {
    	margin: 0;
    	padding: 0;
        font: 10pt "Helvetica";
    }
    .page{
		margin: 0;
		width: 28.85cm;
    	height: 20cm;
        /*width: 28.86cm;
        height: 20.16cm;*/
    }
    .etikett{
        width: 6.58cm; /*  */
        height: 10cm;
        margin: 0;
        padding: 0;
        padding-left: 4.2mm;
        padding-right: 4.2mm;
        float: left;
        position: relative;
        border: 0px solid green;
    }
    .etikett.alpha{
    	padding-left: 0;
    }
    .etikett.omega{
    	padding-right: 0;
    }
    .etikett>article{
    	padding: 0;
    	margin: 0;
    	text-align: justify;
    }
    .row-2.etikett>article{
    	padding-top: 4.2mm;
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
    	height: 4.0cm;
    	overflow: hidden;
    }
    .teaser>img{
    	width: 100%;
    }
    .teaser~p{
    	margin-top: 0.2cm;
    	margin-bottom: 0;
    	padding-bottom: 0;
    	padding-top: 0;
    }
    h1{
    	text-align: center;
    	margin-top: 0.1cm;
    	margin-bottom: 0.1cm;
    	font-size: 16pt;
    }
    em+span{
    	float: right;
    	display: inline-block;
    }
    h1+small{
    	display: inline-block;
    	margin-bottom: 0.2cm;
    	font-size: 8pt;
    	text-align: center;
    	width: 100%;
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
:header:
</header>
<h1>:h1:</h1>
<small>Biologische Aufzucht von Floraritäten.</small>
<div class="teaser">
<img src="../:teaser:" />
</div>
<p><em>Schärfeskala: :hot: von 10+</em><span>:hot_postffix:</span></p>
:text:
EOF

carts = [
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Chili Mustard Habanero',
		teaser: 'chili-mustard-habanero.png',
		hot: '9',
		text: '<p>Diese produktiven Pflanzen tragen viele Früchte, welche von hellgrün mit einem Hauch von purpur über senfgelborange bis zu einem leuchtenden orange ausreifen.</p><p>In durchlässige Erde pflanzen.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Chili Orange Habanero',
		teaser: 'chili-orange-habanero.png',
		hot: '10',
		text: '<p>Sie produziert eine große Zahl an Blüten und Früchten. Der Geschmack ist sehr aromatisch und erinnert stark an Aprikosen, verliert sich aber beim Trocknen etwas. Die Farbe wechselt von dunkel grün nach orange. Höhe -70 cm, Breite -65 cm!</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Paprika Hot Fire',
		teaser: 'paprika-hot-fire.png',
		hot: '9',
		text: '<p>Die Pflanzen bleiben gedrungen und kompakt und bilden kleine, schön geformte Früchte, die von orange-rot bis gelb abreifen. In geringen Mengen verwendet, verleihen sie jedem Gericht eine angenehme und einzigartige exotische Schärfe.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Chili Criolla Sella',
		teaser: 'chili-criolla-sella.png',
		hot: '8',
		text: '<p>Reift schnell! Der Wuchs ist sehr verzweigt. Wuchshöhe 50 cm, Durch-messer ca. 50 - 70cm. Die leuchtend safrangelben Früchte haben einen wunderbar exotischfruchtigen Geschmack mit doch deutlicher Schärfe.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Violette Peperoni',
		teaser: 'violette-peperoni.png',
		hot: '0',
		text: '<p>Ideal für Topfkultur oder Gewächshaus. Die dickwandigen kleinen Blockfrüchte sind aromatisch und saftig, eine farbliche und kulinarische Bereicherung.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Chili Carribean Red',
		teaser: 'chili-carribean-red.png',
		hot: '10',
		text: '<p>Stammt ursprünglich aus der Karibik und gehört zu den Habanero-Chilitypen. Sehr ertragreich, und wunderbar scharf mit einer fruchtigen Note. Die Farbe der Früchte wechselt zur Reife hin von hellgrün nach kräftig rot.</p>'
	}
]

carts.each do |cart|
	filename = cart[:h1].gsub(/\s+/, '-').downcase
	hotness = cart[:hot].to_i
	cat = 0
	cat_index = [(0..1), (2..5), (6..8),(9..10)].map{|r| cat += 1; r.include?(hotness) ? cat-1 : nil }.compact.first
	hot_postffix = ['mild', 'scharf', 'scharf!', 'sehr scharf!'][cat_index]

	dynamic_content = CART
						.gsub(/:header:/, cart[:header])
						.gsub(/:hot_postffix:/, hot_postffix)
						.gsub(/:h1:/, cart[:h1])
						.gsub(/:teaser:/, cart[:teaser])
						.gsub(/:hot:/, cart[:hot])
						.gsub(/:text:/, cart[:text])

	f = File.open('./out/tmp.html', 'w:UTF-8')
	f.write(TOP)
	(1..8).each do |ci|
		colClass = []
		colClass << 'alpha' if ci%4 == 1
		colClass << 'omega' if ci%4 == 0
		colClass << 'row-2' if ci>4
		f.write("<div class=\"etikett #{colClass.join(' ')}\"><article><header><img src=\"../logo.png\" class=\"logo\" />#{dynamic_content}</article></div>")
	end

	f.write(BOTTOM)
	f.close

	`exec wkhtmltopdf -O landscape -s A4 -B 4.2mm -R 4.2mm -L 4.2mm -T 4.2mm ./out/tmp.html ./out/#{filename}.pdf; exit;`
	`open ./out/#{filename}.pdf`
end


