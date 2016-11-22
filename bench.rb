require 'benchmark'
require './myhash'
require './customhash'

mh = MyHash.new
h = Hash.new
ch = CustomHash.new

n = 10000

Benchmark.bm(7) do |x|
  x.report('myhash') { for i in 1..n; mh[i] = i; mh[i]; end }
  x.report('hash') { for i in 1..n; h[i] = i; h[i]; end }
  x.report('customhash') { for i in 1..n; ch[i] = i; ch[i]; end }
end
