class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize(name)
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.all
    @@all
  end

  def self.save(name, type, db)
    self.new(name)
    pikachu_from_db VALUES (?,?,?)" name, type, db)

  end

end


