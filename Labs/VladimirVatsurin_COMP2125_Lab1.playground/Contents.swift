import Cocoa

//Excersize 1
func SwapContents( var1: inout Double, var2: inout Double){
    var varHolder = 0.0;
    varHolder = var1;
    var1 = var2;
    var2 = varHolder;
    // return
}
var d1 = 5.6;
var d2 = 10.2;
SwapContents(var1: &d1, var2: &d2)

func SwapContents( var1: inout String, var2: inout String){
    var varHolder = "";
    varHolder = var1;
    var1 = var2;
    var2 = varHolder
    // return
}
var s1 = "5.6";
var s2 = "10.2";
SwapContents(var1: &s1, var2: &s2)

func SwapContents( var1: inout Int, var2: inout Int){
    var varHolder = 0;
    varHolder = var1;
    var1 = var2;
    var2 = varHolder
    // return
}
var i1 = 5;
var i2 = 5;
SwapContents(var1: &i1, var2: &i2)

//Excersise 2
func SumAvgArray(var1: Int, var2: Int) -> (Int, Double) {
    
    return (var1 + var2, (Double)(var1+var2)/2)
    
}

SumAvgArray(var1: 6, var2: 123)

//Excersize 3
var dict1: Dictionary<String,String> = ["firstName": "Vlad", "lastName":"Vatsurin"]
var dict2: Dictionary<String,String> = ["firstName": "Sujeet", "lastName":"Lohan"]

var fullNames = [dict1["firstName"]! + " " + dict1["lastName"]!, dict2["firstName"]! + " " + dict2["lastName"]!]

//Excercize 4
var onCities = Set<String>(["Toronto","Barrie","Paris"]);
var qeCities = Set<String>(["Montreal","Paris","Quebec"]);

print(onCities.union(qeCities))
print(onCities.intersection(qeCities))

