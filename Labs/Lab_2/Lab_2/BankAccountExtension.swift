//
//  BankAccountExtension.swift
//  Lab_2
//
//  Created by Vladimir Vatcurin on 2019-06-17.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import Foundation

extension BankAccount{
    var interest: Double{
        get{
            return self.interestRate * self.accountBalance;
        }
    }
    
    public convenience init(accountNumber: Int, name: String, balance: Double ) {
        self.init(accountNumber: accountNumber, customerName: name,  interestRate: 0.0, accountBalance: balance);
    }
}
