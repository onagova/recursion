def fibs(n)
  return (0..n).reduce([]) { |a, v| a << v } if n < 2
  result = [0, 1]
  2.upto(n) { result << result[-2] + result[-1] }
  result
end

def fibs_rec(n)
  return (0..n).reduce([]) { |a, v| a << v } if n < 2
  prev = fibs_rec(n - 1)
  prev << prev[-2] + prev[-1]
end

p fibs_rec(-1)
p fibs_rec(0)
p fibs_rec(1)
p fibs_rec(12)
