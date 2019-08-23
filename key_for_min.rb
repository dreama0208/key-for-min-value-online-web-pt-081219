# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.length == 0
    return nil
  else
    values = name_hash.collect { |k, v| v }
    min = values[0]
    values.each_with_index { |v, i| 
      if values[i] < min
        min = values[i]
      end
      min
    }

    name_hash.each { |k,v|
      if v == min
        return k
      end
    }
  end
end

