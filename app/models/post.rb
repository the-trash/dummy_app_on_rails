class Post < ActiveRecord::Base
  include CommonClassMethods

  before_validation :prepare_content
  validates :title, :raw_content, presence: true

  def increment_view_counter!
    self.class.update_counters(id, view_count: 1)
  end

  private

  def prepare_content
    self.content = Sanitize.clean(self.raw_content, Sanitize::Config::RELAXED)
  end
end
