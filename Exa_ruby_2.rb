def range(ranks, number)
  ranks.find { |rank, value| 
    break value if rank.cover? number 
  }
end

ranks = {
  -100000000..0 => 'sin fico',
  1..10 => 'con poco fico',
  11..20 => 'con fico regular'
}

range ranks, -12