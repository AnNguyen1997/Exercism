//Solution goes in Sources

/* class SumOfMultiples  {
    class func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
        var sum = 0
        var valueArray = inMultiples
        
        for item in inMultiples {
            var multiple = 1
            var nextValue = 0
            
            if item == 0 {
                sum = 0
            } else if item <= limit {
                while nextValue < limit {
                    sum += item * multiple
                    valueArray.append(item * multiple)
                    multiple += 1
                    nextValue = item * multiple
                    
                    if valueArray.contains(nextValue) {
                        sum -= nextValue
                    } 
                }
            }
        }
        
        return sum
    }
} */

class SumOfMultiples  {
    static func findMultiple(_ limit: Int, for multiple: Int) -> [Int] {
        if multiple >= limit {
            return [Int]()
        }
        
        let number = multiple..<limit
        return number.filter {
            if multiple == 0 {
                return false
            }
            
            if $0 == 0 {
                return false
            }
            
            if $0 > multiple {
                return $0 % multiple == 0
            } else {
                return multiple % $0 == 0
            }
        }
    }
    
    static func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
        let arrayOfMultiples = inMultiples.map {  findMultiple(limit, for: $0) }
        let multiples = Array(Set(arrayOfMultiples.joined()))
        let sum = multiples.reduce(0, +)
        return sum
    }
}







