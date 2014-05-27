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
        font: 8pt "Helvetica";
    }
    .page{
		margin: 0;
		width: 20.0cm;
    	height: 28.85cm;
        /*width: 28.86cm;
        height: 20.16cm;*/
    }
    .etikett{
        width: 6.1cm; /*  */
        height: 4.7cm;
        margin: 0;
        padding: 0;
        padding-left: 2.2mm;
        padding-right: 2.2mm;
        float: left;
        position: relative;
        border: 0px solid green;
    }
    .etikett.alpha{
    	padding-left: 5.2mm;
    }
    .etikett.omega{
    	padding-right: 0;
    }
    .etikett>article{
    	padding: 0;
    	padding-top: 3.5mm;
    	margin: 0;
    	text-align: left;
    }
    .row-2.etikett>article{
    	padding-top: 4.7mm;
    }
    .row-3.etikett>article{
		padding-top: 5.5mm;
    }
    .row-5.etikett>article{
		padding-top: 5mm;
    }
    .row-6.etikett>article{
		padding-top: 5mm;
    }
    .icon{
    	float: right;
    	margin-left: 0.3cm;
    }
    .icon.can{
    	width: 0.5cm;
    }
    .icon.sun{
    	width: 0.5cm;
    }
    .icon.psr{
    	width: 0.5cm;
    }
    .icon.bio{
    	width: 0.5cm;
    }
    .logo{
    	width: 2.5cm;
    }
    .teaser{
    	float: left;
    	width: 50%;
        max-height: 2.5cm;
    	margin-right: 1mm;
    	overflow: hidden;
    }
    .teaser>img{
    	width: 100%;
    }
    .teaser~p{
    	margin-top: 0;
    	margin-bottom: 0;
    	padding-bottom: 0;
    	padding-top: 0;
    }
    h1{
    	text-align: center;
    	margin-top: 0.1cm;
    	margin-bottom: 0.3cm;
    	font-size: 10pt;
    }
    small{
        float: right;
    	padding-left: 1mm;
        padding-top: 2mm;
    	margin-bottom: 0.2cm;
    	font-size: 6pt;
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
<small>Biologische Aufzucht</small>
</header>
<h1>:h1:</h1>
<div class="teaser">
<img src="../:teaser:" />
</div>
:text:
EOF

carts = [
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Cocktailgurke',
        teaser: 'gemuese-cocktailgurke.png',
        text: '<p>Zahlreiche, oliven- große, dunkelgrüne Früchte. Die Gurken können frisch ge- gessen oder eingelegt werden. Ausreichend düngen, ev. mit Pflanzenjauchen. Wärmeliebend.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" /><img src="../icon-prospezierara.png" class="icon psr" />',
        h1: 'Gurke Vorgebirgstraube',
        teaser: 'gemuese-gurke-vorgebirgstraube.png',
        text: '<p>Frühe, reichtragende Gewürz- Einlegegurke mit festem Fleisch. Kleine Früchte zum Einlegen als Cornichons, grössere als Senfgurken. Pflanzabstand: 100x50cm. Nährstoffbedarf: hoch.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Kletterzucchetti Black Forest',
        teaser: 'gemuese-kletterzucchetti-black-forest.png',
        text: '<p>"Black Forest" ist eine rankende Zucchini, geeignet für die Kulturführung am Pflanzstab. Enorm ertragreich bis zum Frost. Wuchshöhe bis zu 2m. Hoher Nährstoffbedarf.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Kürbis Butternut',
        teaser: 'kuerbis-butternut.png',
        text: '<p>Hellgelber, birnförmiger, nussig delikater Kürbis. Pflanzabständ 80-100 cm allseitig, nährstoffreiche Erde. Er lässt sich über Monate lagern und entwickelt nach ca. 3 Monaten sein bestes Aroma. Lagerung bei mind. 15°C.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Kürbis Futsu Black',
        teaser: 'kuerbis-futsu-black.png',
        text: '<p>Kleinere, dunkelgrüne Früchte, später beige mit grauem Überzug. Orangefarbenes Fruchtfleisch. Sehr guter Geschmack, gut lagerfähig. Rankend. Fruchtgewicht ca. 1 - 2 kg. Nährstoffbedarf: mittel bis hoch.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Kürbis Roter Zentner',
        teaser: 'kuerbis-roter-zentner.png',
        text: '<p>Grosse, gerippte Früchte mit orange- farbener Schale und Fruchtfleisch. Mittlere Lagerfähigkeit. Fruchtgewicht ca. 5 - 20 kg. Nährstoffbedarf: hoch.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Kürbis Jack be Little',
        teaser: 'kuerbis-jack-be-little.png',
        text: '<p>Faustgrosser oranger Kürbis mit unvergleichlichem Geschmack. Wird in Stücke geschnitten und gebraten oder im Ofen gebacken. Nährstoffbedarf: hoch.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Kürbis Bischofsmütze',
        teaser: 'kuerbis-bischofsmuetze.png',
        text: '<p>Durch charakteristische Form sehr dekorativ. Kann gegessen werden. Fruchtgewicht 1 - 1.5 kg. Nährstoffbedarf: mittel. Wärmebedarf: mittelhoch.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Kürbis Muscat',
        teaser: 'kuerbis-muscat.png',
        text: '<p>Dunkelgrüne, später beige-graue, gerippte Früchte und dunkeloranges Fruchtfleisch. Hervorragender Geschmack. Fruchtgewicht ca. 5 - 10 kg. Nährstoffbedarf: hoch.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Kürbis Rondini',
        teaser: 'kuerbis-rondini.png',
        text: '<p>Viele kleine, runde Früchte, die im jungen Zustand wie Zucchetti gegessen werden können. Fruchtgewicht 200 - 300 g. Aus der Familie der Kürbisgewächse. Nährstoffbedarf: mittel.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Kürbis Tetsukabuto',
        teaser: 'kuerbis-tetsukabuto.png',
        text: '<p>Wird ca. 2,5 kg schwer, nussig-delikater Geschmack. Gute Lagerfähigkeit. Zum Tiefkühlen geeignet. Können 3-4 Monate gelagert werden. Hoher Nährstoff- und Wasserbedarf, sonnigen Standort.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Melone Charentais',
        teaser: 'melone-charentais.png',
        text: '<p>Mittelgroße Melone mit glatter Haut. Das orangerote Fleisch ist sehr süß. Bei zeitiger Anzucht reifen die Früchte im August. Nährstoffreicher Boden und Kompostgaben von Vorteil.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Melone Gris de Rennes',
        teaser: 'melone-gris-de-rennes.png',
        text: '<p>Kleinere, 400 - 600g schwere, süße Früchte, die auch unter weniger warmen Bedingungen gut ausreifen. Frühreif und aromatisch.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Mini Gurke Patio Snack',
        teaser: 'mini-gurke-patio-snack.png',
        text: '<p>Die Mini-Gurke (erntereif ab ca. 8 cm). bildet viele schmack- haften Delikatessen. Sie ernten regelmäßig knackige, grün glän- zende Snackgurken in bester Qualität. So wird der Balkon zum vertikalen Gartenbeet.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Nostranogurke',
        teaser: 'gurke-nostrano.png',
        text: '<p>Kurze, kräftige Gurke mit leicht stacheliger Haut. Sie ist gut im Geschmack. Nährstoffreicher Boden, Kompost und Mulchdecke sind von Vorteil.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Wassermelone Rubin',
        teaser: 'wassermelone-rubin.png',
        text: '<p>Eine Wassermelone für Ihren Garten. Diese Sorte reift auch bei uns sicher aus. Benötigt reichen, durchlässigen Boden. Nährstoffreicher Boden und Kompostgaben von Vorteil.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Wassermelone Small Shining Light',
        teaser: 'wassermelone-small-shining-light.png',
        text: '<p>Wassermelone mit ca. 30 cm großen, runden Früchten. Sehr dunkle Schale mit süßem rotem Fleisch. Früh reifende Sorte, für unsere Gärten absolut empfehlenswert!</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Zierkürbis Mix',
        teaser: 'zierkuerbis-mix.png',
        text: '<p>Einzigartige relativ kleine dekorative Früchte mit langem Hals oder farbigen Warzen und Graten. Benötigen warmen Standort, hoher Nährstoff- und Wasserbedarf.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Zucchetti Verte de Maraicher',
        teaser: 'zucchetti-verte-de-maraicher.png',
        text: '<p>Ältere Sorte aus dem Genfersee Gebiet. Pflanzabstand: 100 x 75 cm. Nährstoffbedarf: hoch. Wärmebedarf hoch.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Zucchetti Runde von Nizza',
        teaser: 'zucchetti-runde-von-nizza.png',
        text: '<p>Pflanze mit runden, hellgrünen Früchten, die jung geerntet werden sollten (Tennisballgrösse). Ca. 500g bis 1,5 kg, begrenzt lagerfähig. Nährstoffbedarf: hoch.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" /><img src="../icon-bio.jpeg" class="icon bio" />',
        h1: 'Zuckermelone Ancien',
        teaser: 'melone-ancien.png',
        text: '<p><strong>Zuckersüsse, saftige und aromatische Früchte.</strong></p><p>Reifen am warmen Standort auch in unserem Klima. Die rankenden Pflanzen müssen nicht aus- geschnitten werden.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" /><img src="../icon-bio.jpeg" class="icon bio" />',
        h1: 'Kürbis oranger Knirps',
        teaser: 'kuerbis-oranger-knirps.png',
        text: '<p>Süsses Karroten-, Marroni- und Kartof- felaroma, sehr delikat! Für Suppen, zum Anbraten, Kuchen, Gratins, Pures und Aufläufe. Kann mit der Schale gegessen werden! Lagerdauer 5-6 Monate.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
        h1: 'Melone süsses Wunder',
        teaser: 'melone-suesses-wunder.png',
        text: '<p>Eine besonders frühreife Sorte, die mit Sicherheit ausreift. Auf schwarze Folie pflanzen, Melonen in ein Netz legen, damit sie nicht herunterfallen oder auf eine Kiste legen.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" /><img src="../icon-bio.jpeg" class="icon bio" />',
        h1: 'Salatgurke Marketmore',
        teaser: 'salatgurke-marketmore.png',
        text: '<p>Sehr robuste, bitterfreie Salatgurke Slicertyp mit dunkelgrünen, 20 - 25 cm langen, glatten Früchten. Für gedeckten- und Freilandanbau. Widerstandsfähig gegen verschiedene Gurkenkrankheiten.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" /><img src="../icon-bio.jpeg" class="icon bio" />',
        h1: 'Zucchetti Golden Butter',
        teaser: 'zucchetti-golden-butter.png',
        text: '<p>Hübsch gelb ist er. Er soll möglichst jung geerntet werden (10 cm), dann ist er butterzart. Die vielen grossen, männlichen Blüten eignen sich -im Bierteig gewendet- vorzüglich zum Fritieren. Pflanzabstand 80-100 cm allseitig.</p>'
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

	f = File.open('./out/tmp.html', 'w:UTF-8')
	f.write(TOP)
	(1..18).each do |ci|
		colClass = []
		colClass << 'alpha' if ci%3 == 1
		colClass << 'omega' if ci%3 == 0
		colClass << 'row-3' if ci>6 && ci<=9
		colClass << 'row-4' if ci>9 && ci<=12
		colClass << 'row-5' if ci>12 && ci<=15
		colClass << 'row-6' if ci>15 && ci<=18
		f.write("<div class=\"etikett #{colClass.join(' ')}\"><article><header><img src=\"../logo.png\" class=\"logo\" />#{dynamic_content}</article></div>")
	end

	f.write(BOTTOM)
	f.close

	puts "Generating #{filename}.pdf"
	`wkhtmltopdf --quiet -s A4 -B 4.2mm -R 4.2mm -L 4.5mm -T 4.2mm ./out/tmp.html ./out/#{filename}.pdf`

	`open ./out/#{filename}.pdf`
end


