require 'sinatra'
require './roman'
require './numbers'
a = Roman.new
b = Numbers.new
get '/page' do 
month  =   params['month']
day = params['day']
year = params['year']
page =    File.read('./calendar.html')
s = a.convert(year)
d = b.convert(day)
page =  page + month.to_s + "\s" + d.to_s + "\s" + year.to_s + "\s" + s  
end
