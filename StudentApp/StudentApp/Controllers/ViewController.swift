//
//  ViewController.swift
//  StudentApp
//
//  Created by Роман Шабаев on 07.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var tableView = UITableView()
    var students: [StudentList] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    private func configureView() {
        view.addSubview(tableView)
        tableViewDelegate()
        configureTableView()
        setNavigationButton()
        students = ViewController.collectionObjects()
    }
    
    private func tableViewDelegate() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    private func configureTableView() {
        tableView.rowHeight = 90
        tableView.pin(to: view)
        tableView.register(StudentCell.self, forCellReuseIdentifier: "StudentCell")
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell") as! StudentCell
        let student = students[indexPath.row]
        cell.setSettings(studentInfo: student)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        students.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .top)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let studentInfoVC = StudentsInfoViewController()
        let student = students[indexPath.row]
        studentInfoVC.setDetailSettings(studentInfo: student)
        navigationController?.pushViewController(studentInfoVC, animated: true)
    }
    
}

extension ViewController: AddNewStudentProtocol {
    func addStudent(student: StudentList) {
        self.dismiss(animated: true)
        self.students.append(student)
        self.tableView.reloadData()
    }
}




