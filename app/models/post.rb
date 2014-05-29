class Post < ActiveRecord::Base
  include CommonClassMethods

  before_validation :prepare_content
  validates :title, :raw_content, presence: true

  private

  def prepare_content
    self.content = Sanitize.clean(self.raw_content, Sanitize::Config::RELAXED)
  end
end
