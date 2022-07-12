# Current version of TestGuru

module Version
  def current_version
    '0.1.0'
  end
end

# Метод будет вызываться из классов с этой примесью. Если в процессе понадобится класс в модуле или вызов по типу
# Version.current_version, то добавлю self. или, собственно, класс.