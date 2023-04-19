//
//  ViewController.swift
//  Amazon_clone
//
//  Created by ヴィヤヴャハレ・アディティア on 18/04/23.
//

import UIKit

class searchResultsViewController: UIViewController {

    @IBOutlet weak var searchResultsTableView: UITableView!
    
    let productNames = ["Canon EOS 1500D 24.1 Digital SLR Camera (Black) with EF S18-55 is II Lens",
    "Canon EOS 200D II 24.1MP Digital SLR Camera + EF-S 18-55mm f4 is STM Lens (Black)",
    "Canon EOS 1500D 24.1 Digital SLR Camera (Black) with EF S18-55 is II Lens & SanDisk Ultra UHS I 128GB SD Card 140MB/s for DSLR and Mirrorless Cameras, 10Y Warranty"]
    
    let brandName = ["Canon",
    "Canon",
    "Canon"]
    
    let price = ["₹38,490",
    "₹63,450",
    "₹39,677"]
    
    let productImages = ["Canon EOS 1500D",
    "Canon EOS 200D",
    "Canon EOS 1500D_SandiskUltra"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Initialised nib file object
        let searchResultsNib = UINib(nibName: "SearchScreenTableViewCell", bundle: nil)
        searchResultsTableView.register(searchResultsNib, forCellReuseIdentifier: "searchResultsCustomCell")
    }
}

extension searchResultsViewController: UITableViewDelegate {}
extension searchResultsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let searchScreenCell = searchResultsTableView.dequeueReusableCell(withIdentifier: "searchResultsCustomCell") as! SearchScreenTableViewCell
        
        searchScreenCell.productNameLabel.text = productNames[indexPath.row]
        searchScreenCell.brandNameLabel.text = brandName[indexPath.row]
        searchScreenCell.priceLabel.text = price[indexPath.row]
        searchScreenCell.productImage.image = UIImage(named: productImages[indexPath.row])
        
        return searchScreenCell
    }
    
    
}
