require "set"
N, M = gets.split.map(&:to_i)
ABs = M.times.map { gets.split.map(&:to_i) }

# $stdout = File.open(File::NULL, "w")

def main
  map = {}
  max = 0
  ABs.each do |ab|
    a, b = ab
    am = map[a]
    bm = map[b]
    newm = if am.nil? && bm.nil?
        Set[a, b]
      elsif am.nil? && bm
        bm.add(a)
      elsif am && bm.nil?
        am.add(b)
      else
        next if am == bm
        # このパターンの場合にSetインスタンスが新規作成になって上書きされるため過去に代入済のmapが更新されない
        # （a=2,b=3, map[1]==map[2], の場合にmap[2]とmap[3]だけ最新になってmap[1]が古いままになる）
        am + bm
      end
    max = [max, newm.length].max
    map[a] = newm
    map[b] = newm
  end
  return max
end

STDOUT.puts main

# ACx17 WAx11 TLEx1
