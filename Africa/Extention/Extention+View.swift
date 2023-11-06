//
//  Extention+View.swift
//  Africa
//
//  Created by AKASH on 05/11/23.
//

import SwiftUI

extension View {
   @ViewBuilder
   func `if`<Content: View>(_ conditional: Bool, content: (Self) -> Content) -> some View {
        if conditional {
            content(self)
        } else {
            self
        }
    }
}
