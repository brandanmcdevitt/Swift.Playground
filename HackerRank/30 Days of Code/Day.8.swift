// Day 8 - Dictionaries and Maps

let n = Int(readLine()!)!

var phonebook = [String : Int]()

for _ in 1...n {
    let entry = readLine()!.characters.split(separator: " ", maxSplits: 1, omittingEmptySubsequences:false).map(String.init)
    phonebook[entry[0]] = Int(entry[1])
}

while let name = readLine() {
    if phonebook[name] != nil {
        print("\(name)=\(phonebook[name]!)")
    } else {
        print("Not found")
    }
}
