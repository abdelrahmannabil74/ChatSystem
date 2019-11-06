module Api

  class AppsController < ApplicationController

    # @api
    # list applications endpoint to return all apps
    # @return a list of all available apps as json response
    # GET Http request
    # route api/apps/
    def index
      apps = App.all

      apps = AppSerializer.new(apps).serializable_hash

      response =  {status: 'Success', message: 'all apps',data: apps}

       render json: response, status: :ok
    end

    # @api
    # make application endpoint
    # @return an object of the created app and the application's token which identify the application
    # POST Http request
    # route api/apps/
    def create
      app = App.create(create_parameters)

      token = (0...120).map { ('a'..'z').to_a[rand(26)] }.join

      app.token=token

      if app.save
        response =  {status: 'Success', message: 'app has been created successfully',data: app}
        render json: response, status: :created

      else
          response =  {status: 'Error', message: 'app not saved',data: app.errors}
        render json: response, status: :unprocessable_entity

      end
    end

     # @api
     # @param :id
     # update application endpoint
     # @return an object of the updated application
     # PUT Http request
     # route api/apps/:id
    def update
      app = App.find(params[:id])


      if app.update_attributes(create_parameters)

      response = {status: 'Success', message: 'app has been updated successfully', data:app}
        render json: response, status: :ok

      else

        response =  {status: 'Error', message: 'app not updated',data: app.errors}
        render json: response, status: :unprocessable_entity

      end
    end

    private
    def create_parameters
      params.permit(:name)
    end

  end
end

