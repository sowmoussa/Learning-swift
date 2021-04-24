//
//  ContentView.swift
//  Nightwatch
//
//  Created by Moussa SOW on 06/04/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var nighWatchTasks: NightWatchTasks
    
    var body: some View {
        NavigationView {
            List {
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")) {
                    ForEach(nighWatchTasks.nightlyTasks, content: {
                        task in
                        NavigationLink(
                            destination: DetailsView(task: task),
                            label: {
                                TaskRow(task: task)
                            })
                    })
                }
                Section(header: TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks")) {
                    ForEach(nighWatchTasks.weeklyTasks, content: {
                        task in
                        NavigationLink(
                            destination: DetailsView(task: task),
                            label: {
                                TaskRow(task: task)
                            })
                    })
                }
                Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Task")) {
                    ForEach(nighWatchTasks.monthlyTasks, content: {
                        task in
                        NavigationLink(
                            destination: DetailsView(task: task),
                            label: {
                                TaskRow(task: task)
                            })
                    })
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
    }
}

struct TaskRow: View {
    let task: Task
    var body: some View {
        VStack {
            if task.isComplete {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundColor(.gray)
                        .strikethrough()
                }
            } else {
                HStack {
                    Image(systemName: "square")
                    Text(task.name)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
struct TaskSectionHeader: View {
    let symbolSystemName: String
    let headerText: String
    
    var body: some View {
        HStack {
            Image(systemName: symbolSystemName)
            Text(headerText)
        }
        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
    }
}

struct HomeView: View {
    var body: some View {
        Text("TODO: build home screen")
    }
}

struct MapView: View {
    var body: some View {
        Text("TODO: build map screen")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("TODO: build settings screen")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let nightWatchTasks = NightWatchTasks()
        Group {
            ContentView(nighWatchTasks: nightWatchTasks)
            TaskRow(task: Task(name: "Test task", isComplete: false, lastCompleted: nil))
                .previewLayout(.fixed(width: 300.0, height: 70.0))
        }
    }
}



//
//TabView {
//    HomeView().tabItem {
//        Text("Tab Label 1")
//        Image(systemName: "house")
//    }
//    MapView().tabItem {
//        Image(systemName: "map")
//        Text("Tab Label 2")
//    }
//    SettingsView().tabItem {
//        Image(systemName: "gear")
//        Text("Tab Level 3")
//    }
//}
