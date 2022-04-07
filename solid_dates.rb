require "date"

class SolidDates
  def to_date(string)
    date = Date.strptime(string, "%d %b %Y")
    true
  end

  def date_intervals(dates)
    intervals = []
    dates.each do |date|
      begin
        if (self.to_date(date))
          intervals << date
        end
      rescue
        puts("Invalid date: #{date}")
      end
    end
    intervals
  end
end
