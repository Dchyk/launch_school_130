# Boolean assertions

def test_value_odd
  assert_equal(true, value.odd?)
end

# Equality assertions

assert_equal('xyz', value.downcase)

# Nil assertions

assert_nil(value)

# Empty object assertions

assert_empty(list)

# Included object assertions

assert_includes(list, 'xyz')

# Exception assertions

assert_raises(NoExperienceError) { employee.hire }

# Type assertions

assert_instance_of(Numeric, value)

# Kind assertions

assert_kind_of(Numeric, value)

# Same object assertions

assert_same(list, list.process)

# Refutations

refute_includes(list, 'xyz')