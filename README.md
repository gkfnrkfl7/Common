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

### Dictionary
**init(sequence: Sequence, transform: (_ element: Sequence.Element) -> (ket: Key, value: Value))** - 배열 -> Dictionary
```Swift
struct Item {
  var idx: Int
  var name: String
}
let array = [Item(idx: 0, name: "a"), Item(idx: 1, name: "b"), Item(idx: 2, name: "c")]

let dictionary = Dictionary.init(sequence: array) { ($0.idx, $0) }
// dicionary Dictionary<Int, Item>
// [0: Item, 1: item, 2: Item]
```

### String
**nsRange(from: Range) -> NSRange** - range -> nsRange
```Swift
let string = "Hello Swift World"
let range = string.range(of: "Swift")

let nsRange = string.nsRange(from: Range) // <- Here
```
