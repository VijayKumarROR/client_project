class ClientsController < ApplicationController
  def index
   @client = Client.all
  end

  def new
  	@client = Client.new
  end

  def create
  	@client = Client.new(client_params)
  	if @client.save
  		flash[:notice] = "Project has been succesfully created"
  	else
  		render :new
  		flash[:error] = "Project not saved"
  	end
  end

end

