class Timer
  #write your code here
  def initialize(seconds=0)
  	@seconds = seconds
  end

  def seconds=(value)
  	@seconds = value
  end

  def seconds
  	@seconds
  end

  def time_string
  	hours = @seconds / 3600
  	minutes = (@seconds % 3600) / 60
  	rem_secs = (@seconds % 3600) % 60

  	the_time = [hours, minutes, rem_secs].map do |x|
  		if x < 10
  			"0#{x}"
  		else
  			x
  		end
  	end

  	the_time.join(':')

  end
end
