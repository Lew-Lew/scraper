require "open-uri"
require "nokogiri"

url = "https://fr.wikipedia.org/wiki/Wikip%C3%A9dia:Accueil_principal"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)
title = html_doc.search("title")

# html_doc.search(".standard-card-new__article-title").each do |element|
#   puts element.text.strip
#   puts element.attribute("href").value
# end
