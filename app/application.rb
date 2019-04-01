class Application

  def call(env)
    resp = Rack::Response.new

    now = Time.now
    if now.hour > 12
      return "Afternoob"
    else
      return "Morning"
    end
    resp.finish
  end
