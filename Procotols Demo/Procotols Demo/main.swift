protocol CanFly {
     func fly()
}

class Bird {
    var isFemale = true
    
    func layEgg(){
        if isFemale {
            print("The bird is female")
        }
    }
     
}

class Eagle: Bird, CanFly{
    func soar(){
        print("The eagle soars~~~")
    }
    
    func fly() {
        print("Eagle flyes in the sky")
    }
}

class Penguin: Bird {
    func swim() {
        print("Penguin swims")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly)  {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
     func fly() {
        print("Airplane is flying")
    }
}

let myEagle = Eagle()
//myEagle.fly()
//myEagle.layEgg()
//myEagle.soar()
//
let myPenguin = Penguin()
//myPenguin.layEgg()
//myPenguin.swim()
//myPenguin.fly()

let myPlane = Airplane()
myPlane.layEgg()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myPlane)
