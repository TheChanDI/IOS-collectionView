//
//  ViewController.swift
//  IOSPractice
//
//  Created by ENFINY INNOVATIONS on 3/5/20.
//  Copyright © 2020 ENFINY INNOVATIONS. All rights reserved.
//


import UIKit

class ViewController: UICollectionViewController {
    
    lazy var topContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.01700210064, green: 0.5, blue: 0.9686274529, alpha: 1)
        let imageView = UIImageView()
        imageView.image = UIImage(named: "venom") //this is for venom picture
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 120 / 2
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 120),
            imageView.widthAnchor.constraint(equalToConstant: 120)
        
        ])
        
        let nameLabel = UILabel()
        nameLabel.text = "Peter Parker"
        nameLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        let emailLabel = UILabel()
        emailLabel.text = "blackSpidey@gmail.com"
        emailLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        emailLabel.font = UIFont.systemFont(ofSize: 13)
        view.addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            emailLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
      
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        configureTopContainerView()
      
    }
    
    func configureTopContainerView() {
        view.addSubview(topContainerView)
        topContainerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topContainerView.topAnchor.constraint(equalTo: view.topAnchor),
            topContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topContainerView.heightAnchor.constraint(equalToConstant: 260)
        ])
    }
    

}
    



















//import UIKit
//
//class ViewController: UIViewController {
//
//    var tableView = UITableView()
//    var videos: [Video] = []
//
//    struct Cells {
//        static let videoCell = "VideoCell"
//    }
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .brown
//        videos = fetchData()
//        configureTableView()
//        setTableViewDelegate()
//    }
//
//    func configureTableView(){
//        view.addSubview(tableView)
//        tableView.rowHeight = 100
//        tableView.register(VideoCell.self, forCellReuseIdentifier: Cells.videoCell)
//        tableView.pin(to: view)
//
//    }
//
//    func setTableViewDelegate(){
//        tableView.delegate = self
//        tableView.dataSource = self
//    }
//
//
//}
//
//extension ViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return videos.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.videoCell) as! VideoCell
//        let video = videos[indexPath.row]
//        cell.set(video: video)
//
//        return cell
//    }
//
//
//}
//
//extension ViewController {
//    func fetchData() -> [Video]{
//        let data1 = Video(image: Images.image1!, title: "First Image")
//        let data2 = Video(image: Images.image2!, title: "Second Image")
//        let data3 = Video(image: Images.image3!, title: "Third Image")
//        let data4 = Video(image: Images.image4!, title: "Fourth Image")
//        let data5 = Video(image: Images.image5!, title: "Fifth Image")
//        let data6 = Video(image: Images.image6!, title: "Sixth Image")
//
//        return [data1, data2, data3, data4,data5, data6]
//    }
//}
