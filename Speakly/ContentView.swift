import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "text.bubble")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Speakly")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
