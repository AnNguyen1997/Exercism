//Solution goes in Sources

//Test using SWITCH
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

