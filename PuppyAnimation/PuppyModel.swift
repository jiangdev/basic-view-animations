import Foundation

class PuppyModel {
    var puppies: [Puppy]!
    
    init() {
        self.puppies = self.retrieveAllPuppies()
    }
    
    private func retrieveAllPuppies() -> [Puppy] {
        let puppyURL = Bundle.main.url(forResource: Constants.puppyJsonFileName, withExtension: "json")
            let puppyData = try? Data(contentsOf: puppyURL!)
            let puppies = try! JSONDecoder().decode([Puppy].self, from: puppyData!)

        return puppies
    }
}
