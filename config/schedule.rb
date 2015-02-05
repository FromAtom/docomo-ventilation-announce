# -*- coding: utf-8 -*-
set :output, "#{Whenever.path}/log/crontab.log"

# 昼の換気
every 1.day, :at => '12:20 pm' do
  command "cd #{Whenever.path} && bundle exec ruby docomo-announce.rb"
end

# 昼の換気終わり
every 1.day, :at => '12:20 pm' do
  command "cd #{Whenever.path} && bundle exec ruby docomo-announce.rb end"
end

# 夕方の換気
every 1.day, :at => '5:00 pm' do
  command "cd #{Whenever.path} && bundle exec ruby docomo-announce.rb"
end

# 夕方の換気
every 1.day, :at => '5:10 pm' do
  command "cd #{Whenever.path} && bundle exec ruby docomo-announce.rb end"
end
