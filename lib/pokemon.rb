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
      binding.pry
    db.execute("SELECT * FROM pokemon WHERE id = id")
    
  end



end
