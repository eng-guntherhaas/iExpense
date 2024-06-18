//
//  ContentView.swift
//  iExpense
//
//  Created by Gunther Masi Haas on 18/06/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var expenses = Expenses()

    var body: some View {
        NavigationView{
            List{
                ForEach(expenses.items) { item in
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("iExpenses")
            .toolbar {
                Button("Add Expense", systemImage: "plus") {
                    let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5)
                    expenses.items.append(expense)
                }
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}


#Preview {
    ContentView()
}
