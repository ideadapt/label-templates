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
    .icon.psr{
    	width: 0.75cm;
    }
    .icon.bio{
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
		h1: 'Violette Peperoni',
		teaser: 'violette-peperoni.png',
		hot: '0',
		text: '<p>Ideal für Topfkultur oder Gewächshaus. Die dickwandigen kleinen Blockfrüchte sind aromatisch und saftig, eine farbliche und kulinarische Bereicherung.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" />',
		h1: 'Cherry Zuckertraube',
		teaser: 'cherry-zuckertraube.png',
		text: '<p>Kleine, aromatische Delikatesse für den regengeschützten Anbau. Sie hat lange Trauben und einen starken Wuchs. Kann auch mehrtriebig gezogen werden. Sehr hoher und früher Ertrag. Geeignet für den Garten und Kübelanbau. Gezogen aus Demeter Samen.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Aubergine Striped Toga',
		teaser: 'aubergine-striped-toga.png',
		text: '<p>Exotisch anmutende, gestreifte Aubergine. Diese kuriose Aubeginensorte wechselt zur Reife ihre Farbe von verschiedenen Grüntönen zu einem leuchtenden Orange mit grünen Flammen. Aromatische 8cm lange Früchte, und nicht bitter.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" />',
		h1: 'Tomate Costoluto Genovese',
		teaser: 'tomate-costoluto-genovese.png',
		text: '<p>Eine der empfehlensertesten roten Fleischtomaten mit einem würzigen Aroma. Ein Massenträger der Sonder- klasse. Die roten, großen Fleischtomaten sind gerippt und schmecken hervorragend. Ideal für Pastasaucen. Sie trägt volle Trauben an saftigen Früchten von bester Qualität. Relativ frühe Reife für ihre Grösse.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" />',
		h1: 'Datteltomate Rosalita',
		teaser: 'datteltomate-rosalita.png',
		text: '<p>Die einzig uns bekannte pinke Traubensorte. Sehr reichtragende und wüchsige Pflanze mit ovalen rosa-pinken Früchtchen. Rosalita ist eine bereichernde neue Wahl für alle, die Datteltomaten lieben! Ernte August bis Oktober.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" />',
		h1: 'Datteltomate',
		teaser: 'datteltomate.png',
		text: '<p>Klein, aber fein! Datteltomaten gehören zu den schmackhaftesten im Tomaten-Sortiment. Manche nennen sie wegen ihrer länglichen Form, auch \'Küsschen-Tomaten\'. Die ca. 150 cm hohen Pflanzen tragen viele dicht mit Früchten besetzte lange Trauben und bringen hohen Ertrag.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Chili Naga Jolokia',
		hot: '10+',
		teaser: 'chili-naga-jolokia.png',
		text: '<p>Die schärfste Chilli der Welt mit einer Million Scoville Grad. Der Chilli \'Naga Jolokia\' wird in Indien kulitviert. Diese Chillifrüchte sind hellgrün und färben sich je nach Reifegrad ins orangerot. In durchlässige Erde pflanzen.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Pepper Beaver Dam',
		hot: '1',
		teaser: 'pepper-beaver-dam.png',
		text: '<p>Die konusförmigen Früchte sind ca. 8-11 cm und im Durchmesser ca. 5-6 cm lang. Sie sind 90-140 Gramm schwer und reifen sehr schön von grün über gelblich nach rot ab Sie sind knackig und von einer angenehmen milden Schärfe. In durch-lässige Erde pflanzen.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Pepper Golden Treasure',
		hot: '0',
		teaser: 'pepper-golden-treasure.png',
		text: '<p>Diese Paprika-Pflanze liefert enorme Mengen länglicher, gelb abreifender Paprikas. Die Früchte sind unheimlich aromatisch und süss. Zum Einlegen, grillen, in Gemüsegerichten, in Fleisch-gerichten und Salat.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" /><img src="../icon-prospezierara.png" class="icon psr" />',
		h1: 'Reisetomate',
		teaser: 'reisetomate.png',
		text: '<p>Historische Indianer-Tomate, deren verschachtelte Früchte sich in einzelne Segmente (Teifrüchte) teilen lassen, ohne dass dabei Saft oder Samen austritt. Gut für auf Reisen! Rarität! Diese Reise-Tomate zeichnet sich durch saftig-aromatische Früchte aus.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" />',
		h1: 'Pineapple',
		teaser: 'tomate-pineapple.png',
		text: '<p>Eine wahre Delikatesse! Diese 2 farbig gestreifte Tomate trägt große, schwere saftige Früchte mit fruchtig süßem Geschmack. Wenn man sie aufschneidet, ähnelt sie im Innern einem psychodelischen Strudel in rot gelb gold und pink!</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" />',
		h1: 'Tomate Cherokee Purple',
		teaser: 'tomate-cherokee-purple.png',
		text: '<p>Reichtragende Pflanzen mit 300 - 350 Gramm schweren, großen, flachrunden und  leicht gerippten, braunroten Früchten mit einem feinen, würzigen Tomaten-geschmack. Geschmacklich sehr gut, extrem süss und saftig. Mittelgroße Pflanze (bis 1,5 m) mit sehr frühem Erntebeginn ab Ende Juli.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" />',
		h1: 'Tomate Goliath',
		teaser: 'tomate-goliath.png',
		text: '<p>Gigantische Früchte! Die dunkelrosa- farbigen, faltigen Früchte sind sehr süss, mit einer feinen Säurekomponente. Dies ergibt einen angenehmen guten Ge-schmack. Die meisten Früchte wiegen zwischen 500 und1000 Gramm, aber es ist nicht ungewöhnlich auch mal eine Mammutausgabe von 1,4 Kg zu ernten.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" /><img src="../icon-prospezierara.png" class="icon psr" />',
		h1: 'Tomate Green Zebra',
		teaser: 'tomate-green-zebra.png',
		text: '<p>Sehr geschmackvolle Früchte, die hell- und dunkelgrün gestreift sind. Die Früchte werden bei der Reife gelblich. Stark wachsende Pflanzen. Ihr Geschmack wird als hervorragend ausgeglichen mit einem eher niedrigen Säuregehalt beschrieben. Die Früchte sind mittelgross und wiegen zwischen 80 und 120 Gramm. Eine wahre Delikatesse!</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" />',
		h1: 'Tomate Hillbilly',
		teaser: 'tomate-hillbilly.png',
		text: '<p>Absolute Schönheit unter den Tomaten! Für Salate und kalte Platten optimal. Die schönen gelben Früchte sind rot gestreift am unteren Ende und werden um die 300 Gramm schwer. Sie sind herrlich süss und saftig.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" /><img src="../icon-prospezierara.png" class="icon psr" />',
		h1: 'Tomate Ochsenherz',
		teaser: 'tomate-ochsenherz.png',
		text: '<p>Die Fleischtomate Ochsenherz ist eine sehr große und aromatische Sorte. Die Früchte werden sehr groß, bis zu 500 g schwer, sind stark gerippt, sehr fleischig und ähneln teilweise einem Ochsen-herzen.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" />',
		h1: 'Tomate Red Target',
		teaser: 'tomate-red-target.png',
		text: '<p>Die Früchte werden des guten Geschmackes geerntet, sobald die dunkelgrüne Haut sich unten rot zu verfärben beginnt; nicht wenn sie voll ausgereift / rot sind. \'Red Target\' bringt grosse Pflanzen hervor mit reichlicher Ernte.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" />',
		h1: 'Tomate Russisch Orange',
		teaser: 'tomate-russisch-orange.png',
		text: '<p>Die Russische Orange ist eine zweifarbige Ochsenherz-Tomate, und zeigt die besten Eigenschaften beider Arten. Trägt herzförmige Früchte mit einem Gewicht von bis zu 230 Gramm. Sie ist wunderschön marmoriert mit roten Farbstreifen und schmeckt köstlich süss und fruchtig im Geschmack.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" /><img src="../icon-prospezierara.png" class="icon psr" />',
		h1: 'Tomate Zürcher Original',
		teaser: 'tomate-zuercher-original.png',
		text: '<p>Rote Fleischtomate, flachrund, gerippt, fest, guter Geschmack und vollfleischig Erinnert im Querschnitt oft an ein Kleeblatt.</p><p>Ernte: Juli bis September.<br/>Gezogen aus Demeter Samen.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" /><img src="../icon-prospezierara.png" class="icon psr" />',
		h1: 'Jap. Trifele Black Tomato',
		teaser: 'tomate-trifele-black.png',
		text: '<p>Eine der besten russischen, schwarzen Tomaten. Erwarten Sie eine grosse Ernte der birnenförmigen Früchte mit reichem vollem Geschmack.</p><p>Kartoffelblättrige Sorte mit 100 bis 150 Gramm schweren Früchten. Erntezeit Juli bis Oktober.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" />',
		h1: 'Tomate Black Zebra',
		teaser: 'tomate-black-zebra.png',
		text: '<p>Saftige, wohlschmeckende, süsse rote Früchte mit Längsstreifen. Diese Sorte gehört zu den schönsten Sorten der Welt. Die Früchte sind von einem dunklen rot-braun mit grünen Streifen. Die runden, abgeflachten Früchte werden bis 200 Gramm schwer, gut lagerfähig.<br/>Gezogen aus Demeter Samen.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" /><img src="../icon-bio.jpeg" class="icon bio" />',
		h1: 'Tomate Sibirische Frühe',
		teaser: 'tomate-sibirische-fruehe.png',
		text: '<p>Die Tomate, die aus der Kälte kommt und bereits Ende Juni reift und auch auf dem Balkon gedeiht. Die Grösse der Frucht variiert von klein bis mittel. Das Fruchtfleisch ist fest und sehr aromatisch. Kann gut im Topf kultiviert werden.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" />',
		h1: 'Tomate Indigo Rose',
		teaser: 'tomate-indigo-rose.png',
		text: '<p>Die sonnenabgewandte Seite ist anfänglich grün und färbt sich während der Reife hin nach rot. Erhält an der sonnenzugewandten Seite eine indigoblaue Farbe. Das Tomatenfleisch selbst hat einen roten Farbton. Ertrag sehr produktiv. Sie hat einen guten Geschmack und die Pflanzen sind robust und resistent.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-44.png" class="icon can" />',
		h1: 'Tomate Berner Rose',
		teaser: 'tomate-berner-rose.png',
		text: '<p>Späte, fleischige und schmackhafte, leicht süsse Früchte. Viel Tomatenaroma. Die Früchte sind rosarot und saftig-weich. Ihre Fruchtform ist uneinheitlich, mal groß wie eine Fleischtomate, mal klein wie eine normale Obsttomate. Eine der besten Tomaten!<br/>Gezogen aus Demeter Samen.</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Gemüsepaprika Szegediner',
		teaser: 'paprika-szegediner.png',
		text: '<p>Sehr grossfruchtiger, fleischiger und milder Gemüsepaprika. Für unsere Verhältnisse gezüchtet. Bringt hohe Erträge bei sehr gutem Geschmack.</p><p>Pflanzzeit: Mai bis Juni<br/>Erntezeit: August bis November</p>'
	},
	{
		header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
		h1: 'Aubergine Pingtung Long',
		teaser: 'aubergine-pingtung-long.png',
		text: '<p>Sehr schöne Aubergine die aus der Stadt Pingtung in Taiwan stammt. Die schlanken Früchte werden mindestens 30 cm lang und haben einen herrlich milden Geschmack und zartes Fruchtfleisch. Die Pflanze ist sehr kraftvoll und krankheits- resistent. Eine fantastische Aubergine, nicht nur für die orientalische Küche!</p>'
	}
]

# tomaten , zuccetti, gurken, kürbis

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


