# Bad
# cause user might have a different methods
# which are not important for actual Generators
# but they will be depend on it and will've to implement it anyway
# VIOLATION!
class User
  def generate
    raise 'NotImplemented'
  end
end

# Good
class Generator
  def generate
    # code
  end
end

class ContractorSalaryGenerator < Generator
  def generate
    # code
  end
end

class FullTimeSalaryGenerator < Generator
  def generate
    # code
  end
end