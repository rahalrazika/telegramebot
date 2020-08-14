require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require_relative 'modules/config'

class Word
  def self.api_translate(word)
    url = URI("https://hirak-translate.p.rapidapi.com/tr/?to=fr&txt=#{word}&from=en")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request['x-rapidapi-host'] = Config::HIRAK_TRASLATOR_API_HOST
    request['x-rapidapi-key'] = Config::HIRAK_TRASLATOR_API_KEY

    response = http.request(request)
    result = JSON.parse(response.read_body)
    result
  end
end
