//
//  Extension+ ViewController.swift
//  StudentApp
//
//  Created by Роман Шабаев on 08.11.2021.
//

import UIKit

extension ViewController {
    func setNavigationButton() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Students List"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewStudent))
    }
    
    @objc func addNewStudent() {
        let controller = NewStudentViewController()
        controller.delegate = self
        self.present(UINavigationController(rootViewController: controller), animated: true, completion: nil)
    }
}
