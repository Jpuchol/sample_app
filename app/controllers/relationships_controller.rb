class RelationshipsController < ApplicationController
  before_action :signed_in_user

  def create
    #On récupère de la base de donnée l'utilisateur en faisant un find sur l'id qu'on récupère du formulaire follow
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end