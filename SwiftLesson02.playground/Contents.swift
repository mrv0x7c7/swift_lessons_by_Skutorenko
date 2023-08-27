// let bigNumber    = 1_863_215_371_232
// let oct          = 0o12
let number : UInt8 = 255
// let hex          = 0xff
// let binary       = 0b1111_1111
// let binary2      = 0b00000000_00000000_00000000_000000000_00000000_00000000_00000000_11111111

print(number)
// 255

Int8.min
// -128
Int8.max
// 127
UInt8.min
// 0
UInt8.max
// 255

13.3123e2
// умножить на 2 в степени 2
13.3123e-2
// умножить на 2 в степени -2

0x5p2
// hex
0x5p-2

/*
let a = 5
let b = 5.0

let c = a + Int(b)
print(c)
// 10
*/

/*
let a = 5
let b = 5.2

let c = Double(a) + b
print(c)
// 10.2
*/

/*
let c = 5 + 5.2
print(c)
// 10.2
*/

/*
typealias AlexNumber = Int
let a : AlexNumber = 5
let b = 5.2
let c = a + AlexNumber(b)
print(c)
// 10
*/


let d : Bool = true

if d {
    print("Hi!")
} else {
    print("Bye!")
}
// Hi

let UIntMin = UInt.min
let UIntMax = UInt.max
let IntMin = Int.min
let IntMax = Int.max
let UIntMin8 = UInt8.min
let UIntMax8 = UInt8.max
let IntMin8 = Int8.min
let IntMax8 = Int8.max

print("Value UInt.min is \(UIntMin), and UInt.max = \(UIntMax)")
// Value UInt.min is 0, and UInt.max = 18446744073709551615

print("Value Int.min is \(IntMin), and Int.max = \(IntMax)")
// Value Int.min is -9223372036854775808, and Int.max = 9223372036854775807

print("Value UInt8.min is \(UIntMin8), and UInt8.max = \(UIntMax8)")
// Value UInt8.min is 0, and UInt8.max = 255

print("Value Int8.min is \(IntMin8), and Int8.max = \(IntMax8)")
// Value Int8.min is -128, and Int8.max = 127


let a = 1
let b : Float = 1.5
let c = 1.7
let sumI = Int(Double(a) + Double(b) + c)
let sumF = Float(a) + b + Float(c)
let sumD = Double(a) + Double(b) + c

print("This is a Int number \(sumI)")
// This is a Int number 4

print("This is a Float number \(sumF)")
// This is a Float number 4.2

print("This is a Double number \(sumD)")
// This is a Double number 4.2


if Double(sumI) < sumD {
    print("Double is greater")
} else if Double(sumI) == sumD {
    print("Int is equal")
} else {
    print("Int is greater")
}
// Double is greater

