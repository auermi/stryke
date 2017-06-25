//
//  MatchTableViewController.swift
//  Stryke
//
//  Created by Michael Andrew Auer on 6/9/17.
//  Copyright © 2017 Pear Bus. All rights reserved.
//

import UIKit

class MatchTableViewController: UITableViewController {

    // TODO: Might be temporary. Look into reloading tableview without needing this
    @IBAction func unWindOnCancel(_ unwindSegue: UIStoryboardSegue) {}
    
    @IBOutlet var matchTableView: UITableView!
    
    let label = UILabel()
    
    var matches: [Match] = [
        Match(
            _teams: [
                Team(
                    _name: "EnvyUs",
                    _players: [
                        "Happy",
                        "RpK",
                        "ScreaM",
                        "sixeR",
                        "xms"
                    ],
                    _location: "France",
                    _rank: 12
                ),
                Team(
                    _name: "Cloud9",
                    _players: [
                        "Skadoodle",
                        "Stewie2k",
                        "autimatic",
                        "n0thing",
                        "shroud"
                    ],
                    _location: "United States",
                    _rank: 8
                )
            ]
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create empty state message but dont add to view
        label.frame = CGRect(x: 50, y: 50, width: 200, height: 30)
        label.textAlignment = NSTextAlignment.center
        label.center = self.view.center
        label.text = "There are no matches."
        
    }
    override func viewWillAppear(_ animated: Bool) {
        // If there are no matches today, show empty state message
        if (matches.count == 0) {
            self.view.addSubview(label)
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the cell object
        let cell = tableView.dequeueReusableCell(withIdentifier: "Match Table View Cell", for: indexPath)
        // Set the cells text label equal to the match teams
        let match = matches[indexPath.row]
        cell.textLabel?.text = "\(match.teams[0].name!) vs. \(match.teams[1].name!)"
        cell.detailTextLabel?.text = DateTime().dateToString(date: match.date)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Leaving view so remove message if it exists
        label.removeFromSuperview()
        
//        // Pass the note object of the selected row to the edit view controller
//        if (segue.identifier == "match") {
//            let destination = segue.destination as? EditViewController;
//            let cell = sender as! UITableViewCell
//            let selectedRow = tableView.indexPath(for: cell)!.row
//            destination!.selectedValue = matches[selectedRow]
//        }
    }

}

