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

  def self.save(id, name, type)
    self.new(id, name, type)
    @db.execute("INSERT INTO pokemon(name, type, db)
    Pokemon.all.collect do |poke|
    Pokemon.save(poke.name, poke.type, poke.db)
    end
  end

end
