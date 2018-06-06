//Solution goes in Sources
import Foundation
class SpaceAge {
    
    let seconds: Int
    
    init( _ seconds : Int) {
        self.seconds = seconds
    }

    
    var onEarth: Double {
        let age = Double(seconds) / Double(31557600)
        let roundAge = String(format: "%.2f", age)

        return Double(roundAge)!
    
    }
    
    var onMercury: Double {
        return self.onEarth / 0.2408467
    }
    
    var onVenus: Double {
        return self.onEarth / 0.61519726
    }
    
    var onMars: Double {
        return self.onEarth / 1.8808158
    }
    
    var onJupiter: Double {
        return self.onEarth / 11.862615
    }
    
    var onSaturn: Double {
        return self.onEarth / 29.447498
    }
    
    var onUranus: Double {
        return self.onEarth / 84.016846
    }
    
    var onNeptune: Double {
        return self.onEarth / 164.79132
    }
    
    
}
