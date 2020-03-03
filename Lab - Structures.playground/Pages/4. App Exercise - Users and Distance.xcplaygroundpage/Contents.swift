/*:
 ## App Exercise - Users and Distance
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 For most apps you'll need to have a data structure to hold information about a user. Create a `User` struct that has properties for basic information about a user. At a minimum, it should have properties to represent a user's name, age, height, weight, and activity level. You could do this by having `name` be a `String`, `age` be an `Int`, `height` and `weight` be of type `Double`, and `activityLevel` be an `Int` that will represent a scoring 1-10 of how active they are. Implement this now.
 */
struct User{
    var name = String()
    var age = Int()
    var height = Double()
    var weight = Double()
    var activitylevel = Int(1-10)
}

/*:
 Create a variable instance of `User` and call it your name. Use the memberwise initializer to pass in information about yourself. Then print out a description of your `User` instance using the instance's properties.
 */
var myname = User.init(name: "guillermo", age: 17, height: 6.7, weight: 183, activitylevel: 5)
print(myname.name)
/*:
 In previous app exercises, you've worked with distance in the fitness tracking app example as a simple number. However, distance can be represented using a variety of units of measurement. Create a `Distance` struct that will represent distance in various units of measurement. At a minimum, it should have a `meters` property and a `feet` property. Create a custom initializer corresponding to each property (i.e. if you only have the two properties for meters and feet you will then have two initializers) that will take in a distance in one unit of measurement and assign the correct value to both units of measurements. Hint: *1 meter = 3.28084 feet*.
 
 - Example: If you use the initializer for meters and pass in a distance of 1600, the initializer should set `meters` to 1600 and `feet` to 5249.344.
 */
struct Distance{
    var heightinim = Double()
    var heightinfeet = Double()
    
    init(m: Double) {
        heightinim = m
        heightinfeet = heightinim * 3.28084
    }
    
    
    init(feet: Double) {
        heightinfeet = feet
        heightinim = heightinfeet / 3.28084
    }
}
var distance = Distance(m: 1600)
print(distance.heightinfeet)


/*:
 Now create an instance of `Distance` called `mile`. Use the initializer for meters to set the distance to 1600. Print out the property for feet and verify that it is equal to 5249.344.
 */
var distance2 = Distance(feet: 5249.344)
print(distance2.heightinim)

/*:
 Now create another instance of `Distance` and give it some other distance. Ensure that both properties are set correctly.
 */
var distance3 = Distance(m: 2.4)
print(distance3.heightinfeet)

var  distance4 = Distance(feet: 7.8)
print(distance4.heightinim)


//: [Previous](@previous)  |  page 4 of 10  |  [Next: Exercise - Methods](@next)
