import Cocoa

// a) Create an array of Int called nums with values 0 through 20. Iterate over the Array and print the even numbers.
let nums = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
var evenNumbers = [Int]()
for i in nums where i % 2 == 0 {
  evenNumbers.append(i)
}
print("even numbers are: \(evenNumbers)")

// b) In your Playground, define the following String:
let sentence = "The qUIck bRown fOx jumpEd over the lAzy doG"
let lowerCasedSentence = sentence.lowercased()
let vowels: [Character] = ["a", "e", "i", "o", "u"]
var vowelCount = 0
for char in lowerCasedSentence {
  if vowels.contains(char) {
    vowelCount += 1
  }
}
print("Vowel Count is \(vowelCount)")

//c) Create two arrays of Int with the values of 0 through 4. Use a nested for loop to print a mini multiplication table. The output, which should be multiple lines, should be in the following format:
//0 * 0 = 0
let firstArray = [0,1,2,3,4]
let secondArray = [0,1,2,3,4]

for i in firstArray {
  for j in secondArray {
    var result = "\(i) * \(j) = \(i*j)"
    print(result)
  }
}

//d) Write a function called average that takes an optional array of Int. If the array is not nil, calculate the average of the array's values and print:
//“The average of the values in the array is <average>.”
//
//Where <average> is the calculated average. If the array is nil, print:
//“The array is nil. Calculating the average is impossible.”

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

average(nums: nums)
let optionalIntArray: [Int]? = []
average(nums: optionalIntArray)

//e) Create a struct called Person with the properties firstName, lastName, and age. Choose appropriate data types for the properties. Include a method on Person called details that prints the values stored in the properties in the following format:
// Name: <firstName> <lastName>, Age: <age>
//Create an instance of Person called person. Pass your first name,last name, and age for the properties. Finally, call the method details.

struct Person {
  var firstName: String = ""
  var lastName: String = ""
  var age: Int = 0

  func details() {
    let personDetails = "Name: \(firstName) \(lastName), Age: \(age)"
    print(personDetails)
  }
}

var person = Person()
person.firstName = "Jaswanth"
person.lastName = "Alahari"
person.age = 32

person.details()

// f) Create a class called Student with two properties: person of type Person and grades, an array of Int. The class must have a method called calculateAverageGrade that takes no parameters and returns a Double. Include a method called details that prints the values of the properties stored in Student along with the average grade in the following format:
//Name: <firstName> <lastName>, Age: <age>, GPA: <average grade>.
//
//Create an instance of Student called student passing in your first name, last name, age, and an array of five numbers: 94, 99, 81, 100, 79. Next call the details method to output the details of the student.


class Student {
  var person = Person()
  var grades = [Int]()

  func calculateAverageGrade() -> Double {
    let gpa = Double(grades.reduce(0, +)/grades.count)
    return gpa
  }

  func details() {
    let gpa = calculateAverageGrade()
    let studentdetails = "\(person.details()), GPA: \(gpa)"
    print(studentdetails)
  }
}

var student = Student()
student.person.firstName = "Rijutha"
student.person.lastName = "Kona"
student.person.age = 32
student.grades.append(94)
student.grades.append(99)
student.grades.append(81)
student.grades.append(100)
student.grades.append(79)

student.details()

struct Square {
  var side: Int
  func area() -> Int {
    return side * side
  }
}

class Rectangle {
  var length: Int
  var width: Int
  init(length: Int, width: Int) {
    self.length = length
    self.width = width
  }
  func area() -> Int {
    return length * width
  }
}

var square1 = Square(side: 4)
var square2 = square1
square2.side = 5
print("Area: square1 - \(square1.area()) square2 - \(square2.area())")

var rectangle1 = Rectangle(length: 4, width: 4)
var rectangle2 = rectangle1
rectangle2.length = 5
print("Area: rectangle1 - \(rectangle1.area()) rectangle2 - \(rectangle2.area())")

