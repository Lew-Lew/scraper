require "open-uri"
require "nokogiri"


def get_title(url)
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search("title").text.strip
end

# url = "prout.bite"
url = "https://fr.wikipedia.org/wiki/Wikip%C3%A9dia:Accueil_principal"
puts get_title(url)
