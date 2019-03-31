class Application


 def call(env)
    resp = Rack::Response.new
     t = Time.now



 if t.hour >= 12
 	resp.write"good Afternoon"
 else 
 	resp.write"Good Morning"
 end
 resp.finish
 end
end
 t = Time.now

 p t.hour