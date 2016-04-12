class SessionsController < ApplicationController

  def create
    oauth_hash = request.env["omniauth.auth"]
    require "pry"
    binding.pry
    if !User.find_by_uid oauth_hash["uid"]
      User.create uid: oauth_hash["uid"], name: oauth_hash["info"]["name"], provider: oauth_hash["provider"]
    end
  end

  def new
  end

  def destroy

  end

  def auth_hash
    request.env["omniauth.auth"]
  end
end

