//
//  GroupsView.swift
//  TabBarCustomExample
//
//  Created by David Argote on 4/07/22.
//

import SwiftUI

struct GroupsView: View {
    
    @State var textSearch: String = ""
    
    var body: some View {
        VStack {
            //MARK: SEARCH
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search", text: $textSearch)
            }
            .padding(.horizontal)
            .padding(.vertical, 5)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            //MARK: LIST
            List(0..<100) { item in
                NavigationLink {
                    Text("Group: [\(item)]")
                } label: {
                    Text("Group: \(item)")
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
    }
}
