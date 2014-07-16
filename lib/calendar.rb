require 'sinatra'
require './roman'
require './numbers'
require './spell_digit.rb'
require './days'
get '/page' do 
month  =   params['month'].to_i
day = params['day'].to_i
year = params['year'].to_i
page =    File.read('./calendar.html')
d = ""
if day !=0 && month !=0 && year !=0
p = Time.new( year , month , day)
d = p.strftime('%A')
m = p.strftime('%B')
a = Telugu_calendar.days1(d.to_s)
end
page =  page + m.to_s + "\s" + Numbers.convert(day) + "\s" + year.to_s + "\s" + Roman.convert(year) + "\s" + Spell_digit.convert(year) + d + "\s" + a.to_s
end

