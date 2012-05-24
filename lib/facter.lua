module('facter', package.seeall)

fact_table = {}

function add(fact_name, code)
  -- Store away the fact code for later
  fact_table[fact_name] = code
end
