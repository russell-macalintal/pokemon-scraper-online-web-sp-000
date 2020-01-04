class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id: nil, name:, type:, db:)
    @id = :id
    @name = :name
    @type = :type
    @db = :db
  end

  def self.save(name, type, db)
    # pokemon = self.new(name: name, type: type, db: db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type) VALUES (? , ?)
      SQL

    db.execute(sql, name, type)
  end

  def self.find
  end

end
