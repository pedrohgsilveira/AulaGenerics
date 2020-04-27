import Foundation

var intA = 1
var intB = 2
let maiorInt = maior(intA, intB)

var doubleA = Double.pi
var doubleB = 3.14
let maiorDouble =  maior(doubleA, doubleB)

var tratorA = AgriculturalMachinery(size: 12)
var tratorB = AgriculturalMachinery(size: 783)
let maiorTrator = maior(tratorA, tratorB)

var pilha = Pilha<Int>()

pilha.push(intA)
pilha.push(intB)

public func search<T:Equatable>(array: [T], element: T) -> Bool {
    
    var result = false
    
    for i in array.indices {
        if array[i] == element {
            result = true
        }
    }
    return result
}

public func arrayAddition<T:Equatable>(lftArray: [T], rgtArray: [T]) -> Int {
    
    var intersection: [T] = []
    
    for lftElement in lftArray {
        for rgtElement in rgtArray {
            if lftElement == rgtElement {
                intersection.append(lftElement)
            }
        }
    }
    return intersection.count
}

public func generateArrayAddition<T:Equatable>(lftArray: [T], rgtArray: [T]) -> [T] {
    
    var intersection: [T] = []
    
    for lftElement in lftArray {
        for rgtElement in rgtArray {
            if lftElement == rgtElement {
                intersection.append(lftElement)
            }
        }
    }
    return intersection
}

public func checkIfHaveEqualValues<T:Equatable>(lftArray: [T], rgtArray: [T]) -> [T] {
    var nonIntersection: [T] = lftArray + rgtArray
    
    for i in lftArray.indices {
        for rgtElement in rgtArray {
            if lftArray[i] == rgtElement {
                nonIntersection.remove(at: i)
            }
        }
    }
    return nonIntersection
}


public func arrayAddition<T:Equatable>(arrays: [T]...) -> Int {
    var intersectionArray: [T] = []
    
    for fistArray in arrays {
        for secondArray in arrays {
            if fistArray.description != secondArray.description {
                let intersection = generateArrayAddition(lftArray: fistArray, rgtArray: secondArray)
                intersectionArray = checkIfHaveEqualValues(lftArray: intersectionArray, rgtArray: intersection)
            }
        }
    }
    return intersectionArray.count
}

let a = [1,2,3,4,5]
let b = [4,5,6,7]
let c = [6,7,8,9]

print(arrayAddition(arrays: a,b,c))


extension Array where Element: Numeric {
        
    
    func addition() -> Element {
        var sum = Element.zero
        
        for i in self.indices {
            let value = self[i]
            sum += value
        }
        return sum
    }
}


//TODO: Fazer um método que recebe um Array e um elemento, retorna um Bool dizendo se o elemento se encontra no Array
//TODO: Extensão de Array contendo uma função que retorna a soma de todos os elementos, independente de qual o valor numérico
//TODO: Fazer um método que recebe 2 Arrays e retorna um Int referente a quantidade de elementos presentes em ambos os Arrays
    //BONUS TODO: Fazer o método acima receber N arrays
