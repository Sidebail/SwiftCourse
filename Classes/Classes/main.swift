//
//  main.swift
//  Classes
//
//  Created by Vladimir Vatcurin on 2019-05-29.
//  Copyright © 2019 Vladimir Vatsurin. All rights reserved.
//

import Foundation

let excercise1 = CommissionEmployee(id: 1, name: "Vlad", commissionRate: 1.5, monthlySales: 40000)
print(excercise1.description())
print(excercise1.CalculateComission())

let excercise2 = BasePlusCommissionEmployee(id: 1, name: "Vlad", commissionRate: 1.5, monthlySales: 40000, baseSalary: 35.0)
print(excercise2.description())
print(excercise2.CalculateComission())

let excercise3 = HourlyEmployee(id: 3, name: "Vlad", numberOfHours: 47, hourlyRate: 10.0)
print(excercise3.description())
print(excercise3.getHourlyRate())

