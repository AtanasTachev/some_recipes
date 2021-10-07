//
//  MyTableViewCell.swift
//  some_recipes
//
//  Created by atanastachev on 7.10.21.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet weak var recipePicture: UIImageView!
    @IBOutlet weak var recipeName: UILabel!
    @IBOutlet weak var recipeDetail: UILabel!
    @IBOutlet weak var timeToCook: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
