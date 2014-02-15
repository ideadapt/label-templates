TOP = <<-TOP
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<style>
    body {
        margin: 0;
        margin-top: 0.25cm;
        padding: 0;
        background-color: transparent;
        font: 10pt "Helvetica";
    }
    .page{
        /* normal 29.7*21.0, druckrand von 3 mm
        / rechts und unten 0.3 abziehen.
        */
        width: 29.1cm;
        height: 20.15cm;
        border: 1px solid transparent;
    }
    .etikett{
        width: 7.2cm; /* 29.1/4 = 7.2... */
        height: 10.075cm;
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
    	margin-top: 0.3cm;
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
:header:
</header>
<h1>:h1:</h1>
<div class="teaser">
<img src="../:teaser:" />
</div>
<p><em>Schärfeskala: :hot: von 10+</em> :hot_postffix:</p>
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
		text: '<p>Reift schnell! Der Wuchs ist sehr verzweigt. Wuchshöhe 50 cm, Durch-messer ca. 50-70cm. Die leuchtend safrangelben Früchte haben einen wunderbar exotischfruchtigen Geschmack mit doch deutlicher Schärfe.</p>'
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
		text: '<p>Stammt ursprünglich aus der Karibik und gehört zu den Habanero-Chilitypen. Sehr ertragreich, und wunderbar scharf mit einer fruchtigen Note. Die Farbe der Früchte wechselt zur Reife von hellgrün nach kräftig rot.</p>'
	}
]

carts.each do |cart|
	filename = cart[:h1].gsub(/\s+/, '-').downcase
	hotness = cart[:hot].to_i
	cat = 0
	cat_index = [(0..5), (6..9),(10..10)].map{|r| cat += 1; r.include?(hotness) ? cat-1 : nil }.compact.first
	hot_postffix = ['', 'scharf!', 'sehr scharf!'][cat_index]

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
		f.write("<div class=\"etikett\"><article><header><img src=\"../logo.png\" class=\"logo\" />#{dynamic_content}<footer><p>Biologische Aufzucht von Floraritäten.</p></footer></article></div>")
	end
	f.write(BOTTOM)
	f.close

	`wkhtmltopdf -O landscape -s A4 -B 0 -R 0 -L 0 -T 0 ./out/tmp.html ./out/#{filename}.pdf`
	`open ./out/#{filename}.pdf`
end


