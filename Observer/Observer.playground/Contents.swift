import Foundation

protocol Subject {
    func add(observer: PropertyObserver)
    func remove(observer: PropertyObserver)
    func notify(withString string: String)
}

protocol PropertyObserver {
    func didGet(newTask task: String)
}

class Teacher {
    
    var observerCollection = NSMutableSet()
    var homeTask = "" {
        didSet {
            notify(withString: homeTask)
        }
    }
    
}

extension Teacher: Subject {
    
    func add(observer: PropertyObserver) {
        observerCollection.add(observer)
    }
    
    func remove(observer: PropertyObserver) {
        observerCollection.remove(observer)
    }
    
    func notify(withString string: String) {
        for observer in observerCollection {
            (observer as! PropertyObserver).didGet(newTask: string)
        }
    }
    
}

class Student: NSObject {
    
    var homeTask = ""

}

extension Student: PropertyObserver {
    
    func didGet(newTask task: String) {
        homeTask = task
        print("new task \(homeTask) to be done")
    }
    
}

let teacher = Teacher()
let student = Student()

teacher.add(observer: student)
teacher.homeTask = "p. 40 ex. 1"
print("\(student.homeTask)")

