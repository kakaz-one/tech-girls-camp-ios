//
//  CalculatorView.swift
//  CalculatorApp
//
//  ChallengeProjects
//

import SwiftUI

struct CalculatorView: View {
    // 足し算電卓用の変数
    // @State: プロパティが変更されたときにビューを自動的に再描画するためのおまじない
    @State var firstNumber: String = ""
    @State var secondNumber: String = ""
    @State var result: String = "?"
    
    // 引き算電卓用の変数
    @State var subFirstNumber: String = ""
    @State var subSecondNumber: String = ""
    @State var subResult: String = "?"
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                // 足し算電卓
                VStack(spacing: 20) {
                    Text("足し算電卓")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    HStack(spacing: 10) {
                        // 1つ目の入力フィールド
                        // @Stateのついたプロパティには$をつけるというおまじない。
                        TextField("?", text: $firstNumber)
                            .keyboardType(.numberPad)
                            .frame(width: 60)
                            .multilineTextAlignment(.center)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        Text("+")
                            .font(.title)
                        
                        // 2つ目の入力フィールド
                        TextField("?", text: $secondNumber)
                            .keyboardType(.numberPad)
                            .frame(width: 60)
                            .multilineTextAlignment(.center)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        Text("=")
                            .font(.title)
                        
                        // 結果の表示
                        Text(result)
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(width: 100)
                            .multilineTextAlignment(.center)
                    }
                    
                    // 計算ボタン
                    Button(action: {
                        // ここでボタンを押した時の挙動を記述
                        // 今回は calculateSum() というメソッド(関数)を呼び出しています
                        // 具体的な処理は calculateSum() 内に記述します
                        calculateSum()
                    }) {
                        Text("足し算を計算する")
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                }
                
                Divider()
                
                // 引き算電卓
                VStack(spacing: 20) {
                    Text("引き算電卓")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    HStack(spacing: 10) {
                        // 1つ目の入力フィールド
                        TextField("?", text: $subFirstNumber)
                            .keyboardType(.numberPad)
                            .frame(width: 60)
                            .multilineTextAlignment(.center)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        Text("-")
                            .font(.title)
                        
                        // 2つ目の入力フィールド
                        TextField("?", text: $subSecondNumber)
                            .keyboardType(.numberPad)
                            .frame(width: 60)
                            .multilineTextAlignment(.center)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        Text("=")
                            .font(.title)
                        
                        // 結果の表示
                        Text(subResult)
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(width: 100)
                            .multilineTextAlignment(.center)
                    }
                    
                    // 計算ボタン
                    Button(action: {
                        // 引き算の計算メソッドを呼び出し
                        calculateSubtraction()
                    }) {
                        Text("引き算を計算する")
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
            }
            .padding()
        }
    }
    
    // 足し算の処理
    func calculateSum() {
        // 入力された文字列を数値に変換
        guard let first = Double(firstNumber), let second = Double(secondNumber) else {
            // 数値に変換できない場合はエラーメッセージを表示
            result = "エラー"
            return
        }
        
        // 足し算を実行
        let sum = first + second
        
        // 結果を文字列に変換して表示
        // 小数点以下が0の場合は整数として表示
        if sum == floor(sum) {
            result = String(Int(sum))
        } else {
            result = String(sum)
        }
    }
    
    // 引き算の処理
    func calculateSubtraction() {
        // 入力された文字列を数値に変換
        guard let first = Double(subFirstNumber), let second = Double(subSecondNumber) else {
            // 数値に変換できない場合はエラーメッセージを表示
            subResult = "エラー"
            return
        }
        
        // 引き算を実行
        let difference = first - second
        
        // 結果を文字列に変換して表示
        // 小数点以下が0の場合は整数として表示
        if difference == floor(difference) {
            subResult = String(Int(difference))
        } else {
            subResult = String(difference)
        }
    }
}

#Preview {
    CalculatorView()
}
