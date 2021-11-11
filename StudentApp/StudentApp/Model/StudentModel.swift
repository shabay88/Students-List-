//
//  studentModel.swift
//  StudentApp
//
//  Created by Роман Шабаев on 07.11.2021.
//


import UIKit

struct StudentList {
    var image: UIImage
    var name: String
}

extension UIViewController {
    static func collectionObjects() -> [StudentList] {
        let firstStudent = StudentList(image: (UIImage(systemName: "person.fill")) ?? UIImage(), name: "Roman")
        let secondStudent = StudentList(image: (UIImage(systemName: "person.fill")) ?? UIImage(), name: "Ivan")
        let thirdStudent = StudentList(image: (UIImage(systemName: "person.fill")) ?? UIImage(), name: "Andrei")
        let fourhStudent = StudentList(image: (UIImage(systemName: "person.fill")) ?? UIImage(), name: "Artem")
        let fivthStudent = StudentList(image: (UIImage(systemName: "person.fill")) ?? UIImage(), name: "Pavel")
        return [firstStudent, secondStudent, thirdStudent, fourhStudent, fivthStudent]
    }
}
