class ChatroomController < ApplicationController
before_action :require_user

    def index
        @message = Message.new
        @messages = Message.custom_display #at message model
    end


end