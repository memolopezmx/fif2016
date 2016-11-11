//
//  DetailTableViewCell.swift
//  FIF 16
//
//  Created by ginppian on 10/11/16.
//  Copyright © 2016 AzureChen. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    @IBOutlet weak var labelEvento: UILabel!
    @IBOutlet weak var labelHora: UILabel!
    @IBOutlet weak var labelPonente: UILabel!
    @IBOutlet weak var labelPais: UILabel!
    @IBOutlet weak var labelSede: UILabel!
    @IBOutlet weak var labelDireccion: UILabel!
    @IBOutlet weak var labelDescripcion: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
