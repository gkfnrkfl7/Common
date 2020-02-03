# Common
공용 확장 Framework

***
Usage
------------------------
### Array
**remove(from: Element)** - 배열 아이템 객체로 삭제
```Swift
let array = ["a", "b", "c", "d"]

array.remove(from: "c")
// array ["a", "b", "d"]
```

### String
**nsRange(from: Range) -> NSRange** - range -> nsRange
```Swift
let string = "Hello Swift World"
let range = string.range(of: "Swift")

let nsRange = string.nsRange(from: Range) // <- Here
```
