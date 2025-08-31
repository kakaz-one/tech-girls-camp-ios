//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// E. 商品アイテム
//

import SwiftUI

struct eView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .frame(width: 350, height: 400)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 4)
            
            VStack(spacing: 20) {
                AsyncImage(url: URL(string: "https://picsum.photos/300/200")!)
                Text("商品：絵画")
                    .foregroundColor(.black)
                Text("￥20000")
                    .foregroundColor(.green)
                
            }
                
                }
        
            
                
        
    }
}

#Preview {
    eView()
}
