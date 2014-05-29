module CommonClassMethods
  extend ActiveSupport::Concern

  module ClassMethods
    def pagination params
      page(params[:page]).per(params[:per_page])
    end
  end
end
