//
//  CounterVC.swift
//  Snip App
//
//  Created by Chandu .. on 11/18/24./Users/chandu../Desktop/Development /Apolis/Snip App/Snip App/CustomCell.swift
//

import UIKit

class CounterVC: ViewController, UITableViewDataSource {
    @IBOutlet weak var customTableView: UITableView!
    
    let songsList = Songs(
        name: ["The Kids Aren't Alright(Remix) [feat.Azeli..]", "Sorry", "Turn Your Love", "Flesh without Blood"],
        singer: ["Fall Out Boy", "Justin Bieber", "Half Moon Run - Sun Leads Me On", "Grimes"]
    )
    override func viewDidLoad() {
        customTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songsList.name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell
        
        // Access the song and singer at the current index
        let songName = songsList.name[indexPath.row]
        let singerName = songsList.singer[indexPath.row]
        
        // Set labels in the cell
        cell?.songName.text = songName
        cell?.singerDetails.text = singerName
        
        return cell ?? UITableViewCell()
    }
    
}
