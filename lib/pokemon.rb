class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize(id)
    @name = name
    @type = type
    @id = id
    @db = db
  end

  def self.all
    @@all
  end

  def self.save(name, type, db)
    self.new(id)
    db.execute("INSERT INTO pokemon(id, name, type) VALUES (?, ?, ?)",id, name, type)
  end



end
