# From-to-step sequence generator

def step(start, end_val, step)
  current = start

  while current <= end_val
    yield(current)
    current += step
  end

end