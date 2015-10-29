class Dashboard::Admin::AdminController < ApplicationController
	before_action :authenticate_manger!
end