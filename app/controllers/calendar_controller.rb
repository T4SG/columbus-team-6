class CalendarController < ApplicationController
  def index
  end

  def events
    events =
      [
        {
          title: 'Code for Good',
          start: '2015-10-02',
          end: '2015-10-04'
        },
        {
          title: 'Charity Event 1',
          start: '2015-10-16',
          end: '2015-10-18'
        }
    ]
    render json: events
  end
end
