//Solution goes in Sources
class SumOfMultiples  {
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
}





