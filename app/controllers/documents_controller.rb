class DocumentsController < ApplicationController
	def index

	end

	def new
		
	end

	def show
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
