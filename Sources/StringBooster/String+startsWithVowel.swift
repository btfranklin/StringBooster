//  Created by B.T. Franklin on 7/11/18

extension String {
    public var startsWithVowel: Bool {
        guard !self.isEmpty else {
            return false
        }

        switch self.first!.lowercased() {
        case "a", "e", "i", "o", "u":
            return true
        default:
            return false
        }
    }
}
