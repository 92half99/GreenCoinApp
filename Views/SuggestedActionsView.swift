import SwiftUI

struct SuggestedActionsView: View {
    let actions: [String]

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Suggested Actions")
                .font(Font.custom("Poppins", size: 18).weight(.semibold))
                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
            ForEach(actions, id: \.self) { action in
                HStack {
                    // A circular icon placeholder for the action.
                    Circle()
                        .stroke(Color.black, lineWidth: 1)
                        .frame(width: 56, height: 56)
                    Text(action)
                        .font(Font.custom("Poppins", size: 18).weight(.semibold))
                        .foregroundColor(.black)
                    Spacer()
                }
            }
        }
        .padding()
    }
}

struct SuggestedActionsView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestedActionsView(actions: [
            "Ride bike to work",
            "Ride bike home from work",
            "Donate clothes",
            "Shop sustainable"
        ])
    }
}
