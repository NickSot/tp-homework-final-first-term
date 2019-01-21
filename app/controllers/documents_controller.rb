class DocumentsController < ApplicationController
	def index

	end

	def new
		
	end

	def show
		@document = Document.find params[:id]
	end

	def create
		puts params[:document][:file].original_filename

		content = params[:document][:file].read

		ascii_str = content.unpack("U*").map{|c|c.chr}.join

		Document.create name: params[:document][:name], text: ascii_str		
	end

	def edit
		
	end

	def document_params
		return params.require(:document).perimit(:name, :file)
	end
end
