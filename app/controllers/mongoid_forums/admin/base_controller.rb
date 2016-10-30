require_dependency "mongoid_forums/application_controller"

module MongoidForums
  class Admin::BaseController < ApplicationController
    before_filter :authenticate_mongoid_forums_admin

    def index
    end

    def authenticate_mongoid_forums_admin
      logger.info "HERERER"
      logger.info mongoid_forums_user
      logger.info mongoid_forums_user.role
      if !mongoid_forums_user || !mongoid_forums_user.mongoid_forums_admin?
        flash.alert = t("mongoid_forums.errors.access_denied")
        redirect_to forums_path #TODO: Redirect to last URL
      end
    end

  end
end
