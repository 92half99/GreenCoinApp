import SwiftUI

extension Text {
    /// A custom style for GreenCoin title texts.
    func greenCoinTitleStyle() -> some View {
        self.font(Font.custom("Poppins", size: 18).weight(.semibold))
            .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
    }
}
