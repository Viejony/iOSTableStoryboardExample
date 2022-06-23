//
//  TableViewCell.swift
//  IOSTableStoryboardSample
//
//  Created by Jhonyfer Angarita on 23/06/22.
//

import UIKit

class ColorTableViewCell: UITableViewCell {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var colornameLabel: UILabel!
    @IBOutlet weak var rgbColorLabel: UILabel!
    @IBOutlet weak var hexColorLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        colorView.layer.cornerRadius = 4
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCell(color: ColorModel) {
        colorView.backgroundColor = UIColor(cgColor: CGColor(
            red: CGFloat(color.getRedFloat()),
            green: CGFloat(color.getGreenFloat()),
            blue: CGFloat(color.getBlueFloat()),
            alpha: 1.0))
        colornameLabel.text = color.colorName
        rgbColorLabel.text = "R = \(color.red), G = \(color.green), B = \(color.blue)"
        hexColorLabel.text = color.hexString
    }
    
}
