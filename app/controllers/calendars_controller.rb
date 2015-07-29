class CalendarsController < ApplicationController

  def index
  end


  def find
    address = params['address']
    convert = RestClient.get("http://www.seattle.gov/UTIL/WARP/Home/GetAddress?pAddress="+address)
    converted_array = convert.slice(1..-2).split(",")
    location = converted_array[0][1..-2]
    response = JSON.parse(open("http://www.seattle.gov/UTIL/WARP/CollectionCalendar/GetCollectionDays?pAccount=&pAddress=#{location}&pJustChecking=&pApp=CC&pIE=&start=0").read)
    redirect_to calendars_path
  end

end