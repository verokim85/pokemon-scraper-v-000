require 'pry'
class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(name= nil, type = nil, db = nil)
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES (?, ?)",name, type)
  end

  def self.find(id, db)
    poke = db.execute("SELECT name, type FROM pokemon WHERE id = id")
    Pokemon.new(poke[0][0], poke[0][1])
    binding.pry
  end




end
