require "./lib/deep_freezable"

class Team
  extend DeepFreezable
  COUNTRIES = deep_freeze(["Janpan", "US", "India"])
end