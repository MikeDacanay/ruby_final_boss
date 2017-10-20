class OrganizationsController < ApplicationController
  def index
  	@all_orgs = Organization.all
  end

  def create
  	org1 = Organization.create(name: params[:name], description: params[:description], user: User.find(params[:id]))
    Membership.create(user: current_user, organization: org1)
  	if org1.errors
  		flash[:errors] = org1.errors.full_messages
  	end
  	redirect_to '/groups'
  end

  def show
    @org = Organization.find(params[:id])
  end
end
