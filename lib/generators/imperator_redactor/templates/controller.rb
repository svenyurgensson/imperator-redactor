# -*- encoding : utf-8 -*-
<% if namespaced? -%>
require_dependency "<%= namespaced_path %>/application_controller"
<% end -%>
<% module_namespacing do -%>
class <%= class_name %>Controller < ApplicationController

  skip_before_filter :verify_authenticity_token
  respond_to :html, :json

  def index
    @images = resource_class.all
    respond_with @images do |format|
      format.json { render json: json_images(@images), layout: false }
    end
  end

  def create
    @image = resource_class.new(file: file_from_params)
    if @image.save
      render json: {filelink: @image.file.url}.to_json
    else
      render json: @image.errors
    end
  end


  private
  def resource_class
    <%= class_name.classify %>
  end

  def file_from_params
    if params[:<%= class_name.classify.downcase %>]
      params[:<%= class_name.classify.downcase %>][:<%= class_name.classify.downcase %>]
    else
      params[:file]
    end
  end

  def json_images(images)
    images.inject([]) do |acc, el|
      acc << {
        :thumb => el.file.url(:thumb),
        :image => el.file.url
      }
      acc
    end
  end

end
<% end -%>
