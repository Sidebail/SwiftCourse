//
//  CarLoan.swift
//  VladimirVatsurin_MidTerm_Ex-01
//
//  Created by Vladimir Vatcurin on 2019-06-19.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import Foundation

public class CarLoan{
    
    // Declaring all needed variables with a didSet validator for them, according to requirements
    var loanNumber: Int{
        didSet{
            if(loanNumber<0){
                print("Variable can't be negative!");
                loanNumber = oldValue;
            }
        }
    }
    
    var customerName: String{
        didSet{
            if(customerName == ""){
                print("Variable can't be balnk!");
                customerName = oldValue;
            }
        }
    }
    
    var interestRate: Double{
        didSet{
            if(interestRate < 1 || interestRate > 6){
                print("Variable can't be negative!");
                interestRate = oldValue;
            }
        }
    }
    
    var duration: Double{
        didSet{
            if(duration < 1 || duration > 7){
                print("Variable can't be negative!");
                duration = oldValue;
            }
        }
    }
    
    var amount: Double{
        didSet{
            if(amount<=0){
                print("Variable can't be negative!");
                amount = oldValue;
            }
        }
    }
    
    // Declaring the computed description variable, according to requirements
    public var description: String{
        get{
            return "Loan Number: \(loanNumber), Customer Name: \(customerName), Interest Rate: \(interestRate)%, Duration: \(duration) years, Amount: \(amount)$"
        }
    }
    
    // Default initialization
    public init(){
        self.loanNumber = 0;
        self.customerName = "Default";
        self.interestRate = 1.0;
        self.duration = 1;
        self.amount = 1;
    }
    
    // User specified full initialization
    public init(loanNumber: Int, customerName: String, interestRate: Double, duration: Double, amount: Double){
        self.loanNumber = loanNumber;
        self.customerName = customerName;
        self.interestRate = interestRate;
        self.duration = duration;
        self.amount = amount;
    }
    
    // Dunction that returns the MonthlyInstallment as a double; Interest Amount had gotten from extansion
    public func CalculateMonthlyInstallment() -> Double{
        return ((self.amount + self.interestAmount)/12);
    }
    
    // Deinitializer that changes name to DEPRECATED for customer privacy reasons
    deinit{
        customerName = "DEPRECATED";
    }
    
}
