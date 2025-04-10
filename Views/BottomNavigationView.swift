import SwiftUI

struct BottomNavigationView: View {
    var body: some View {
        VStack {
            Divider()
            HStack {
                Spacer()
                Image(systemName: "house.fill")
                Spacer()
                Image(systemName: "chart.bar")
                Spacer()
                Image(systemName: "plus.circle")
                Spacer()
                Image(systemName: "person")
                Spacer()
            }
            .padding()
            .background(Color(red: 0.36, green: 0.55, blue: 0.35))
            .cornerRadius(35)
        }
        .padding(.top, 16)
    }
}

struct BottomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationView()
    }
}
