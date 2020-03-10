//
//  VideoCell.swift
//  IOSPractice
//
//  Created by ENFINY INNOVATIONS on 3/5/20.
//  Copyright © 2020 ENFINY INNOVATIONS. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    
    var videoImageView = UIImageView()
    var videoTitleLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier resuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: resuseIdentifier)
        addSubview(videoImageView)
        addSubview(videoTitleLabel)
        configureImageView()
        configurevideoTitleLabel()
        setImageConstraint()
        setVideoTitleConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(video: Video) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
        
    }
    
    func configureImageView() {
        videoImageView.layer.cornerRadius = 10
        videoImageView.clipsToBounds = true
        
    }
    
    func configurevideoTitleLabel() {
        videoTitleLabel.numberOfLines = 0
        videoTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraint() {
        videoImageView.translatesAutoresizingMaskIntoConstraints = false
        videoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        videoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        videoImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        videoImageView.widthAnchor.constraint(equalTo: videoImageView.heightAnchor, multiplier: 16/9).isActive = true
    }
    
    func setVideoTitleConstraint() {
        videoTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        videoTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        videoTitleLabel.leadingAnchor.constraint(equalTo: videoImageView.trailingAnchor, constant: 20).isActive = true
        videoTitleLabel.heightAnchor.constraint(equalToConstant: 88).isActive = true
        videoTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
    }
    
}
