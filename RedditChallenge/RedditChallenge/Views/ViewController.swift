//
//  ViewController.swift
//  RedditChallenge
//
//  Created by Consultant on 2/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var tableView: UITableView!
    
    private var tableView2: UITableView = {
        let tableView2 = UITableView()
        tableView2.translatesAutoresizingMaskIntoConstraints = false
        //tableView2.showsVerticalScrollIndicator = true
        tableView2.register(StoryCell.self, forCellReuseIdentifier: StoryCell.identifier)
        return tableView2
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpUI()
        
//        Timer.init(timeInterval: 1.0, repeats: true) { _ in
//            print("print this")
//        }
        
//        let detail = DetailViewController()
//        navigationController?.pushViewController(detail, animated: true)
        
//        let storyboard = UIStoryboard(name: "LaunchScreen", bundle: nil)
//        let viewController = storyboard.instantiateViewController(identifier: "StoriesList")
        
        tableView2.dataSource = self
    }

    private func setUpUI() {
        view.backgroundColor = .white
        
        view.addSubview(tableView2)
        
        //create the constrains
        
        let safeArea = view.safeAreaLayoutGuide
        tableView2.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        tableView2.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        tableView2.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
        tableView2.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor,constant: -20).isActive = true
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView2.dequeueReusableCell(withIdentifier: StoryCell.identifier, for: indexPath) as? StoryCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
}
