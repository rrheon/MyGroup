//
//  FriendsView.swift
//  MyFriends
//
//  Created by Jongwook Park on 6/27/25.
//

/*
 위 샘플 프로젝트를 참고해서
 1. 새로운 주제를 선택해서 20개 이상의 아이템을 채워봅시다. 각 아이템에는 사진과 제목, 추가적인 세부정보들이 있게 해주세요
 2. 목록에서 특정 항목을 선택하면 세부 정보에서 모든 내용을 보여줍시다.
 */

import SwiftUI

struct FriendListView: View {
  
  var body: some View {

    List(friends) { friend in
      
      NavigationLink {
        FriendDetailView(friend: friend)
      } label: {
        HStack(alignment: .top, spacing: 16) {
          
          AsyncImage(url: URL(string: friend.imageName)) { image in
            image
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 150)
          } placeholder: {
            ProgressView()
          }
          
          
          VStack(alignment: .leading, spacing: 4) {
            Text(friend.name)
              .font(.headline)
            
            Text(friend.from)
              .font(.subheadline)
              .foregroundColor(.gray)
          }
          
          Spacer()
          
          Text("\(friend.type)")
            .font(.footnote)
            .foregroundColor(.brown)
        }
        .padding(.vertical, 8)
      }
    }
    .listStyle(.inset)
    .navigationTitle("친구들")
    
  }
}

#Preview {
  
    FriendListView()
  

}
