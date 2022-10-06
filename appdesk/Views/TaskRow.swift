

import SwiftUI

struct TaskRow: View {
    var task: String
    var completed: Bool
    
    var body: some View {
        HStack(spacing: 20) {
            // Se a tarefa for concluída, mostre um círculo de marca de seleção, caso contrário, mostre um círculo vazio.
            
            Image(systemName: completed ? "checkmark.circle" : "circle")
            
            Text(task)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Do laundry", completed: true)
    }
}

