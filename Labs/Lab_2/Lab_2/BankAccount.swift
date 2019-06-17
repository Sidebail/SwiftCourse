//
//  BankAccount.swift
//  Lab_2
//
//  Created by Vladimir Vatcurin on 2019-06-17.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import Foundation

public class BankAccount {
    private var accountNumber: Int{
        didSet{
            if(accountNumber < 0){
                print("Account number is invalid! Setting it back to \(oldValue)")
                accountNumber = oldValue;
            }
        }
    }
    private var customerName: String{
        didSet{
            if(customerName == ""){
                print("Account number is invalid! Setting it back to \(oldValue)")
                customerName = oldValue;
            }
        }
    }
    private var interestRate: Double{
        didSet{
            if(interestRate < 0.0 || interestRate > 2.0){
                print("Interest rate is invalid! Setting it back to \(oldValue)")
                interestRate = oldValue;
            }
        }
    };
    private var accountBalance: Double{
        willSet{
            print("Setting account balance to \(newValue)...")
        }
        didSet{
            if (accountBalance < 10.0) {
                print("Account balance is invalid! Setting it back to \(oldValue)")
                accountBalance = oldValue;
            }
        }
    }
    private var description: String{
        get{
            return "Account Number: \(accountNumber); Customer Name:  \(customerName); Interest Rate:  \(interestRate); Account Balance:  \(accountBalance)";
            
        }
    }
    
    public init(){
        accountNumber = 1;
        customerName = "Default";
        interestRate = 0.0;
        accountBalance = 10.0;
    }
    public init(accountNumber: Int, customerName: String, interestRate: Double, accountBalance: Double){
        self.accountNumber = accountNumber;
        self.customerName = customerName;
        self.interestRate = interestRate;
        self.accountBalance = accountBalance;
    }
    
    public func credit(amount: Double){
        self.accountBalance += amount;
    }
    public func debit(amount: Double){
        self.accountBalance -= amount;
    }
}
