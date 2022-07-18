class Test < ApplicationRecord
  class << self
    def tests_of_category(category)
      #raise ArgumentError, 'No such category' unless Category.find_by(title: category)
      Test.select(:'tests.title')
          .order('tests.title DESC')
          .joins('JOIN categories ON categories.id = tests.category_id')
          .where('categories.title = ?', category)
          .pluck(:title)
    end
  end
end
