//
//  Student.swift
//  DzOOPSakun
//
//  Created by Evgeny Sakun on 13.12.23.
//

import Foundation

class Student {
    private var id: Int
    private var name: String
    private var lastName: String
    private var age: Int
    private var subjects: [Subject]
    private var teacher: Teacher?
    
    init(id: Int, name: String, lastName: String, age: Int) {
        self.id = id
        self.name = name
        self.lastName = lastName
        self.age = age
        self.subjects = []
    }
    let noTeacher = Teacher(id: 0, firstName: "N/A", lastName: "N/A")
    
    var grade = [String]()
    // Метод для получения предмета
    func addSubject(subjectName: String) {
        let subject = Subject(subjectName: subjectName, grade: "")
        self.subjects.append(subject)
    }
    
    // Метод для установки оценок
    
    func getGrade(teacher: Teacher, grade: String) {
        if self.teacher?.getTeacherFullName() ?? "Учитель не сможет поставить оценки" == teacher.getTeacherFullName() {
            self.grade.append(grade)
        } else {
            self.grade.append("Оценки нет")
        }
    }
    
    // Метод для установки возраста студента
    func addAge(age: Int) {
        self.age = age
    }
    
    // Метод для установки имени студента
    func studentName(name: String) {
        self.name = name
    }
    
    func getName() -> String {
        return self.name
    }
    
    // Метод для связывания студента с учителем
    func assignTeacher(teacher: Teacher) {
        self.teacher = teacher
        print("Учитель \(teacher.getTeacherFullName()) проверяет студента - \(name) \(lastName)")
    }
    
    // Метод для получения информации о студенте и его предметах
    func studentInfo() {
        print("Студент \(name) \(lastName) (age: \(age), ID: \(id)) его предмет: \(subjects.map({$0.subjectName})) его оценка: \(grade)")
    }
    
}
