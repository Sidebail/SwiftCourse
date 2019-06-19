//
//  main.swift
//  VladimirVatsurin_MidTerm_Ex-01
//
//  Created by Vladimir Vatcurin on 2019-06-19.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import Foundation

// Declaring 3 CarLoan objects. 1 with defualt init, 2nd with convenience init, 3rd with full init
var loan1 = CarLoan();
var loan2 = CarLoan(loanNumber: 1, customerName: "Vlad");
var loan3 = CarLoan(loanNumber: 2, customerName: "Sujeet", interestRate: 3.0, duration: 4, amount: 56000);

// Printing out the description of all of the objects + the monthly installment of each of them
print(loan1.description);
print(loan1.CalculateMonthlyInstallment());
print(loan2.description);
print(loan2.CalculateMonthlyInstallment());
print(loan3.description);
print(loan3.CalculateMonthlyInstallment());
