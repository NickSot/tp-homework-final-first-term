class DocumentsController < ApplicationController
	def index

	end

	def new
	
	end

	def edit
	
	end

	def document_params
		return params.require(:document).perimit(:file)
	end
end
