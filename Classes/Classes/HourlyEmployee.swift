//
//  HourlyEmployee.swift
//  Classes
//
//  Created by Vladimir Vatcurin on 2019-05-29.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import Foundation

public class HourlyEmployee{
    private var id: Int = 0;
    public var name: String = "";

    public var numberOfHours: Int = 40{
        willSet{
            print("Setting numbers of hours to \(newValue)...")
        }
        didSet{
            if numberOfHours > 72 {
                print("Number of hours is invalid! Setting it back to \(oldValue)")
                numberOfHours = oldValue;
            }
        }
    }
    
    private var hourlyRate: Double = 15.0{
        willSet{
            print("Setting hourly rate to \(newValue)...")
        }
        didSet{
            if hourlyRate < 15.0 {
                print("Hourly rate is invalid! Setting it back to \(oldValue)")
                hourlyRate = oldValue;
            }
        }
    }
    
    public init(id: Int, name: String, numberOfHours: Int, hourlyRate: Double){
        
        if id > 0 {
            self.id = id;
        }
        if name != "" {
            self.name = name;
        }
        
        self.numberOfHours = numberOfHours;
        
        self.hourlyRate = hourlyRate;
        
    }
    
    public convenience init(id: Int, name: String){
        self.init(id: id, name: name, numberOfHours: 40, hourlyRate: 15)
    }
    
    public convenience init(id: Int, name: String, hourlyRate: Double){
        self.init(id: id, name: name, numberOfHours: 40, hourlyRate: hourlyRate)
    }
    
    
    public func getId() -> Int{
        return self.id;
    }
    
    public func getHourlyRate() -> Double{
        return self.hourlyRate;
    }
    
    public func Earnings() -> Double{
        
        if(numberOfHours > 40){
            return hourlyRate * 1.5 * Double(numberOfHours);
        } else {
            return hourlyRate * Double(numberOfHours);
        }
    }
    
    public func description() -> String{
        return "ID: \(self.id), NAME: \(self.name), HOURLY RATE: \(self.hourlyRate), NUMBER OF HOURS PER WEEKL \(self.numberOfHours)";
    }
}
