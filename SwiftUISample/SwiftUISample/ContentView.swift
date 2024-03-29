//
//  ContentView.swift
//  SwiftUISample
//
//  Created by nkstar on 2021/07/02.
//

import SwiftUI // 프레임워크를 가져오고


// View를 상속받는 ContentView 구조체
// 반드시 body 변수가 있어야 한다.
// some은 함수 내부에서는 반환 타입을 알게 하고, 밖에서는 정확히 알지 못하게 숨기는 것.
// 최상위 View에서는 10개의 자식 View를 가질 수 있고 더 추가하고 싶다면, 다른 태그를 통해 감싸주어야 한다.
// 구조체의 특징상 내부 메소드에서 변수를 변경할 수 없음. 그래서 생긴게 state 키워드
// 약간 react 느낌의 state 관리라고 보면 쉽게 이해할 수 있을 듯
// State 어노테이션이 붙은 변수에 변경이 일어나게 되면 자동으로 View를 렌더링함.
struct ContentView: View {
    
    let genderType = ["남성", "여성", "기타"]
    
    @State var name = ""
    @State var gender = 0
    @State var bornIn = 0
    
    var result: String{
        if name.isEmpty {
            return "이름을 입력하세요."
        } else {
            return "\(name)님은 성별이 \(genderType[gender])이며 나이는 \(122 - bornIn)입니다."
        }
    }
    
    var body: some View {
        
//        ZStack{
//            Color.yellow.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//            Color.red.frame(width:300, height:300)
//            Color.blue.frame(width:100, height:100)
//        }
        
        NavigationView{
            Form{
                Section(header:Text("이름")){
                    TextField("이름을 입력해주세요.", text:$name)
                        .keyboardType(/*@START_MENU_TOKEN@*/.default/*@END_MENU_TOKEN@*/)
                }
                
                Section(header:Text("생년월일")){
                    Picker("출생년도",selection:$bornIn){
                        ForEach(1900 ..< 2021){
                            Text("\(String($0))")
                        }
                    }
                }
                
                Section(header:Text("성별")){
                    Picker("성별", selection: $gender){
                        ForEach(0 ..< genderType.count){
                            Text("\(self.genderType[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header:Text("결과")){
                    Text("\(result)")
                }
                
                Section(header:Text("Stack")){
                    HStack{
                        Text("Hello")
                        Text("Hello")
                        Text("Hello")
                    }.background(Color.red)
                    
                    VStack(alignment: .leading){
                        Text("Hello")
                        Spacer()
                        Text("Hello")
                        Spacer().frame(height:10)
                        Text("Hello")
                    }.background(Color.blue)
                
                }
            }.navigationTitle("회원가입")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
