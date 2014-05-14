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
        text: '<p>Zahlreiche, oliven- große, dunkelgrüne Früchte. Die Gurken können frisch ge- gessen oder eingelegt werden. Ausreichend düngen, ev. mit Pflanzen- jauchen. Wärmeliebend.</p>'
    },
    {
        header: '<img src="../icon-sun.png" class="icon sun" /><img src="../icon-can-34.png" class="icon can" />',
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
        text: '<p>Grosse, gerippte Früchte mit orangefarbener Schale und Fruchtfleisch. Mittlere Lagerfähigkeit. Fruchtgewicht ca. 5 - 20 kg. Pflanzabstand: 1.5 - 2 x 1m. Nährstoffbedarf: hoch.</p>'
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


