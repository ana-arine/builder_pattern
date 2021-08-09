import Foundation

public struct Pizza {
    public let tamanho: Tamanho
    public let numeroPedacos: Int
    public let borda: Borda
    public let sabor: Sabor
}

public struct Sabor: OptionSet {
    public static let calabresa = Sabor(rawValue: 1 << 0)
    public static let portuguesa = Sabor(rawValue: 1 << 1)
    public static let berinjela = Sabor(rawValue: 1 << 2)
    public static let vegetariana = Sabor(rawValue: 1 << 3)
    public static let abobrinha = Sabor(rawValue: 1 << 4)
    public static let alho = Sabor(rawValue: 1 << 5)
    
    public let rawValue: Int
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

public enum Borda: String {
    case Catupiry
    case Cheddar
    case Normal
}

public enum Tamanho: String {
    case Pequena
    case Média
    case Grande
}

public class PizzaBuilder {
    
    public private(set) var sabor: Sabor = []
    public private(set) var tamanho: Tamanho = .Grande
    public private(set) var borda: Borda = .Catupiry
    
    
    public func build() -> Pizza {
        return Pizza(tamanho: tamanho, numeroPedacos: <#Int#>, borda: borda, sabor: sabor)
    }
    
}

public class Gerente {
    
    func toString() -> String {
        
        return "\n***  Pedido de Pizza ***" +
            "\nTamanho: \()" +
            "\n"
    }
    
    
    private func retornaTamanhoPizza() -> String {
        
        return switch (numeroPedacos){
        case 6: "Pizza Média ($numeroPedacos pedaços)"
        case 8: "Pizza Grande ($numeroPedacos pedaços)"
        case 10: "Pizza Gigante ($numeroPedacos pedaços)"
            else: "Não fabricamos esse tamanho. Favor fazer novo pedido."
        }
    }
    
}
