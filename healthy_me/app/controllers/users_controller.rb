class UsersController < ApplicationController
#before action to check for authenticated user
before_action :authenticate_user!

	def index
		#if user is authenticated, render this page
	end 

	#make an api, just a route that sends/renders json
	def health_data
		respond_to do |format|
			#myArray = [email:"laurakirby26", name:"laura", city:"SF", state:"California"]
			myDataHash = {userdata:[{email:"laura@email", name:"laura", city:"SF", state:"California"}, {email:"america@email", name:"america", city:"LA", state:"California"},{email:"john@email", name:"john", city:"PS", state:"California"}]}
			format.html {render html:current_user, :partial => "users/show.erb"}
			format.json {render json:myDataHash, :partial => "users/show.json"}
			p current_user
			

		end 
	end

end #end UsersController

