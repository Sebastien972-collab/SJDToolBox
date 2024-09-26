//
//  CustomTextField.swift
//  SJDToolBox
//
//  Created by Sebby on 26/09/2024.
//

import SwiftUI

struct CustomTextFieldBottomBar: View {
    var isSecureField = false
    var hint: String
    @Binding var text: String
    @FocusState var isEnable: Bool
    var contentype: UITextContentType
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            if isSecureField {
                SecureField(hint, text: $text)
                    .textContentType(contentype)
                    .focused($isEnable)
            } else {
                TextField(hint, text: $text)
                    .textContentType(contentype)
                    .focused($isEnable)
            }
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(.black.opacity(0.2))
                Rectangle()
                    .fill(.black)
                    .frame(width: isEnable ? nil : 0, alignment: .leading)
                    .animation(.easeInOut(duration: 0.3), value: isEnable)
            }
            .frame(height: 2)
        }
    }
}

#Preview {
    CustomTextFieldBottomBar(hint: "Username", text: .constant(""), contentype: .emailAddress)
}
