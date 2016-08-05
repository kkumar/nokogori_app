class Api::V1::BaseController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  
  def render_failure status, message
    render status: status, json: {
      success: false,
      error: message
    }
  end
      
  def render_success data="", message = ""
    render status: 200, json: {
      success: true,
      data: data,
      message: message
    }
  end
end
