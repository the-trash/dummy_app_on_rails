module CommonClassMethods
  extend ActiveSupport::Concern

  included do
    scope :recent, -> { order('id DESC') }
    scope :old,    -> { order('id ASC')  }

    scope :draft,     -> { where(state: :draft)     }
    scope :published, -> { where(state: :published) }
  end

  module ClassMethods
    def pagination params
      page(params[:page]).per(params[:per_page])
    end
  end
end
