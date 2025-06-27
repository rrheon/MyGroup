//
//  MyGroupListView.swift
//  MyCalc
//
//  Created by 최용헌 on 6/27/25.
//

import SwiftUI


struct MyGroupListView: View {
    var body: some View {
      Text("⭐️ 7조 ⭐️")
      
      Form {
        ForEach(persons) { data in
          Section(data.name){
            Text("MBTI: \(data.mbti)")
            Text("취미: \(data.hobby)")
          }
        }
      }
    }
}

#Preview {
    MyGroupListView()
}
