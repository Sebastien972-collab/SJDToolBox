//
//  ContinueButton.swift
//  SJDToolBox
//
//  Created by Sebby on 26/09/2024.
//

import SwiftUI

struct ContinueButton: View {
    let title : String
    var action: () -> Void
    var color: Color
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .accessibilityLabel(title)
                .foregroundColor(.white)
                .frame(maxWidth: 300, maxHeight: 60)
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        
    }
}

#Preview {
    ContinueButton(title: "Continue", action: {}, color: .green)
}
