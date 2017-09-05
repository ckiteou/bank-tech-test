class Date
  def date
    date = Time.new
    date.strftime('%m/%d/%Y')
  end
end
