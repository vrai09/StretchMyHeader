//
//  TableViewController.swift
//  StretchMyHeader
//
//  Created by Livleen Rai on 2017-08-29.
//  Copyright © 2017 Livleen Rai. All rights reserved.
/*
 World: "Climate change protests, divestments meet fossil fuels realities"
 Europe "Scotland's 'Yes' leader says independence vote is 'once in a lifetime'"
 Middle East, summary: "Airstrikes boost Islamic State, FBI director warns more hostages possible"
 Africa, "Nigeria says 70 dead in building collapse; questions S. Africa victim claim"
 Asia Pacific, "Despite UN ruling, Japan seeks backing for whale hunting"
 Americas, "Officials: FBI is tracking 100 Americans who fought alongside IS in Syria"
 World, "South Africa in $40 billion deal for Russian nuclear reactors"
 Europe*/

import UIKit

class TableViewController: UITableViewController {
    
    struct NewsItem {
        
        enum Categories {
            case World
            case Europe
            case MiddleEast
            case Africa
            case AsiaPacific
            case Americas
            
            func toString() -> String {
                switch self {
                case .World:
                    return "World"
                case .Europe:
                    return "Europe"
                case .MiddleEast:
                    return "MiddleEast"
                case .Africa:
                    return "Africa"
                case .AsiaPacific:
                    return "AsiaPacific"
                case .Americas:
                    return "Americas"
                }
            }
            
            func toColor() -> UIColor {
                switch self {
                case .World:
                    return UIColor.blue
                case .Europe:
                    return UIColor.red
                case .MiddleEast:
                    return UIColor.yellow
                case .Africa:
                    return UIColor.orange
                case .AsiaPacific:
                    return UIColor.purple
                case .Americas:
                    return UIColor.darkGray
                }
                
            }
        }
        
        var category: Categories
        var headline: String
    }
    
    let items = [
        NewsItem(category: .World, headline: "Climate change protests, divestments meet fossil fuels realities"),
        NewsItem(category: .Europe, headline: "Scotland's 'Yes' leader says independence vote is 'once in a lifetime'"),
        NewsItem(category: .MiddleEast, headline: "Airstrikes boost Islamic State, FBI director warns more hostages possible"),
        NewsItem(category: .Africa, headline: "Nigeria says 70 dead in building collapse; questions S. Africa victim claim"),
        NewsItem(category: .AsiaPacific, headline: "Despite UN ruling, Japan seeks backing for whale hunting"),
        NewsItem(category: .World, headline: "South Africa in $40 billion deal for Russian nuclear reactors"),
        NewsItem(category: .Americas, headline: "Officials: FBI is tracking 100 Americans who fought alongside IS in Syria")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 140
        
        navigationController?.isNavigationBarHidden = true
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        
        let item = items[indexPath.row]
        
        cell.setUpCell(category: item.category.toString(), headline: item.headline, headlineColor:item.category.toColor())
        
        
        return cell
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    // MARK: - NewsItems
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
