//  Created by B.T. Franklin on 11/3/17.

extension String {
    public var firstUppercased: String {
        guard let first else { return self }
        return String(first).uppercased() + self.dropFirst()
    }
}
