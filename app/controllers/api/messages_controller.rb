
module Api

  require "rubygems"
  require "bunny"

  class MessagesController < ApplicationController
    def index

      messages = Message.all.where(params[:chat_id])

      messages = MessageSerializer.new(messages).serializable_hash

      response = {status: 'Success',message: 'all message has been listed', data: messages}

      render json: response, status: :ok
    end

    def create

      message=Message.create(create_params)

     chat = Chat.find(params[:chat_id])

      chat.increment!(:messages_count)

        message.chat_id= params[:chat_id]

      #! rabbitmq part
     # connection = Bunny.new
     # connection.start
      #channel = connection.create_channel
      #queue = channel.queue("hello")
      #exchange= channel.default_exchange

      #queue.subscribe do |delivery_info, metadata, payload|
       # puts "Received #{payload}"
      #end

     # exchange.publish('Hello World!', routing_key: queue.name)

      #connection.close

      if message.save
       response = {satus: 'Success', message: 'a message has been sent', data: message}
         render json: response, status: :created

       else
         response = {status: 'Error', message: 'message had not been sent', data: message.errors }
         render json: response, status: :unprocessable_entity
      end
    end

    def search

      messages = Message.search params[:q]

      response = {status: 'Success',message: 'all message has been listed', data: messages.results}

      render json: response, status: :ok
    end

    private
    def create_params
      params.permit(:body)
    end
  end

end