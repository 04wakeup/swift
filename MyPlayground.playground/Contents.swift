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
var studentsAndScores = ["Amy": 1, "James": 2, "Helen": 3]

func highestScore(scores: [String: Int]) {
  
  //Write your code here.
    print( studentsAndScores.max {a, b in a.value < b.value })
}
 
highestScore(scores: studentsAndScores)
