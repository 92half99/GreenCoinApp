import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(userName: "Robyn")
            ImpactStatsView(pointsToday: "1.389", weeklyGoal: "18.000p", progressPercent: "76%")
            SuggestedActionsView(actions: [
                "Ride bike to work",
                "Ride bike home from work",
                "Donate clothes",
                "Shop sustainable"
            ])
            BottomNavigationView()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
