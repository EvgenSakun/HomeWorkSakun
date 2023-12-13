//
//  Teacher.swift
//  DzOOPSakun
//
//  Created by Evgeny Sakun on 13.12.23.
//

import Foundation

class Teacher {
    private var id: Int
    private var firstName: String
    private var lastName: String
    private var subjectsTaught: [Subject]
    private var studentsTaught: [Student]
    
    init(id: Int, firstName: String, lastName: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.subjectsTaught = []
        self.studentsTaught = []
    }
    
    var grade = [String]()
    
    // Метод для добавления предмета, который ведет учитель
    func addSubjectTaught(subjectName: String) {
        let subject = Subject(subjectName: subjectName, grade: "")
        self.subjectsTaught.append(subject)
    }
    
    func assignStudent(student: Student) {
        self.studentsTaught.append(student)
    }
    
    func setTeacherFullName(name: String, lastName: String) {
        self.firstName = name
        self.lastName = lastName
    }
    
    func getTeacherFullName() -> String {
        return self.firstName + " " + self.lastName
    }
    
    // Метод для установки оценки ученику по определенному предмету
    func setGrade(for: Student, subjectName: String, grade: String) -> String {
        self.studentsTaught.append(`for`)
        subjectsTaught.forEach { s in
            if subjectName == s.subjectName {
                self.grade.append(grade)
            } else {
                self.grade.append("No grade")
            }
        }
        return grade + " (Проверено \(firstName) \(lastName) для \(subjectName))"
    }
    // Метод для получения информации об учителе и предметах, которые он ведет
    func teacherInfo() {
        print("Учитель \(firstName) \(lastName) (ID: \(id)) его предмет:  \(subjectsTaught.map({$0.subjectName})). Его оценка \(grade) для студента - \(studentsTaught.map({$0.getName()}))")
    }
    
}
