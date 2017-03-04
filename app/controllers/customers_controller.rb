class CustomersController < ApplicationController
before_filter :authenticate_user!
 
  def index
  end

  def new
  	@company = Company.new()
  end

  def create
  	@company = Company.new(company_params)
  		if @company.save
  			flash[:notice] = "Company was sucessfully created"
  			redirect_to root_path
  		else
  			flash[:error] = "Error While Saving"
  			render :new
  		end
  end

  private
  
  def company_params
  	params.require(:company).permit(:company_name, :manager_name, :no_of_employees, :location, :no_of_branch)
  end

end
