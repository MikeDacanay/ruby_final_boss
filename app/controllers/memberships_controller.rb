class MembershipsController < ApplicationController
	def create
		Membership.create(organization: Organization.find(params[:org_id]), user: current_user)
		redirect_to '/groups'
	end

	def destroy
		Membership.find(params[:membership_id]).destroy
		redirect_to '/groups'
	end
end
