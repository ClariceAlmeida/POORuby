require_relative "contador"

class Estoque

    attr_reader :livros

    def initialize
        @livros = []
        @vendas = []
        @livros.extend Contador
    end



    def method_missing(name)
        matcher = name.to_s.match "(.+)_mais_vendido_por_(.+)"
        if matcher
            tipo = matcher[1]
            campo = matcher[2].to_sym
            mais_vendido_por(tipo, &campo)
        else
            super
        end
    end  
    
    def respond_to?(name)
        matched = name.to_s.match ("(.+)_mais_vendido_por_(.+)")
        !!(matched)  || super
    end


    def exporta_csv
        @livros. each do |livro|
            puts livro.to_csv
        end
    end

    def mais_baratos_que(valor)
        @livros.select do |livro| ### seleciona os livros mais baratos que o valor passado
            livro.preco <= valor
        end
    end

    def total
        @livros.size
    end

    def <<(livro)
        @livros << livro if livro
        self
    end

    def vende(livro)
        @livros.delete livro
        @vendas << livro
    end
    
    def maximo_necessario
        @livros.maximo_necessario
    end

    private
    def quantidade_vendas_por(produto, &campo)
        @vendas.count {|venda| campo.call(venda) == campo.call(produto)}
    end

    def mais_vendido_por(tipo, &campo)
        @vendas.select { | produto | produto.matches?(tipo)}.sort {|v1,v2| quantidade_vendas_por(v1, &campo) <=> quantidade_vendas_por(v2, &campo)}.last
    end

end