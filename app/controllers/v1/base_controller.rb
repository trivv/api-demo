class V1::BaseController < ApplicationController
  skip_before_action :verify_authenticity_token

  protected
    def success_message(message, content={})
      ResponseTemplate.success(message, content)
    end
    def error_message(message, content={})
      ResponseTemplate.error(message, content)
    end
end
