#Modulo Habilidades
module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end
#Modulo Alimentacion
module Alimentacion
    module Herbivoro
        def comer1
        'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
        'Puedo comer carne!'
        end
    end
end
#Clase Super
class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

#Clase Sub Ave
class Ave < Animal
    include Habilidades::Volador
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Pinguino < Ave

end
class Paloma < Ave
    
end
class Pato < Ave
  
end

#Clase Sub Mamifero
class Mamifero < Animal
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    include Alimentacion::Herbivoro
end

class Perro < Mamifero

end
class Gato < Mamifero

end
class Vaca < Mamifero

end

#Clase Sub Insecto
class Insecto < Animal
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end
class Mosca < Insecto

end
class Mariposa < Insecto

end
class Abeja < Insecto
  
end

#Instancias
dog = Perro.new("tobi")
puts dog.caminar
puts dog.comer
puts dog.nombre