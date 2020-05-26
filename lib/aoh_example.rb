# Examples inspired by David Foster Wallace's # (2/21/1962 to 9/12/2008) _Infinite Jest_

DON_G = { name:  "Don Gately", occupation: "Live-in Staff" }
JOELLE_VD = { name:  "Joelle van Dyne", occupation: "Radio Personality" }
PAT_M =  { name:  "Pat Monteseian", occupation: "Staff" }
KATE_G = { name:  "Kate Gompert", occupation: "None" }
BRUCE_G = { name:  "Bruce Green", occupation: "Fan of Mildred" }

def assembled_aoh
  # Build an array that contains (or, "nests") the constants into a single
  # Array. Ruby constants are denoted by ALL_CAPS
  arr = []
  arr << DON_G
  arr << JOELLE_VD
  arr << PAT_M
  arr << KATE_G
  arr << BRUCE_G
  arr
end

def literal_aoh
  # Using Array literal syntax only, build a nested array that uses the data in
  # held in the constants
  arr = [DON_G, JOELLE_VD, PAT_M, KATE_G, BRUCE_G]
  arr
end

def aoh_lookup(aoh, row, key)
 r= 0
 aoh.each do |h|
   if(r==row)
     return h[key]
   end
  r+=1
end
end

def aoh_update(aoh, row, key, new_value)
  r= 0
 aoh.each do |h|
   if(r==row)
      h[key] = new_value
   end
  r+=1
end
aoh
end
