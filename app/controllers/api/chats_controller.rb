module Api

  class ChatsController < ApplicationController

    def index
      application_token=App.where(token: params[:token]).first

      chats = application_token.chats

      chats = ChatSerializer.new(chats).serializable_hash

      response =  {status: 'Success', message: 'all chats',data: chats}

      render json: response, status: :ok
    end

    def create
      chat = Chat.create(create_parameters)

      application_token=App.where(token: params[:token]).first


      application_token.increment!(:chats_count)

      chat.app_id=application_token.id

      if chat.save

        response =  {status: 'Success', message: 'chat has been created successfully',data: chat}
        render json: response, status: :create

      else
        response =  {status: 'Error', message: 'chat not saved',data: chat.errors}
        render json: response, status: :unprocessable_entity

      end
    end

    def update
      chat = Chat.find(params[:chat_id])


      if chat.update_attributes(create_parameters)

        response = {status: 'Success', message: 'chat has been updated successfully', data: chat}
        render json: response, status: :update

      else

        response =  {status: 'Error', message: 'chat not updated',data: chat.errors}
        render json: response, status: :unprocessable_entity

      end
    end


    private
    def create_parameters
      params.permit(:name)
    end

  end
end
