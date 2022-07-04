//
//  InboxView.swift
//  TabBarCustomExample
//
//  Created by David Argote on 4/07/22.
//

import SwiftUI

struct InboxView: View {
    
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
                    Text("Chat: [\(item)]")
                } label: {
                    Text("Chat: \(item)")
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            InboxView()
        }
    }
}
