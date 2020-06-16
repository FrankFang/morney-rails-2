class ApplicationController < ActionController::API
  def render_resource(resource)
    if resource.errors.empty?
      render json: {resource: resource}, status: 200
    else
      render json: {errors: resource.errors}, status: 400
    end
  end
end
