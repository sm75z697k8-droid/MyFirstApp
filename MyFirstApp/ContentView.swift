import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.indigo, .blue, .cyan],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 22) {
                Image(systemName: "iphone.gen3")
                    .font(.system(size: 64, weight: .light))
                    .foregroundStyle(.white)

                Text("Hello, iPhone!")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)

                Text("Your first native SwiftUI app.")
                    .font(.title3)
                    .foregroundStyle(.white.opacity(0.9))
                    .multilineTextAlignment(.center)

                Button {
                    tapCount += 1
                } label: {
                    Label("Tap to test (\(tapCount))", systemImage: "hand.tap.fill")
                        .font(.headline)
                        .padding(.horizontal, 26)
                        .padding(.vertical, 16)
                        .foregroundStyle(.indigo)
                        .background(.white, in: Capsule())
                }
                .padding(.top, 12)

                Text("Built with SwiftUI • Compiled on GitHub Actions")
                    .font(.footnote)
                    .foregroundStyle(.white.opacity(0.8))
                    .multilineTextAlignment(.center)
            }
            .padding(28)
        }
    }
}

#Preview {
    ContentView()
}
