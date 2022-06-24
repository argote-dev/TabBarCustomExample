//
//  TabBarItem.swift
//  TabBarCustomExample
//
//  Created by David Argote on 23/06/22.
//

import Foundation
import SwiftUI

enum TabBarItem: Hashable {
    case inbox, groups, contacts, setting
    var iconName: String {
        switch self {
        case .inbox: return "bubble.left.and.bubble.right.fill"
        case .groups: return "person.3.fill"
        case .contacts: return "person.2.fill"
        case .setting: return "gear"
        }
    }
    var title: String {
        switch self {
        case .inbox: return "Inbox"
        case .groups: return "Groups"
        case .contacts: return "Contacts"
        case .setting: return "Setting"
        }
    }
    var color: Color {
        switch self {
        case .inbox: return .yellow
        case .groups: return .yellow
        case .contacts: return .yellow
        case .setting: return .yellow
        }
    }
}
