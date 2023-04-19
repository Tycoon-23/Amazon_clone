//
//  SearchScreenTableViewCell.swift
//  Amazon_clone
//
//  Created by ヴィヤヴャハレ・アディティア on 18/04/23.
//

import UIKit

class SearchScreenTableViewCell: UITableViewCell {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var brandNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var primeLogoImageView: UIImageView!
    @IBOutlet weak var deliveryDateLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
