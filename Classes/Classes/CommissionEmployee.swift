//
//  CommissionEmployee.swift
//  Classes
//
//  Created by Vladimir Vatcurin on 2019-05-29.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import Foundation

public class CommissionEmployee{
    private var id: Int = 0;
    public var name: String = "";
    
    public var commissionRate: Double = 1.0{
        willSet{
            print("Setting rate to \(newValue)...")
        }
        didSet{
            if commissionRate < 1.0 || commissionRate > 2.0 {
                print("Rate is invalid! Setting it back to \(oldValue)")
                commissionRate = oldValue;
            }
        }
    }
    public var monthlySales: Double = 0.0;
    
    public init(id: Int, name: String, commissionRate: Double, monthlySales: Double){
        
        if id > 0 {
            self.id = id;
        }
        if name != "" {
            self.name = name;
        }
        
        self.commissionRate = commissionRate;
        
        self.monthlySales = monthlySales;
        
    }
    
    public convenience init(id: Int, name: String){
        self.init(id: id, name: name, commissionRate: 1.0, monthlySales: 0)
    }
    
    public convenience init(id: Int, name: String, commissionRate: Double){
        self.init(id: id, name: name, commissionRate: commissionRate, monthlySales: 0)
    }
    
    
    public func getId() -> Int{
        return self.id;
    }
    
    public func CalculateComission() -> Double{
        return monthlySales * commissionRate/100;
    }
    
    public func description() -> String{
        return "ID: \(self.id), NAME: \(self.name), COMMISSION RATE: \(self.commissionRate), MONTHLY SALES: \(self.monthlySales)";
    }
}
