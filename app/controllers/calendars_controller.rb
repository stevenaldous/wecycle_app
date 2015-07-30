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
    @response = JSON.parse(open("http://www.seattle.gov/UTIL/WARP/CollectionCalendar/GetCollectionDays?pAccount=&pAddress=#{location}&pJustChecking=&pApp=CC&pIE=&start=0").read)
    gon.calendarResponse = @response



    render 'index'
  end


  def date

    Date.parse ("Mon, 06 Jul 2015")
  end

end