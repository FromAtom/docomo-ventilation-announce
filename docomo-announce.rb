# -*- coding: utf-8 -*-
require 'net/http'
require 'uri'

API_KEY = 'YOUR_API_KEY'

endpoint = URI.parse('https://api.apigw.smt.docomo.ne.jp/voiceText/v1/textToSpeech')
endpoint.query = 'APIKEY=' + API_KEY

time_param =  ARGV[0]
if (time_param == 'end')
  text = '換気終了の時間です。ドアと窓を閉めて、エアコンと加湿器と空気清浄機をつけましょう。'
else
  text = '本日も研究活動、お疲れ様です。そろそろ換気の時間です。窓とドアをあけて10分間の換気をしましょう。'
end

request_body = {
  'text'=> text,
  'speaker'=> 'hikari'
}

res = Net::HTTP.post_form(endpoint, request_body)

file_name = "docomo.wav"
wave_file = File.binwrite(file_name, res.body)
`aplay docomo.wav`
wave_file = File.delete(file_name)
