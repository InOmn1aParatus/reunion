class Activity
  attr_reader :name, :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, cost)
    @participants[name] = cost
  end

  def total_cost
    @participants.values.sum
  end

  def split
    total_cost / 2
  end

  def owed
    amt_owed = {}
    @participants.each do |name, cost|
      amt_owed[name] = split - cost
    end
    amt_owed
  end
end