require 'open-uri'

class HomeController < ApplicationController
  def index
  end

  def bbindex
    
    @address = params[:urladdress]
    @doc = Nokogiri::HTML(open(@address))
    @product = @doc.xpath("//div[@class='detailtt ']/h3").inner_text
    @price = @doc.xpath('//span[@id="span_product_price_text"]').inner_text
    @imagesrc = @doc.xpath("//img[@class='cloudzoom']/@src").to_s

  end
end
