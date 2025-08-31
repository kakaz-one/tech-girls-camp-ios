import SwiftUI

struct CoffeeItemView: View {
    let coffee: Coffee

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            AsyncImage(url: coffee.image) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                case .failure:
                    Image(systemName: "photo")
                        .imageScale(.large)
                        .foregroundStyle(.secondary)
                @unknown default:
                    EmptyView()
                }
            }
            .frame(height: 200)
            .frame(maxWidth: .infinity)
            .contentShape(.rect)

            VStack(alignment: .leading, spacing: 10) {
                Text(coffee.title)
                    .font(.title)

                Text(coffee.description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .padding()
        }
        .cornerRadius(10)
    }
}

#Preview {
    let coffee = Coffee(
        id: 1,
        title: "Black Coffee",
        description: "Simple and classic.",
        ingredients: ["Coffee"],
        image: URL(string: "https://images.unsplash.com/photo-1494314671902-399b18174975?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!
    )
    CoffeeItemView(coffee: coffee)
}
