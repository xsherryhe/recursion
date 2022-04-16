def fibs_it(n)
  sequence = []
  sequence << (sequence[-1] || -1) + (sequence[-2] || 1) while sequence.length < n
  sequence
end

def fibs_rec(n)
  return [] if n.zero?
  sequence = fibs_rec(n - 1)

  sequence << (sequence[-1] || -1) + (sequence[-2] || 1)
end
