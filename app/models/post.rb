class Post < ActiveRecord::Base
  include CommonClassMethods

  before_validation :prepare_content

  private

  def prepare_content
    self.content = Sanitize.clean(self.raw_content, Sanitize::Config::RELAXED)
  end
end
