import Foundation

var taglieStr: [String] = []
var taglieNum: [String] = []
var taglieMist:[String] = []
let taglie = ["S", "43", "XL", "40", "44", "M", "12", "IT 35", "IT 43", "FR 12", "UK 50", "XXL", "IT 50"]

func toInt(_ taglia:String) -> Int?
{
    return Int(taglia)
}

taglie.forEach{ t in
  if let b = toInt(t) {
    taglieNum.append(t)
  } else {
      if t.contains(" "){
        taglieMist.append(t)
      }else{
        taglieStr.append(t)
      }
  }
}
print(taglieStr)
print(taglieNum)
print(taglieMist)
