class Application

  def call(env)
    resp = Rack::Response.new
    cur_time = Time.now

    if cur_time.hour.between?(0,11)
      resp.write "Good Morning!"
    else cur_time.hour.between?(12,23)
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
