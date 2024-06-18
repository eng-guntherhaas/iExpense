//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Gunther Masi Haas on 18/06/2024.
//

import Foundation

struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}
