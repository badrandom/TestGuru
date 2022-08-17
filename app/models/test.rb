class Test < ApplicationRecord
  #belongs_to :test_session
  #has_many :questions
  class << self
    def tests_of_category(category)
      #raise ArgumentError, 'No such category' unless Category.find_by(title: category)
      Test.joins('JOIN categories ON categories.id = tests.category_id')
          .order('tests.title DESC')
          .where('categories.title = ?', category)
          .pluck(:title)
    end
  end
end
