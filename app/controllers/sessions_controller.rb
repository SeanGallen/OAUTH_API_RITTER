class SessionsController < ApplicationController

 def create

 end

 def new
   require "pry"
   binding.pry
 end

 def destory

 end

 def auth_hash
   request.env["omniauth.auth"]
 end
end
