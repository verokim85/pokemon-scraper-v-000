require 'pry'
class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  def initialize(id = nil, name= nil, type = nil, db = nil, hp =60)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
  end

  def self.save(name, type, hp db)
    db.execute("INSERT INTO pokemon(name, type, hp) VALUES (?, ?, ?)",name, type, hp)
  end

  def self.find(id, db)
    poke = db.execute("SELECT * FROM pokemon WHERE id = id").flatten
    Pokemon.new(poke[0], poke[1], poke[2], poke[3])
  end



end
