class Api::V1::ContentsController < Api::V1::BaseController
  
  def index
    contents = Content.all
    render_success({data: contents.to_json})
  end
  
  def create
    url = params[:url]
    html_tags = ContentExtractor.scrape(url)
    content = Content.create(url: url, h1_nodes: html_tags[0], h2_nodes: html_tags[1], h3_nodes: html_tags[2], links: html_tags[3])
    render_success
  end
  
  private
  
end
