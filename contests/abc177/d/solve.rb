# refs https://atcoder.jp/contests/abc177/submissions/16353201
(N,*v),*A=$<.map{_1.split.map &:to_i}
E=(r=0..N).map{[]}
A.map{E[_1]<<_2;E[_2]<<_1}
p r.map{|i|*q=i
q.count{|j|!v[j]&&v[j]=E[j].map{q<<_1}}}.max
