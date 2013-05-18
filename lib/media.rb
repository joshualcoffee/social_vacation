require 'nokogiri'
require 'open-uri'

module Media

  def scrape_images(url)
    doc = Nokogiri::HTML(open(url))
    url = url.slice( /\A(http|https)(:\/\/){1}[a-z0-9\-\.]{1,}/i )
    images = []
    doc.css("img").each do |img|

      img = img['src']
      if img =~ /\A\/.*/
        src =  url + img
    # Check for complete link
      elsif img =~ /\Ahttp|https/i
        src =  img
    # Handle a relative path
      else
        src =  url + '/' + img
      end
      puts src
      size = FastImage.size(src)
      if size[0] > 1 && size[1] > 1 
        images << src
      end
    end
    images
  end


end