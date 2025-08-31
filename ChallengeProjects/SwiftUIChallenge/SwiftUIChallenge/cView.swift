//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// C. テキストを四角形の左下に配置
//

import SwiftUI

struct cView: View {
    var body: some View {
        ZStack (alignment: .bottomLeading){
            Rectangle()
                .fill(Color.green)
                .frame(width: 300, height: 200)
            Text("Bottom Left")
                .foregroundColor(.white)
                }
    }
}

#Preview {
    cView()
}
