require 'nokogiri'
require 'open-uri'

class ContentExtractor
  
  
  def self.scrape(url)
    page = Nokogiri::HTML(open(url))
    h1_nodes = []
    h2_nodes = []
    h3_nodes = []
    link_nodes = []
    
    page.css('h1').each do |h1|
      h1_nodes << h1.text.strip
    end
    
    page.css('h2').each do |h2|
      h2_nodes << h2.text.strip
    end
    
    page.css('h3').each do |h3|
      h3_nodes << h3.text.strip
    end
    
    page.css('a').each do |a|
      link_nodes << a['href']
    end
    
    return h1_nodes, h2_nodes, h3_nodes, link_nodes
  end
end