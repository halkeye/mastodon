# frozen_string_literal: true

class Settings::InvitationsController < ApplicationController
  layout 'admin'

  before_action :authenticate_user!

  def index
    @invitations = Invitation
      .where(created_by_user_id: current_user.id)
      .page(params[:page])
  end
  
  def new
  end
end
