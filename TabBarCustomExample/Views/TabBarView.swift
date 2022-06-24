//
//  TabBarView.swift
//  TabBarCustomExample
//
//  Created by David Argote on 23/06/22.
//

import SwiftUI

struct TabBarView: View {
    
    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    
    var body: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                tabView(tab: tab)
                    .onTapGesture {
                        switchToTab(tab: tab)
                    }
            }
        }
        .padding(.horizontal, 10)
        .background(Color.black.ignoresSafeArea(edges: .bottom))
    }
}

struct TabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [.inbox, .groups, .contacts, .setting]
    
    static var previews: some View {
        VStack {
            Spacer()
            TabBarView(tabs: tabs, selection: .constant(tabs.first!))
        }
    }
}

extension TabBarView {
    private func tabView(tab: TabBarItem) -> some View {
        VStack {
            Image(systemName: tab.iconName)
                .font(.subheadline)
            Text(tab.title)
                .font(.system(size: 10, weight: .semibold, design: .rounded))
        }
        .foregroundColor(selection == tab ? tab.color : Color.gray)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
    }
    
    private func switchToTab(tab: TabBarItem) {
        withAnimation(.easeInOut) {
            selection = tab
        }
    }
}
