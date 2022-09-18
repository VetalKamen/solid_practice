class User
  def generate
    raise 'NotImplemented'
  end
end

class ContractorSalaryGenerator < User
  def generate
    # Code for contractor
    '500$'
  end
end

class FullTimeSalaryGenerator < User
  def generate
    # Code for fulltime
    '450$'
  end
end

# Bad example
class User
  def generate
    raise 'NotImplemented'
  end
end

class ContractorSalaryGenerator < User
  def generate
    # Code for contractor
    '500$'
  end
end

class FullTimeSalaryGenerator < User
  def generate
    # Code for fulltime
    [manager: '500$', developer: '400$']
  end
end

def gen_salary(user)
  "#{user.class.name} received #{user.generate} money"
end

gen_salary(ContractorSalaryGenerator)
gen_salary(FullTimeSalaryGenerator)
# here's problem in returning types
