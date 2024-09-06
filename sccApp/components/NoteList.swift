//
//  NoteList.swift
//  sccApp
//
//  Created by 蔡铨 on 2024/9/5.
//

import SwiftUI

struct NoteList: View {
    
    @StateObject var noteData = NoteData()
    
    @State var titleInput = ""
    @State var contentInput = ""
    
    
    var body: some View {
        VStack{
            
            VStack{
                TextField("title", text: $titleInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("content", text: $contentInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                HStack{
                    Spacer()
                    Button{
                        if(titleInput=="" || contentInput==""){
                            return;
                        }
                        
                        let id = UUID()
                        let newNote = NoteModel(id: id, title: titleInput, content: contentInput)
                        
                        noteData.notes.insert(newNote, at: 0)
                        noteData.saveNotes()
                        
                        titleInput = ""
                        contentInput = ""
                        
                    }label: {
                        RoundButton(text: "Add", image: "square.and.pencil")
                    }
                }
            }.padding()
            
            
            
            List{
                ForEach(noteData.notes){ note in
                    VStack(alignment: .center, spacing: 10){
                        Text(note.title).font(.title3).bold()
                        
                        Text(note.content).foregroundColor(.gray)
                    }
                }
                .onDelete(perform: delete)
            }
            .listStyle(SidebarListStyle())
        }
    }
    
    
    func delete(at offsets: IndexSet){
        noteData.notes.remove(atOffsets: offsets)
        noteData.saveNotes()
    }
    
    
}

#Preview {
    NoteList()
}
