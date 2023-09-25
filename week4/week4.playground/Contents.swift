import Cocoa

let zeroToTwenty = Array(0...20)
func average(nums: [Int]?) {
  if let nonOptionalNums = nums {
    if nonOptionalNums.count > 0 {
      let total = nonOptionalNums.reduce(0, +)
      let average = total/nonOptionalNums.count
      print("The average of the values in the array is \(average)")
    } else {
      print("The array is nil. Calculating the average is impossible.")
    }
  }
}

average(nums: zeroToTwenty)
let optionalIntArray: [Int]? = []
average(nums: optionalIntArray)


// a. create overload functions using average method and an array

func average(numbers: [Int]?) -> Int {
  var average: Int = 0
  if let numbers = numbers, numbers.count > 0 {
    average = numbers.reduce(0, +)/numbers.count
  }
  return average
}

print("The average of new overloaded function passing a default value for the parameter is \(average(numbers: zeroToTwenty))")

func average() -> Int {
  let average = zeroToTwenty.reduce(0, +)/zeroToTwenty.count
  return average
}
let avg = average()
print("the average of first 20 numbers are \(avg)")

//  Create an enum called Animal that has at least five animals. Next, make a function called theSoundMadeBy that has a parameter of type Animal. This function should output the sound that the animal makes. For example, if the Animal passed is a cow, the function should output, “A cow goes moooo.”
// Hint: Do not use if statements to complete this section.
// Call the function twice, sending a different Animal each time.

enum Animal: String {
  case dog, cat, lion, tiger, fox
}

func theSoundMadeBy(animal: Animal) -> String {
  switch animal {
  case .dog:
    return "A dog goes woof"
  case .cat:
    return "A cat goes meow"
  case .lion:
    return "A lion roar"
  case .tiger:
    return "A tiger growl"
  case .fox:
    return "A fox screams"
    
  }
}

let catSound = theSoundMadeBy(animal: .cat)
let dogSound = theSoundMadeBy(animal: .dog)
print(catSound)
print(dogSound)


/*c) This question will have you creating multiple functions that will require you to use closures and collections. First, you will do some setup.

Create an array of Int called nums with the values of 0 to 100.
Create an array of Int? called numsWithNil with the following values:
79, nil, 80, nil, 90, nil, 100, 72

Create an array of Int called numsBy2 with values starting at 2 through 100, by 2.
Create an array of Int called numsBy4 with values starting at 2 through 100, by 4.

You can set the values of the arrays above using whatever method you find the easiest. In previous weeks you were introduced to ranges and sequences in Swift. Leveraging those in the Array initializer will allow you to create the requested arrays in a single line. Don’t let the last two break your stride.

- Create a function called evenNumbersArray that takes a parameter of [Int] (array of Int) and returns [Int]. The array of Int returned should contain all the even numbers in the array passed. Call the function passing the nums array and print the output.

- Create a function called sumOfArray that takes a parameter of [Int?] and returns an Int. The function should return the sum of the array values passed that are not nil. Call the function passing the numsWithNil array, and print out the results.

- Create a function called commonElementsSet that takes two parameters of [Int] and returns a Set<Int> (set of Int). The function will return a Set<Int> of the values in both arrays.

- Call the function commonElementsSet passing the arrays numsBy2, numsBy4, and print out the results.
*/

let nums = Array(0...100)
let numsWithNil: [Int?] = [79, nil, 80, nil, 90, nil, 100, 72]

var numsBy2 = [Int]()
for number in stride(from: 2, to: 100, by: 2) {
  numsBy2.append(number)
}
print("numsBy2 array will be \(numsBy2)")

var numsBy4 = [Int]()
for number in stride(from: 2, to: 100, by: 4) {
  numsBy4.append(number)
}
print("numsBy4 array will be \(numsBy4)")

func evenNumbersArray(numberArray: [Int]) -> [Int] {
  var evenNumbers = numberArray.filter { $0 % 2 == 0 }
  return evenNumbers
}

print(evenNumbersArray(numberArray: nums))

func sumOfArray(optionalArray: [Int?]) -> Int {
  var sumOfNonNilValues = optionalArray.compactMap { Int($0 ?? 0)}.reduce(0, +)
  return sumOfNonNilValues
}

print("sum of non nil values is \(sumOfArray(optionalArray: numsWithNil))")

func commonElementsSet(numArrayOne: [Int], numArrayTwo: [Int]) -> Set<Int> {
  let combinedArray = numArrayOne + numArrayTwo
  let resultSet = Set(combinedArray)
  return resultSet
}

print("Set of two arrays \(commonElementsSet(numArrayOne: numsBy2, numArrayTwo: numsBy4))")


// d) Create a struct called Square that has a stored property called sideLength and a computed property called area. Create an instance of Square and print the area.

struct Square {
  var sideLength: Int
  var area: Int {
    sideLength * sideLength
  }
}

let mySquare = Square(sideLength: 10)

print("the area of mySquare is \(mySquare.area)")

// Above and beyond
protocol Shape {
  func calculateArea() -> Double
}

struct Circle: Shape {
  var radius: Double
  private var pi = 3.14
  
  init(radius: Double) {
    self.radius = radius
  }
  
  func calculateArea() -> Double {
    let area = pi * radius * radius
    return area
  }
}

struct Rectangle: Shape {
  var length: Double
  var width: Double
  func calculateArea() -> Double {
    let area = length * width
    return area
  }
}

let myCircle = Circle(radius: 10)
print("Area of circle is \(myCircle.calculateArea())")

let myrectangle = Rectangle(length: 10, width: 10)
print("Area of rectangle is \(myrectangle.calculateArea())")

protocol VolumeOfAShape: Shape {
  func calculateVolume() -> Double
}

struct Sphere: Shape {
  var radius: Double
  private var pi = 3.14
  
  init(radius: Double) {
    self.radius = radius
  }
  
  func calculateArea() -> Double {
    let area = 4 * pi * radius * radius
    return area
  }
  
  func calculateVolume() ->  Double {
    let volume = 4/3 * pi * radius * radius * radius
    return volume
  }
}

let mySphere = Sphere(radius: 10)
print("Area of sphere is \(mySphere.calculateArea())")
print("Volume of sphere is \(mySphere.calculateVolume())")



