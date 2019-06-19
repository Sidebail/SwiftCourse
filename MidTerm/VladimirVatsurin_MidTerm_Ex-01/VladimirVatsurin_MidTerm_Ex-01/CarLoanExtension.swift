//
//  CarLoanExtension.swift
//  VladimirVatsurin_MidTerm_Ex-01
//
//  Created by Vladimir Vatcurin on 2019-06-19.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import Foundation

// An extension for CarLoan class
extension CarLoan{
    // New variable that returns the interest amount for a loan
    var interestAmount: Double{
        get{
            return self.amount * self.interestRate * self.duration / 100;
        }
    }
    
    // Convenience initializer that takes as an input only loanNumber and customerName
    public convenience init(loanNumber: Int, customerName: String){
        self.init();
        self.loanNumber = loanNumber;
        self.customerName = customerName;
        
    }
}
