import SwiftUI

struct HeaderView: View {
    let userName: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Welcome, \(userName)")
                .greenCoinTitleStyle()
            Text("Log impact")
                .greenCoinTitleStyle()
        }
        .padding(.vertical)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(userName: "Robyn")
    }
}
