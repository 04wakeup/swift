//This is a comment

//var a = 5
//var b = 8
//
//print("The value of a is \(a)")
//print(b)

//var numbers = [45, 73, 195, 53]
//var computedNumbers = [numbers[0] * numbers[1],numbers[1] * numbers[2],numbers[2] * numbers[3],numbers[3] * numbers[0] ]
//
//print(computedNumbers)

// example: random
//let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
//
////The number of letters in alphabet equals 26
//
//var password = alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()!
//print(password)

// #####
//func loveCalculoatr(){
//    let loveScore = Int.random(in: 0 ... 100)
//
//    if loveScore >= 80 {
//        print("You love each other like Kanye loves Kanye")
//    } else if loveScore >= 40 {
//        print("You go together like Coke and Mentos")
//    } else  {
//        print("You'll be forever alone")
//    }
//}
//
//loveCalculoatr()


// Optionals!?
//var player1Username: String? = nil
//player1Username = "james"
//
//player1Username = nil
//
//if player1Username != nil {
//    print(player1Username)
//}


//Don't change this
//var studentsAndScores = ["Amy": 10, "James": 2, "Helen": 3]
//
//func highestScore(scores: [String: Int]) {
//
//  //Write your code here.
//    print( studentsAndScores.max {a, b in a.value < b.value })
//}
//
//highestScore(scores: studentsAndScores)


// Struct
struct Town {
    let name : String
    var citizens : [String]
    var resources: [String: Int]
    
    init(townName: String, people: [String], stats:[String:Int]){
        self.name = townName
        self.citizens = people
        self.resources = stats
    }
    func fortify(){
        print("Defences increased!")
    }
}
 
var anotherTown = Town(townName: "Namesless Island", people: ["Tom Hanks"], stats: ["Coconuts": 100])
anotherTown.citizens.append("Wilson")
print(anotherTown.citizens)
 
var ghostTown = Town(townName: "Ghost", people: [], stats: ["Tunbleweed": 1])
ghostTown.citizens.append("ghost only")
print(ghostTown.citizens)
