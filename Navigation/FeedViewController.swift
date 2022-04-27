//
//  FeedViewController.swift
//  Navigation
//
//  Created by Сергей  Быков on 25.04.2022.
//

import UIKit

class FeedViewController: UIViewController {
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Лента"
        button()
    }
    
    func button () {
        let button = UIButton(frame: CGRect(x: 100, y: 50, width: 200, height: 50))
        
        view.addSubview(button)
        
        button.setTitle("Пост", for: .normal)
        button.backgroundColor = .systemGreen
        button.center = view.center
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
    }
    
    @objc func onClick () {
        let postViewController = PostViewController()
        self.navigationController?.pushViewController(postViewController, animated: true)
        postViewController.title = "Мой пост"
    }
}
