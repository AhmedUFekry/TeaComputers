//
//  RepositoriesTableViewController.swift
//  TeaComputersTechnicalTask
//
//  Created by Ahmed Fekry on 17/06/2023.
//

import UIKit

class RepositoriesTableViewController:
    
    
  
UITableViewController {
    
    var comingRipos : [Ripos]?
    var riposViewModel : RiposViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        riposViewModel = RiposViewModel()
        riposViewModel?.bindingRipos = { [self] in
            comingRipos = riposViewModel?.ObservableRipos
            DispatchQueue.main.async {
                self.tableView.reloadData()
                
            }
        }
     
        riposViewModel?.getRipos()

       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return comingRipos?.count ?? 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RipositoriesTableViewCell", for: indexPath) as? RipositoriesTableViewCell
        if comingRipos == nil {
            cell?.connectionImageView.isHidden = false
            cell?.nameTextLable.isHidden = true
            cell?.discriptionTextView.isHidden = true

            cell?.connectionImageView.image = UIImage(named: "no")
            
        }else{
            cell?.connectionImageView.isHidden = true
            cell?.nameTextLable.text = comingRipos?[indexPath.row].name
            cell?.discriptionTextView.text = comingRipos?[indexPath.row].description
            cell?.layer.cornerRadius = 20
                    cell?.backgroundColor = .systemGray5
                    cell?.layer.shadowRadius = 3
                    cell?.layer.shadowOpacity = 0.5
                    cell?.layer.shadowOffset = CGSize(width: 5, height: 5)
            
        }
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Repositories"
    }

}

