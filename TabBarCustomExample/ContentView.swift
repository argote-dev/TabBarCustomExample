//
//  ContentView.swift
//  TabBarCustomExample
//
//  Created by David Argote on 23/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabSelection: TabBarItem = .inbox
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                HomeView(selection: $tabSelection) {
                   InboxView()
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .tabBarItem(tab: .inbox, selection: $tabSelection)
                    GroupsView()
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .tabBarItem(tab: .groups, selection: $tabSelection)
                    Text("Contacts")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .tabBarItem(tab: .contacts, selection: $tabSelection)
                    Text("Settings")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .tabBarItem(tab: .setting, selection: $tabSelection)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [.inbox, .groups, .contacts, .setting]
    
    static var previews: some View {
        ContentView()
    }
}
