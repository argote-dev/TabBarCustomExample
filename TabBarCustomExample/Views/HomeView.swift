//
//  HomeView.swift
//  TabBarCustomExample
//
//  Created by David Argote on 23/06/22.
//

import SwiftUI

struct HomeView<Content: View>: View {
    
    @Binding var selection: TabBarItem
    let content: Content
    
    @State private var tabs: [TabBarItem] = []
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            content
            TabBarView(tabs: tabs, selection: $selection)
        }
        .onPreferenceChange(TabBarItemsPreferenceKey.self) { value in
            self.tabs = value
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [.inbox, .groups, .contacts, .setting]
    
    static var previews: some View {
        HomeView(selection: .constant(tabs.first!)) {
            Text("Inbox")
        }
    }
}
