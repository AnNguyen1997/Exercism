//Solution goes in Sources

/*Test using SWITCH
class Nucleotide {
    var dnaString: String
    
    
    enum TranscriptionError: Error {
        case invalidNucleotide

    }
    
    init(_ dna: String) {
        self.dnaString = dna
    }
    
    func complementOfDNA() throws -> String {
        var rnaString = ""
        for character in dnaString {
            switch character {
            case "G":
                rnaString += "C"
            case "C":
                rnaString += "G"
            case "T":
                rnaString += "A"
            case "A":
                rnaString += "U"
            default:
                throw TranscriptionError.invalidNucleotide
            }
        }
        return rnaString
    }
}
*/

//Test using Dictionary
class Nucleotide {
    var dnaString: String
    
    let rnaDict: [Character: Character] = ["G" : "C", "C" : "G", "T" : "A", "A" : "U"]
    
    enum TranscriptionError: Error {
        case invalidNucleotide
        
    }
    
    init(_ dna: String) {
        self.dnaString = dna
    }
    
    func complementOfDNA() throws -> String {
        let rnaArray = try dnaString.map {
            (c) -> Character in
            
            guard let rnaCharacter = rnaDict[c] else {
                throw TranscriptionError.invalidNucleotide
            }
            return rnaCharacter
        }
        return String(rnaArray)
    }
}
