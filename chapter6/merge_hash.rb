hash1 = { name: "Alice", age: 30 }
hash2 = { city: "Wonderland" }
hash3 = { name: "Bob", age: 20 }

merged_hash = hash1.merge(hash2)
puts merged_hash

merged_hash_with_conflict = hash1.merge(hash3)
puts merged_hash_with_conflict