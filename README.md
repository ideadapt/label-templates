Installation
============
Install qt 4.x
(https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit)
`brew install qt`

Install wkhtmltopdf 0.9.9
`brew install https://raw.github.com/mxcl/homebrew/6e2d550cf4961129a790bfb0973f8e88704f439d/Li‌​brary/Formula/wkhtmltopdf.rb`

Usage
=====

Generate PDF for all defined carts:
`ruby printlayout.html.rb`

Generate PDF for carts starting at index start:
`ruby printlayout.html.rb -start=5`

Generate PDF for the last three carts:
`ruby printlayout.html.rb -start=-3`

Generate PDF for carts with matching teaser images:
`ruby printlayout.html.rb -teaser=tomate-`

Do not auto open generated pdf
`ruby printlayout.html.rb -no-open`
