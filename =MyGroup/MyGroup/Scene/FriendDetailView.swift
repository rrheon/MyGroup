//
//  DetailView.swift
//  MyCalc
//
//  Created by 최용헌 on 6/27/25.
//

import SwiftUI

struct FriendDetailView: View {
  var friend: Friend // = friends[3]
  
  var body: some View {
    
    Form {
      Section("Image") {
        AsyncImage(url: URL(string: friend.imageName)) { image in
          image
            .resizable()
            .aspectRatio(contentMode: .fit)
          
        } placeholder: {
          ProgressView()
        }
      }
      
      Section("Name") {
        Text(friend.name)
      }
      
      Section("From") {
        Text(friend.from)
      }
    }
    .navigationTitle("Info")
  }
}

#Preview {
  NavigationStack {
    FriendDetailView(friend: friends[1])
  }
}
