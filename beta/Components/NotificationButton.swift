//
//  NotificationButton.swift
//  beta
//
//  Created by Liu Ziyi on 7/11/23.
//

import SwiftUI

struct NotificationButton: View {
    
    var numberOfNotifications: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "bell")
                .padding(.top, 8)
                .padding(.trailing , 2)
            
            if numberOfNotifications > 0 {
                Text("\(numberOfNotifications)")
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .frame(width: 15, height: 15)
                    .background(Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
            }
        }
    }
}

struct NotificationButton_Previews: PreviewProvider {
    static var previews: some View {
        NotificationButton(numberOfNotifications: 1)
    }
}
