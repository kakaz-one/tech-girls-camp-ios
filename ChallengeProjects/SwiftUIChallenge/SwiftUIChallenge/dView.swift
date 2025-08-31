//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// D. 四角形の中に3つのテキストを等間隔に配置（異なるアライメント）
//

import SwiftUI

struct dView: View {
    var body: some View {
        Rectangle()
            .fill(Color.red)
            .frame(width: 300, height: 200)
            .overlay(
                VStack(spacing: 40) {
                    Text("Left Aligned")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Center Aligned")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Text("Right Aligned")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
            )
    }
}

#Preview {
    dView()
}
