class SalaryGenerator
  def initialize(worker, month)
    @worker = worker
    @month = month
  end

  def generate_salary
    # code
    if worker.contractor?
      # generate salary for contractor
    else
      # generate a normal salary
    end

  end
end

# example:
# if there'll be a different types of workers(contractor, fulltime etc.)
# we cannot modify existing class depending on how much different types
# of workers there would be. It's OP-principle violation


class ContractorSalaryGenerator
  def initialize(worker, month)
    @worker = worker
    @month = month
  end

  def generate
    # code
  end
end

class FullTimeSalaryGenerator
  def initialize(worker, month)
    @worker = worker
    @month = month
  end

  def generate
    # code
  end
end


GENERATORS = {
  'full_time' => FullTimeSalaryGenerator,
  'contractor' => ContractorSalaryGenerator
}.freeze

class SalaryGenerator

  def initialize(worker, month)
    @worker = worker
    @month = month
  end

  def generate_salary
    # Code
    GENERATORS[worker.type].new(worker, month).generate
    # dynamic generation based on type, not on condition
    # this way we eliminate changing existing class everytime
    # when new worker_type has been added
  end
end

