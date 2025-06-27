//
//  ListView.swift
//  MyCalc
//
//  Created by 최용헌 on 6/27/25.
//

import SwiftUI

struct ListView: View {
  var body: some View {
    TabView {
      Tab("조원", systemImage: "person.fill") {
        NavigationStack{
          MyGroupListView()
        }
      }
      
      Tab("거인리스트", systemImage: "list.bullet.circle.fill") {
        NavigationStack{
          FriendListView()
        }
      }
      
      Tab("거인 정보", systemImage: "person.crop.circle.fill") {
        NavigationStack {
          AppInfomationView()
        }
      }
    }
  }
}

#Preview {
    ListView()
}
