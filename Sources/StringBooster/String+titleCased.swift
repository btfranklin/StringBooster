//  Created by B.T. Franklin on 6/20/22

extension String {
    public var titleCased: String {
        let stayLowercaseWords = [
            "a", "an", "and", "as", "at",
            "but", "by", "for", "from",
            "in", "into", "of", "on", "or",
            "so", "the", "to", "with"
        ]

        var words: [String] = []

        let tokens = self.split(separator: " ")

        guard !tokens.isEmpty else { return self }

        let firstIndex = 0
        let lastIndex = tokens.count - 1

        for index in firstIndex...lastIndex {

            var word = String(tokens[index])

            if index == firstIndex || index == lastIndex {
                word = word.firstUppercased
            } else if !stayLowercaseWords.contains(word) {
                word = word.firstUppercased
            }

            words.append(word)
        }

        return String(words.joined(separator: " "))
    }
}
