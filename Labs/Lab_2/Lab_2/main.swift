//
//  main.swift
//  Lab_2
//
//  Created by Vladimir Vatcurin on 2019-06-17.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import Foundation

//EXCERSIZE 1
var account1 = BankAccount(accountNumber: 1, customerName: "Vlad", interestRate: 2.0, accountBalance: 1234.12);
var account2 = BankAccount(accountNumber: 2, name: "Sujeet", balance: 10000)

print(account1.description);
print(account2.description);


//EXCERSIZE 2 - EXCERSIZE 2 FOLDER!


//EXCERSIZE 3

var integers = [1, 2, 3, 4, 5, 6, 7]
var doubles = [1.1, 2.2, 3.3, 4.4]
public func Search<T : Comparable>( values: [T], valueToFind: T ) -> String {
    for i in 0..<values.count {
        if(valueToFind == values[i]){
            return "Element found";
        }
    }
    
    return "Element not found";
}

print(Search(values: integers, valueToFind: 54));

