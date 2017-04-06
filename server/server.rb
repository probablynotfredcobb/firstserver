require 'sinatra'
require 'nokogiri'
require 'httparty'

get '/' do

# File.read(File.join('public', 'hello.html'))
  the_entire_http_respone =  HTTParty.get("https://miami.craigslist.org/search/sof")

  code = Nokogiri::HTML(the_entire_http_respone.body)

  code.css('a.hdrlnk').each do |element|
     element.content
  end

end

get '/who_is_my_favorite' do
  "-------definitely still emma"
end
