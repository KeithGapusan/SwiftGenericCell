//
//  TableCells.swift
//  TableTest
//
//  Created byKeith Gapusan on 20/07/2018.
//

import UIKit

class UserCell: UITableViewCell, ConfigurableCell {
    @IBOutlet weak var avatarView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!

    func configure(data user: User) {
        avatarView.image = UIImage(named: user.imageName)
        userNameLabel.text = user.name
    }
}


class MessageCell: UITableViewCell, ConfigurableCell {
    @IBOutlet weak var messageLabel: UILabel!

    func configure(data message: String) {
        messageLabel.text = message
    }
}


class ImageCell: UITableViewCell, ConfigurableCell {
    @IBOutlet weak var pictureView: UIImageView!

    func configure(data url: URL) {
        if let data = try? Data(contentsOf: url) {
            self.pictureView.image = UIImage(data: data)
        }
    }
}

class WarningCell: UITableViewCell, ConfigurableCell {
    @IBOutlet weak var messageLabel: UILabel!
    
    func configure(data message: String) {
        messageLabel.text = message
    }
}
