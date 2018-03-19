def merge_sort(ary)
	sorted = []
	if ary.size < 2 then return ary
	else
		l, r = ary.each_slice((ary.size/2.0).round).to_a
		l = merge_sort(l)
		r = merge_sort(r)

		until l.empty? || r.empty?
			l.first < r.first ? sorted << l.shift : sorted << r.shift
		end

		sorted += l unless l.empty?
		sorted += r unless r.empty?
	end
	return sorted
end

p merge_sort(200.times.map{rand(0..100000)})