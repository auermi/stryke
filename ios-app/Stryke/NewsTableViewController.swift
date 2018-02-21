//
//  NewsTableViewController.swift
//  Stryke
//
//  Created by Michael Andrew Auer on 6/9/17.
//  Copyright © 2017 Pear Bus. All rights reserved.
//

import UIKit
import Foundation

class NewsTableViewController: UITableViewController {
    
    var news: [Article] = [
        Article(
            title: "StarSeries round five matchups drawn",
            url: "https://www.hltv.org/news/22851/starseries-round-five-matchups-drawn",
            description: "The matchups of the Swiss stage&apos;s last round, which will determine the last three teams in the playoffs, have been drawn live on stream at the end of day four in Kiev.",
            guid: "hltvnews22851",
            pubDate: "Tue, 20 Feb 2018 20:18:00 GMT"
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("whats up my playas")
        
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        // If there are no matches today, show empty state message
        
        if (news.count == 0) {
            // No news is good news
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Get the cell object
        let cell = tableView.dequeueReusableCell(withIdentifier: "News Table View Cell", for: indexPath)
        
        // Set the cells text label equal to the article title
        let article = news[indexPath.row]
        cell.textLabel?.text = article.title!
        cell.detailTextLabel?.text = article.pubDate!
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}
