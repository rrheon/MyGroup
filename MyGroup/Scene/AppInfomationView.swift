//
//  AppInfomationView.swift
//  MyCalc
//
//  Created by 최용헌 on 6/27/25.
//

import SwiftUI

struct AppInfomationView: View {
  var body: some View {
    
    VStack(alignment: .leading, spacing: 16) {
      Text("⭐️ 거인 리스트 ⭐️")
        .font(.largeTitle)
        .bold()
        .padding()
      
      Form {
        ForEach(friends) { data in
          Section(data.name){
            Text("출신: \(data.from)")
            Text("뭘까요: \(data.type)")
          }
        }
      }
    }
  }
}

#Preview {
    AppInfomationView()
}
