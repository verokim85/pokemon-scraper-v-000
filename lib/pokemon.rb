require 'pry'
class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  def initialize(id = nil, name= nil, type = nil, db = nil, hp = 60)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES (?, ?)",name, type)
  end

  def self.find(id, db)
    poke = db.execute("SELECT * FROM pokemon WHERE id = id").flatten
    pokes = poke("ALTER TABLE pokemon ADD COLUMN hp INTEGER")
    Pokemon.new(pokes[0], pokes[1], pokes[2], pokes[3])
    binding.pry
  end



end
