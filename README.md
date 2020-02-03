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

### UIColor
**init(r: Int, g: Int, b: Int, alpha: CGFloat? = nil)** - rgb 255 초기화
```Swift
let white = UIColor(r: 255, g: 255, b: 255)
let black20 = UIColor(r: 0, g: 0, b: 0, a: 51) // alpha 20%
```

**init(hex8: Int)** - alpha + rgb 16진수 초기화
```Swift
let red = UIColor(hex8: 0xFFFF0000)
let green20 = UIColor(hex8: 0x3300FF00) // alpha 20%
```

**init(hex6: Int, alpha: CGFloat? = nil)** - alpha + rgb 16진수 초기화
```Swift
let blue = UIColor(hex6: 0x0000FF)
let blue20 = UIColor(hex8: 0x0000FF, alpha = 0.2) // alpha 20%
```
