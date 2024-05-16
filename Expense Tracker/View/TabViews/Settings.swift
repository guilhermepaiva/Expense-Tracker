//
//  Settings.swift
//  Expense Tracker
//
//  Created by Guilherme Paiva on 13/05/2024.
//

import SwiftUI

struct Settings: View {
    /// User Properties
    @AppStorage("userName") private var userName: String = ""
    
    /// App Lock Properties
    @AppStorage("isAppLockEnabled") private var isAppLockEnabled: Bool = false
    @AppStorage("lockWhenAppGoesBackrground") private var lockWhenAppGoesBackrground: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                Section("User Name") {
                    TextField("iJustine", text: $userName)
                }
                
                Section("App Lock") {
                    Toggle("Enable App Lock", isOn: $isAppLockEnabled)
                    
                    if isAppLockEnabled {
                        Toggle("Lock When App Goes Background", isOn: $lockWhenAppGoesBackrground)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
//    Settings()
    ContentView()
}
