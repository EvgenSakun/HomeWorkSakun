//
//  ViewController.swift
//  DzOOPSakun
//
//  Created by Evgeny Sakun on 13.12.23.
//

import UIKit

class ViewController: UIViewController {
    
    // Предметы
    let physicals = Subject(subjectName: "Physicals", grade: "")
    let geography = Subject(subjectName: "Geography", grade: "")
    let math = Subject(subjectName: "Math", grade: "")
    
    // Преподователи
    let physicalsTeacher = Teacher(id: 1, firstName: "Джон", lastName: "Петров")
    let geographyTeacher = Teacher(id: 2, firstName: "Майкл", lastName: "Сидоров")
    let mathTeacher = Teacher(id: 3, firstName: "Иван", lastName: "Иванов")
    
    // Студенты
    let student1 = Student(id: 1, name: "Алиса", lastName: "Симсон", age: 17)
    let student2 = Student(id: 2, name: "Боб", lastName: "Смит", age: 18)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Возраст студентов
        
        student1.addAge(age: 17)
        student2.addAge(age: 18)
        
        // Добавление предметов учителям
        
        physicalsTeacher.addSubjectTaught(subjectName: physicals.subjectName)
        geographyTeacher.addSubjectTaught(subjectName: geography.subjectName)
        mathTeacher.addSubjectTaught(subjectName: math.subjectName)
       
        
        // Связывание студентов с учителем
        student1.assignTeacher(teacher: physicalsTeacher)
        student2.assignTeacher(teacher: physicalsTeacher)
        print("")
        
        student1.addSubject(subjectName: physicals.subjectName)
        student1.addSubject(subjectName: math.subjectName)

        student2.addSubject(subjectName: geography.subjectName)
        student2.addSubject(subjectName: physicals.subjectName)
        
        // Учитель ставит оценки студентам по предметам
        student1.getGrade(teacher: physicalsTeacher, grade:( physicalsTeacher.setGrade(for: student1, subjectName: physicals.subjectName, grade: "3")))
        student2.getGrade(teacher: physicalsTeacher, grade: (physicalsTeacher.setGrade(for: student2, subjectName: physicals.subjectName, grade: "4")))
        
        // Вывод студентов:
        student1.studentInfo()
        student2.studentInfo()
        print("")
        
        // Связывание студентов с учителем
        student2.assignTeacher(teacher: geographyTeacher)
        student1.assignTeacher(teacher: mathTeacher)
        print("")
        
        // Учитель ставит оценки студентам по предметам
        student2.getGrade(teacher: geographyTeacher, grade: (geographyTeacher.setGrade(for: student2, subjectName: geography.subjectName, grade: "5")))
        student1.getGrade(teacher: mathTeacher, grade: (mathTeacher.setGrade(for: student1, subjectName: math.subjectName, grade: "2")))
        
        // Вывод студентов:
        student1.studentInfo()
        student2.studentInfo()
        print("")
        
        //  Вывод преподавателя:
        physicalsTeacher.teacherInfo()
        geographyTeacher.teacherInfo()
        mathTeacher.teacherInfo()
        
    }
}

