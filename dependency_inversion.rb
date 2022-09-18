class UserReader
  def get
    raise 'NotImplemented'
  end
end

class PostgresUserReader < UserReader
  def get
    # Code to read data from Postgres
  end
end

class MySqlUserReader < UserReader
  def get
    # Code to read data from MySQL
  end
end

# Bad
class FullTimeSalaryGenerator

  def generate_postgres_data
    # Code
    PostgresUserReader.get
  end

  def generate_mysql_data
    # Code
    MySqlUserReader.get
  end
end

# Good
class FullTimeSalaryGenerator

  def initialize(datasource)
    @datasource = datasource
  end

  def generate
    # Code to generate salary
    @datasource.get
  end
end
