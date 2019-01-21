class DocumentsController < ApplicationController
	@@message = ''

	def index
		@msg = @@message
	end

	def new
		
	end

	def show
		puts session[:email] == params[:user]

		if String(session[:email]) != params[:user] or String(session[:password]) != params[:pass]
			if params[:user] != nil and params[:pass] != nil
				@@message = 'You are not permitted to view this document!'
				redirect_to '/documents/index'
			end
		end

		@document = Document.find params[:id]
	end

	def create
		file_name = params[:document][:file].original_filename

		content = params[:document][:file].read

		ascii_str = content.unpack("U*").map{|c|c.chr}.join

		Document.create name: file_name, text: ascii_str	

		render 'index'	
	end

	def edit
		
	end

	def document_params
		return params.require(:document).permit(:file)
	end
end
