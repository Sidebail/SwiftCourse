//
//  BasePlusCommissionEmployee.swift
//  Classes
//
//  Created by Vladimir Vatcurin on 2019-05-29.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import Foundation
public class BasePlusCommissionEmployee{
    private var id: Int = 0;
    public var name: String = "";
    public var baseSalary: Double = 13.45;
    
    private var commissionRate: Double = 1.0{
        willSet{
            print("Setting rate to \(newValue)...")
        }
        didSet{
            if commissionRate <= 1.0 || commissionRate >= 2.0 {
                print("Rate is invalid! Setting it back to \(oldValue)")
                commissionRate = oldValue;
            }
        }
    }
    public var monthlySales: Double = 0.0;
    
    public init(id: Int, name: String, commissionRate: Double, monthlySales: Double, baseSalary: Double){
        
        if id > 0 {
            self.id = id;
        }
        if name != "" {
            self.name = name;
        }
        
        self.commissionRate = commissionRate;
        
        self.monthlySales = monthlySales;
        
        self.baseSalary = baseSalary;
        
    }
    
    public convenience init(id: Int, name: String, baseSalary: Double){
        self.init(id: id, name: name, commissionRate: 1.0, monthlySales: 0, baseSalary: baseSalary)
    }
    
    public convenience init(id: Int, name: String, baseSalary: Double, commissionRate: Double){
        self.init(id: id, name: name, commissionRate: commissionRate, monthlySales: 0, baseSalary: baseSalary)
    }
    
    
    public func getId() -> Int{
        return self.id;
    }
    
    public func getCommRate() -> Double{
        return self.commissionRate;
    }
    
    public func CalculateComission() -> Double{
        return baseSalary + monthlySales * commissionRate/100;
    }
    
    public func description() -> String{
        return "ID: \(self.id), NAME: \(self.name), COMMISSION RATE: \(self.commissionRate), BASE SALARY: \(self.baseSalary) MONTHLY SALES: \(self.monthlySales)";
    }
}
