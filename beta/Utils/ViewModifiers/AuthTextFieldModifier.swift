//
//  AuthTextFieldModifier.swift
//  beta
//
//  Created by Liu Ziyi on 6/11/23.
//

import SwiftUI

struct AuthTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.horizontal)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 1.0)
                    .frame(width: 352, height: 44)
                    .foregroundStyle(Color.theme.gray)
            }
    }
}
