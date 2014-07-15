require 'sinatra'
require './roman'
require './numbers'
get '/page' do 
month  =   params['month']
day = params['day']
year = params['year']
page =    File.read('./calendar.html')
s = Roman.convert(year)
d = Numbers.convert(day)
page =  page + month.to_s + "\s" + d.to_s + "\s" + year.to_s + "\s" + s  
end
