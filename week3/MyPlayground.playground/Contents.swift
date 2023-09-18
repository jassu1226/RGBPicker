import Cocoa

// a) Create an array of Int called nums with values 0 through 20. Iterate over the Array and print the even numbers.
let nums = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
for i in nums where i % 2 == 0 {
  print("even numbers are: \(i)")
}

// b) In your Playground, define the following String:
//let sentence = "The qUIck bRown fOx jumpEd over the lAzy doG"
//let lowerCasedSentence = sentence.lowercased()
//print(lowerCasedSentence)
//
//let vowels: [Character] = ["a", "e", "i", "o", "u"]
//var vowelCount = 0
//for char in lowerCasedSentence {
//  if vowels.contains(char) {
//    vowelCount += 1
//  }
//}
//print("Vowel Count is \(vowelCount)")

//c) Create two arrays of Int with the values of 0 through 4. Use a nested for loop to print a mini multiplication table. The output, which should be multiple lines, should be in the following format:
//0 * 0 = 0
//let firstArray = [0,1,2,3,4]
//let secondArray = [0,1,2,3,4]
//
//for i in firstArray {
//  for j in secondArray {
//    var result = "\(i) * \(j) = \(i*j)"
//    print(result)
//  }
//}

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

