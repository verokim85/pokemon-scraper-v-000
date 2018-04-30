class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize(name)
    @name = name
    @type = type
    @id = id
    @@all << self
  end

  def self.all
    @@all
  end

  def self.save(id, name, type, db)
    self.new(id, name, type)
    db.execute("INSERT INTO pokemon(id, name, type) VALUES (?, ?, ?)", id, name, type)
    end
  end

end
