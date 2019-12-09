def join_words(words, number)
  points = "." * 10

  words.join.split(/(#{points})/).reject(&:empty?)
end

words = ['hola', 'este', 'es', 'un', 'nuevo', 'mensaje']

join_words words, 10