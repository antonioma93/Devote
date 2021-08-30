//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by Massa Antonio on 30/08/21.
//

import SwiftUI

#if canImport(UIKit)
extension View {
	func hideKeyboard() {
		UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
	}
}
#endif
