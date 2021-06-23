//
//  PrefectureCell.swift
//  Task10
//
//  Created by akio0911 on 2021/06/23.
//

import UIKit

final class PrefectureCell: UITableViewCell {
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var numberLabel: UILabel!

    private static let colors: [UIColor] = [#colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1), #colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 1), #colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1)]

    func configure(name: String, index: Int) {
        nameLabel.text = name
        numberLabel.text = "\(index + 1)番目の県です"
        backgroundColor = Self.colors[index % Self.colors.count]
    }
}
