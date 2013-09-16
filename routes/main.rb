class MyApp < Sinatra::Base
	get "/" do
		slim :index
	end
end
