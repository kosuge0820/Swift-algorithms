//: Playground - noun: a place where people can play

import UIKit

struct Chapter1 {
    /**
     00. 文字列の逆順
     文字列"stressed"の文字を逆に（末尾から先頭に向かって）並べた文字列を得よ．
     */
    
    static func q0(_ input: String) -> String {
        return String(input.characters.reversed())
    }
    
    /**
     # 01. 「パタトクカシーー」
     「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．
     */
    
    static func q1(_ input: String) -> String {
        return String(input.characters.enumerated().filter { i, _ in i % 2 == 1 }.map { $1 })
    }
    
    /**
     02. 「パトカー」＋「タクシー」＝「パタトクカシーー」
     「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ．
     */
    
    static func q2(_ input1: String, input2: String) -> String {
        return zip(input1.characters, input2.characters)
            .map { String($0) + String($1) }
            .reduce("", +)
    }
}

print(Chapter1.q2("パトカー", input2: "タクシー"))