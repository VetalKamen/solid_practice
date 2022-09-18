class Worker
  def initialize(user, month)
    @user = user
    @month = month
  end

  def generate_salary
    # Code to generate salary
  end

  def send_email
    # code to send email
  end
end

# example:
month = 11
worker = Worker.new(user, month)
worker.generate_salary
# end

class SalaryGenerator
  def initialize(user, month)
    @user = user
    @month = month
  end

  def generate_salary
    #  code to generate salary
  end
end

class SalaryMailer
  def initialize(user, month)
    @user = user
    @month = month
  end

  def send_mail
    # code to send email
  end
end

# example:
month = 11

generator = SalaryGenerator.new(user, month)
generator.generate_salary

mailer = SalaryMailer.new(user, month)
mailer.send_mail
# end
