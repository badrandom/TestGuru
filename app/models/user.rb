class User < ApplicationRecord
  #belongs_to :test_session
  def check_all_activated_tests(level)
    Test.joins('JOIN test_sessions ON test_sessions.test_id = tests.id')
               .where('level = ? AND user_id = ?', level, self.id)
  end
end
