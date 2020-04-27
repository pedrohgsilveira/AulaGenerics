import Foundation

public class Pilha<Element> {
    private var elements: Array<Element> = []
    
    public init() {}
    
    public func push(_ newElement: Element) {
        self.elements.append(newElement)
    }
    
    public func pop() -> Element {
        return self.elements.removeLast()
    }
    
}
