class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id)
    @name = name
    @type = type
    @id = id
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES (?, ?, ?)",id, name, type)
  end



end
