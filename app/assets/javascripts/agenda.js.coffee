$(document).ready ->
  if $("#agenda").length
    $('#agenda').fullCalendar
      header:
        left: 'prev,next today'
        center: 'title'
        right: 'month,agendaWeek,agendaDay'
      defaultDate: new Date()
      editable: false
      eventLimit: true
      eventSources:
        url: '/api/events.json'
    return
