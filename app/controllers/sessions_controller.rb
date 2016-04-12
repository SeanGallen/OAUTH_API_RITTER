class SessionsController < ApplicationController

 def create
   require "pry"
   binding.pry
 end

 def new
 end

 def destory

 end

 def auth_hash
   request.env["omniauth.auth"]
 end
end
