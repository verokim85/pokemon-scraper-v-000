class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize(name, type, db)
    @name = name
    @type = type
    @id = id
    @db = db
    @@all << self
  end

  def self.all
    @@all
  end

  def self.save(id, name, type, db)
    self.new(name)
    db.execute("INSERT INTO pokemon(id, name, type) VALUES (?, ?, ?)",id, name, type)
  end



end
