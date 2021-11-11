//
//  CreateNewUser.swift
//  StudentApp
//
//  Created by Роман Шабаев on 08.11.2021.
//

import UIKit

class NewStudentViewController: UIViewController {
    
    var delegate: AddNewStudentProtocol?
    var studentModel: StudentList!
    
    var nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter name"
        textField.backgroundColor = .white
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        view.addSubview(nameTextField)
        setTextFieldConstraints()
        setNavigationSettings()
        nameTextField.becomeFirstResponder()
    }
    
    private func setNavigationSettings() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Create new user"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(handleDone))
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(handleSave))
    }
    
    @objc private func handleDone() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc private func handleSave() {
        guard let newStudent = nameTextField.text, nameTextField.hasText else {
            print("eror")
            return
        }
        
        let student = StudentList(image: UIImage(systemName: "person.fill") ?? UIImage(), name: newStudent)
        delegate?.addStudent(student: student)
    }
    
    private func setTextFieldConstraints() {
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -80).isActive = true
        nameTextField.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }
    
}
