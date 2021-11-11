//
//  StudentsInfo.swift
//  StudentApp
//
//  Created by Роман Шабаев on 08.11.2021.
//

import UIKit

class StudentsInfoViewController: UIViewController {
    
    var studentLabel: UILabel = {
        let student = UILabel()
        student.font = UIFont(name:"HelveticaNeue-Medium", size: 18.0)
        return student
    }()
    
    var studentImage: UIImageView = {
        let image = UIImageView()
        image.tintColor = .gray
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    private func configureViews() {
        view.backgroundColor = .white
        view.addSubview(studentLabel)
        view.addSubview(studentImage)
        setLabelConstraints()
        setImageConstraints()
    }
    
    func setDetailSettings(studentInfo: StudentList) {
        studentLabel.text = studentInfo.name
        studentImage.image = studentInfo.image
    }
    
    private func setLabelConstraints() {
        studentLabel.translatesAutoresizingMaskIntoConstraints = false
        studentLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 70).isActive = true
        studentLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func setImageConstraints() {
        studentImage.translatesAutoresizingMaskIntoConstraints = false
        studentImage.centerYAnchor.constraint(equalTo: studentLabel.centerYAnchor, constant: -130).isActive = true
        studentImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        studentImage.widthAnchor.constraint(equalToConstant: 150).isActive = true
        studentImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
}

