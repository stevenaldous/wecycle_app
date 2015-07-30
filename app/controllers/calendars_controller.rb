class CalendarsController < ApplicationController

  require 'open-uri'
  require 'date'

  def index

  end
  def show

  end


  def find
    address = params['address']
    convert = RestClient.get("http://www.seattle.gov/UTIL/WARP/Home/GetAddress?pAddress="+address)
    converted_array = convert.slice(1..-2).split(",")
    location = converted_array[0][1..-2]
    response = JSON.parse(open("http://www.seattle.gov/UTIL/WARP/CollectionCalendar/GetCollectionDays?pAccount=&pAddress=#{location}&pJustChecking=&pApp=CC&pIE=&start=0").read)
    calendar_info = []
    response.each_index do |f|
      event = {};
      event['start'] = Date.parse(response[f]['start']).to_s
      event['title']='getting there!'
      event['all_day'] = response[f]['allDay']
      event['garbage'] = response[f]['Garbage']
      event['recycling'] = response[f]['Recycling']
      event['compost'] = response[f]['FoodAndYardWaste']
      calendar_info << event
    end
    gon.calendar_info = calendar_info
    render 'index'
  end


  def date

    Date.parse ("Mon, 06 Jul 2015")
  end

end