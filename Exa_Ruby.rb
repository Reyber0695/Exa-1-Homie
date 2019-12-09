def join_words(words, number)
  word_size = "." * number

  words.join.split(/(#{word_size})/).reject(&:empty?)
end

words = ['hola', 'este', 'es', 'un', 'nuevo', 'mensaje']

join_words words, 10
