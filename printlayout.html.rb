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
	.hidden{
		display: none;
		visibility: hidden;
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
<p class=":hot_css_class:"><em>Schärfeskala: :hot: von 10+</em><span>:hot_postffix:</span></p>
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
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Chili chilaca',
		teaser: 'chili-chilaca.png',
		hot: '3',
		text: '<p>Hat einen reichen, leicht scharfen, rauchigen Geschmack. Die Früchte reifen von dunkelgrün zu dunkelbraun ab. Die Früchte sind 15cm bis 30cm lang und 3 bis 4cm breit. Von der Form her länglich und leicht unregelmäßig.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Chili Red Cap Mushroom',
		teaser: 'chili-red-cap-mushroom.png',
		hot: '4',
		text: '<p>Diese kuriose Chili trägt abgeflachte glockenförmige Früchte, welche von hellgrün zu leuchtend rot ausreifen. Schönes, scharf-fruchtiges Aroma, ideal zum Einlegen oder Trocknen. Ein echter Hingucker!</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Chili Thai Hot',
		teaser: 'chili-thai-hot.png',
		hot: '8',
		text: '<p>Thai Hot ist eine stark verzweigte Sorte, und trägt bis zu 150 Schoten pro Pflanze! Höhe: 60 bis 70cm. Früchte: bis 9cm lang. Sie eignen sich hervorragend zum trocknen. Die Farbe verläuft zur Reife von einem mittleren grün zu dunkelrot.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Chili Bhut Jolikia',
		teaser: 'chili-bhut-jolikia.png',
		hot: '10+',
		text: '<p>Auch Geister-Chili genannt. Sie stammt aus Nordindien und wurde 2006 als die schärfste Chili der Welt ins Guinness-Buch der Rekorde aufgenommen. Hat über eine Million Scoville!!! Grün oder rot ernten und nur ganz wenig verwenden!!!</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Chili Balloonpepper',
		teaser: 'chili-balloonpepper.png',
		hot: '7',
		text: '<p>Einzelne glockenförmige Früchte, mit 3 oder 4 flachen Flügeln. Das Fleisch ist schmackhaft, knackig und süß, aber die Samen und Plazenta sind extrem scharf. In durchlässige Erde pflanzen.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Cherry Zuckertraube',
		teaser: 'cherry-zuckertraube.png',
		text: '<p>Kleine, aromatische Delikatesse für den regengeschützten Anbau. Sie hat lange Trauben und einen starken Wuchs. Kann auch mehrtriebig gezogen werden. Sehr hoher und früher Ertrag. Geeignet für den Garten und Kübelanbau. Gezogen aus Demeter Samen.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Aubergine Striped Toga',
		teaser: 'aubergine-striped-toga.png',
		text: '<p>Exotisch anmutende, gestreifte Aubergine. Diese kuriose Aubeginensorte wechselt zur Reife ihre Farbe von verschiedenen Grüntönen zu einem leuchtenden Orange mit grünen Flammen. Aromatische 8cm lange Früchte, und nicht bitter.</p>'
	}
]

start_index = 0
ARGV.each do |arg|
	name, value = arg.split('=')
	if name == '-start'
		start_index = value.to_i
		start_index = carts.length + start_index if start_index < 0
	end
end
puts "Starting at #{start_index+1} out of #{carts.length}"

carts.each_with_index do |cart, i|
	next if i < start_index

	filename = cart[:h1].gsub(/\s+/, '-').downcase

	dynamic_content = CART
						.gsub(/:header:/, cart[:header])
						.gsub(/:h1:/, cart[:h1])
						.gsub(/:teaser:/, cart[:teaser])
						.gsub(/:text:/, cart[:text])
	if cart[:hot]
		hotness = cart[:hot][0..1].to_i
		cat = 0
		cat_index = [(0..1), (2..4), (5..7),(8..8), (9..10)].map{|r| cat += 1; r.include?(hotness) ? cat-1 : nil }.compact.first
		hot_postffix = ['mild', 'pikant', 'scharf', 'sehr scharf!!', 'sehr scharf!!!'][cat_index]

		dynamic_content
						.gsub!(/:hot_postffix:/, hot_postffix)
						.gsub!(/:hot:/, cart[:hot])
						.gsub!(/:hot_css_class:/, '')
	else
		dynamic_content.gsub!(/:hot_css_class:/, 'hidden')
	end

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

	puts "Generating #{filename}.pdf"
	`wkhtmltopdf --quiet -O landscape -s A4 -B 4.2mm -R 4.2mm -L 4.5mm -T 4.2mm ./out/tmp.html ./out/#{filename}.pdf`

	`open ./out/#{filename}.pdf`
end


