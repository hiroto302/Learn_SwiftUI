//
//  ToDoList.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/08.
//

import SwiftUI

struct ToDoList: View {

    @State var taskData = [(title: "学習する", completed: false),
                    (title: "課題する", completed: false),
                    (title: "ジョギングする", completed: false),
                    (title: "休憩する", completed: false)]

    var body: some View {
        NavigationStack{
            List(0..<taskData.count, id : \.self) { index in
                Button{
//                    taskData[index].completed = !taskData[index].completed
                    taskData[index].completed.toggle()
                } label: {
                    HStack {
//                        if taskData[index].completed == true {
//                            Image(systemName: "checkmark.circle.fill")
//                        } else {
//                            Image(systemName: "circle")
//                        }
                        Image(systemName: taskData[index].completed == true ? "checkmark.circle.fill" : "circle")
                        Text(taskData[index].title)
                    }
                }
//                .foregroundStyle(.black)
                // ダークモード対応
                .foregroundStyle(.primary)
            }
            .navigationTitle("ToDoList")
        }
    }

}

#Preview {
    ToDoList()
}
