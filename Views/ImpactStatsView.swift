import SwiftUI

struct ImpactStatsView: View {
    let pointsToday: String
    let weeklyGoal: String
    let progressPercent: String

    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("Today’s points:")
                    .font(Font.custom("Poppins", size: 18))
                Spacer()
                Text(pointsToday)
                    .font(Font.custom("Poppins", size: 18))
            }
            HStack {
                Text("Weekly Goal")
                    .font(Font.custom("Poppins", size: 18).weight(.semibold))
                Spacer()
                Text(weeklyGoal)
                    .font(Font.custom("Poppins", size: 18).weight(.bold))
            }
            ZStack {
                // Placeholder for a circular impact graph.
                Circle()
                    .stroke(lineWidth: 2)
                    .frame(width: 201, height: 201)
                    .overlay(
                        Text(progressPercent)
                            .font(Font.custom("Poppins", size: 18).weight(.semibold))
                    )
            }
            Button(action: {
                // Action for checking impact.
            }) {
                Text("Check your impact")
                    .font(Font.custom("Poppins", size: 15).weight(.bold))
                    .padding(.vertical, 14)
                    .padding(.horizontal, 22)
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .cornerRadius(24)
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(Color.black.opacity(0.5), lineWidth: 0.5)
                    )
            }
        }
        .padding()
    }
}

struct ImpactStatsView_Previews: PreviewProvider {
    static var previews: some View {
        ImpactStatsView(pointsToday: "1.389", weeklyGoal: "18.000p", progressPercent: "76%")
    }
}
