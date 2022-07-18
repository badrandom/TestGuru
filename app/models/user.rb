class User < ApplicationRecord

  #SELECT "tests"."id", "tests"."title", "tests"."level", "test_sessions"."finished"
  # FROM "test_sessions"
  # JOIN tests ON test_sessions.test_id = tests.id
  # WHERE (level = 0 AND user_id = 1)
  def check_tests(level)
    TestSession.select(:'tests.id', :'tests.title', :'tests.level', :finished)
               .joins('JOIN tests ON test_sessions.test_id = tests.id')
               .where('level = ? AND user_id = ?', level, self.id)
  end
end
