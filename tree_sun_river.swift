import UIKit

class Future {
    var future: String
    var goal: String
    
    init(future: String, goal: String) {
        self.future = future
        self.goal = goal
    }
}

class ShapingTheFuture {
    
    var future: Future
    
    init(future: Future) {
        self.future = future
    }
    
    func createVision(futureVision: String, longTermGoals: String) {
        let newFuture = Future(future: futureVision, goal: longTermGoals)
        self.future = newFuture
    }
    
    func planAction(task1: String, task2: String, task3: String) {
        print("Task 1: \(task1)")
        print("Task 2: \(task2)")
        print("Task 3: \(task3)")
    }
    
    func implementPlan(action1: String, action2: String, action3: String, action4: String) {
        print("Action 1: \(action1)")
        print("Action 2: \(action2)")
        print("Action 3: \(action3)")
        print("Action 4: \(action4)")
    }
    
    func measureProgress(goal1: String, goal2: String, goal3: String, goal4: String) {
        print("Goal 1: \(goal1)")
        print("Goal 2: \(goal2)")
        print("Goal 3: \(goal3)")
        print("Goal 4: \(goal4)")
    }
    
    func adjustGoals(newGoal1: String, newGoal2: String, newGoal3: String, newGoal4: String) {
        print("New Goal 1: \(newGoal1)")
        print("New Goal 2: \(newGoal2)")
        print("New Goal 3: \(newGoal3)")
        print("New Goal 4: \(newGoal4)")
    }
    
    func reachGoals(step1: String, step2: String, step3: String, step4: String) {
        print("Step 1: \(step1)")
        print("Step 2: \(step2)")
        print("Step 3: \(step3)")
        print("Step 4: \(step4)")
    }
    
    func adapt(change1: String, change2: String, change3: String, change4: String) {
        print("Change 1: \(change1)")
        print("Change 2: \(change2)")
        print("Change 3: \(change3)")
        print("Change 4: \(change4)")
    }
    
    func assessOutcome(goals1: String, goals2: String, goals3: String, goals4: String) {
        print("Goals 1: \(goals1)")
        print("Goals 2: \(goals2)")
        print("Goals 3: \(goals3)")
        print("Goals 4: \(goals4)")
    }
    
    func shareResults(result1: String, result2: String, result3: String, result4: String) {
        print("Result 1: \(result1)")
        print("Result 2: \(result2)")
        print("Result 3: \(result3)")
        print("Result 4: \(result4)")
    }
    
    func exportData(data1: String, data2: String, data3: String, data4: String) {
        print("Data 1: \(data1)")
        print("Data 2: \(data2)")
        print("Data 3: \(data3)")
        print("Data 4: \(data4)")
    }
}