# Tome of Dragon Utilities
# ------------------------

# Class representing a Dragon of the Hoard
class Dragon
  attr_reader :name, :element

  def initialize(name, element)
    @name = name
    @element = element
  end

  # Method to breathe fire
  def breathe_fire
    "The #{name} breathes scorching #{element} fire upon its enemies."
  end

  # Method to guard the treasure hoard
  def guard_treasure
    "The #{name} fiercely guards the ancient treasure hoard, ensuring its safety."
  end
end

# Function to summon a dragon of specific element
def summon_dragon(name, element)
  """
  Summon a #{element} dragon named #{name} from the depths of the Hoard.

  Returns:
    A mystical incantation indicating successful summoning.
  """
  "You have summoned #{name}, the #{element} dragon. Beware its fiery wrath!"
end

# End of Tome
# -------------
