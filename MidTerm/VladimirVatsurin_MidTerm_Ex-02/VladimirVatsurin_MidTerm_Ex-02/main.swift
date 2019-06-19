//
//  main.swift
//  VladimirVatsurin_MidTerm_Ex-02
//
//  Created by Vladimir Vatcurin on 2019-06-19.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import Foundation

// The arrays declaration
var integers = [1234,1, 2, 3, 4, 5, 6, 7];
var doubles = [1.1, 2.2, 3.3, 4.4,5.5,6.6,7.7,8.8,0.1231414];
var strings = ["Nu eto uzhe ni v kakie vorota ne lezet","A","B","C","EBAT","KOPAT","DACHA","U","MORYA","Baltika 9", "Ohota Krepkoe","Z","z","a", "Chernigivske"];

// Function that takes an array as an input and outputs the minimum value of it, whether it's an array of Ints , Doubles or Strings
public func Minimum<T : Comparable>( values: [T]) -> T {
    var minimum = values[0];
    for i in 0..<values.count {
        if(minimum > values[i]){
            minimum = values[i];
        }
    }
    
    return minimum;
}

// Printing the results based on 3 different arrays
print(Minimum(values: integers));
print(Minimum(values: doubles));
print(Minimum(values: strings));

