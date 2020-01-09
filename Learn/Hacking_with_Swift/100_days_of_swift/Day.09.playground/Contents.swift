//access control, static properties, and laziness

//initializers
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating new user!")
    }
}
var user = User()
user.username = "Brandan"
//referring to the current instance
struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}
//lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct PersonTwo {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}
var ed = PersonTwo(name: "Ed")
ed.familyTree
//static properties and methods
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let eddy = Student(name: "Eddy")
let taylor = Student(name: "Taylor")
print(Student.classSize)
//access control
struct PersonThree {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    func identify() -> String {
        return "My social security number is \(id)"
    }
}
let edward = PersonThree(id: "12345")
edward.identify()
