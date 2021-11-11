//
//  StudentCell.swift
//  StudentApp
//
//  Created by Роман Шабаев on 07.11.2021.
//

import UIKit

class StudentCell: UITableViewCell {
    
    var studentImage = UIImageView()
    var studentName = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(studentImage)
        addSubview(studentName)
        setImageConstraints()
        setTitleConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setSettings(studentInfo: StudentList) {
        studentImage.image = studentInfo.image
        studentName.text = studentInfo.name
        studentName.font = UIFont(name:"HelveticaNeue-Medium", size: 18.0)
        studentImage.tintColor = .lightGray
    }
    
    func setImageConstraints() {
        studentImage.translatesAutoresizingMaskIntoConstraints = false
        studentImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        studentImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        studentImage.heightAnchor.constraint(equalToConstant: 55).isActive = true
        studentImage.widthAnchor.constraint(equalToConstant: 65).isActive = true
    }
    
    func setTitleConstraints() {
        studentName.translatesAutoresizingMaskIntoConstraints = false
        studentName.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        studentName.leadingAnchor.constraint(equalTo: studentImage.trailingAnchor, constant: 15).isActive = true
    }
}

