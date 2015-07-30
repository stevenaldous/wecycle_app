$(document).ready(function() {

var calendarData = gon.calendarResponse
//
// alert(calendarData);





  $('#calendar').fullCalendar({
    events:
    [
      { title: "yahtzee!",
        start: '2015-07-30',
        end: '2015-07-30',
        allDay:true
      }



    ]





     }); // end of calendar
  //   }
  // })  //end ofAjax
});  //end of DOM