import Foundation

var taglieStr: [String] = []
var taglieNum: [String] = []
var taglieMist:[String:[String]] = [:]
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
        let tokens = t.components(separatedBy: " ")
        if taglieMist.keys.contains(tokens[0]) {
          var arrayToAppend = taglieMist[tokens[0]]
          arrayToAppend?.append(tokens[1])
          taglieMist[tokens[0]] = arrayToAppend
        }else{
          let arrayToAppend = [tokens[1]]
          taglieMist[tokens[0]] = arrayToAppend
        }
      }else{
        taglieStr.append(t)
      }
  }
}
print("Taglie formato testo")
print(taglieStr.sorted())
print("Taglie formato numerico")
print(taglieNum.sorted())
print("Taglie formato misto")
for (k,v) in taglieMist {
  print("Nazione")
  print(k)
  print("Taglie")
  print(v.sorted())
}
