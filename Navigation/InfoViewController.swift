//
//  InfoViewController.swift
//  Navigation
//
//  Created by Сергей  Быков on 27.04.2022.
//

import UIKit


class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        title = "Информационный Пост"
        button()
    }
    func button () {
     let button = UIButton(frame: CGRect(x: 100, y: 50, width: 200, height: 50))
     
     view.addSubview(button)
     
     button.setTitle("НАЖМИ МЕНЯ", for: .normal)
     button.backgroundColor = .systemRed
     button.center = view.center
     button.layer.cornerRadius = 10
     button.layer.masksToBounds = true
     
     button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
     }
     
     @objc func onClick () {
         let alert = UIAlertController(title: "Не тронь меня", message: "Тронь меня", preferredStyle: .alert)
     self.present(alert, animated: true, completion: nil)
         let cancelAction = UIAlertAction(title: "Отмена", style: .cancel, handler: {_ in
             print("отмена")
             })
         alert.addAction(cancelAction)
         let deleteAction = UIAlertAction(title: "Удалить", style: .destructive, handler: {_ in
             print("удалить")
             })
         alert.addAction(deleteAction)
     }
}
