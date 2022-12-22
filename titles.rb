require "open-uri"
require "nokogiri"

class MyError < StandardError
  def initialize(msg="should be HTML")
    super
  end
end

def get_title(url)
  html_file = URI.open(url)
  file_content_type = html_file.content_type.split(";").first

  if file_content_type == "text/html"
    html_doc = Nokogiri::HTML(html_file.read)
    html_doc.search("title").text.strip
  else
    raise MyError
  end
end

url = "https://www.google.com"
p get_title(url)
