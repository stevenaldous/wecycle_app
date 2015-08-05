class CalendarsController < ApplicationController

  require 'open-uri'
  require 'date'

  def index
  end
  def show
  end
  def find
    address = params['address']
    URI::escape(address)
    puts(address)
    convert = RestClient.get("https://www.seattle.gov/UTIL/WARP/Home/GetAddress?pAddress="+address)
    if convert.length < 4
      flash[:danger] = "Could not locate that address."
      redirect_to calendars_path
      return
    else
      converted_array = convert.slice(1..-2).split(",")
      location = converted_array[0][1..-2]
      response = JSON.parse(open("https://www.seattle.gov/UTIL/WARP/CollectionCalendar/GetCollectionDays?pAccount=&pAddress=#{location}&pJustChecking=&pApp=CC&pIE=&start=0").read)
      recycling_info= []
      response.each_index do |f|
        if response[f]['status'] == nil
          event = {};
          event['start'] = Date.parse(response[f]['start']).to_s
          event['title'] = (response[f]['Recycling']==true ? "Recycling Day" : '')
          event['recycling'] = response[f]['Recycling']
          event['color'] = 'white'
          event['textColor'] = 'Green'
          recycling_info << event
        elsif response[f]['status'] != nil
          flash[:danger] = "That address has a dumpster for pick up. See your building Manager for more info."
        end
      end
      gon.calendar_info=recycling_info
    end
    render "index"
  end
end