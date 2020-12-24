@avangers = Array.new

@avangers.push("Iron Man")
@avangers.push("SpiderMan")
@avangers.push("Hulk")

def imprime_hulk
    @avangers.each do |a|
        puts a if a == 'Hulk'

    end
end

imprime_hulk
