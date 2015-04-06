//
//  MasterViewController.swift
//  Players
//
//  Created by Dustin Pfannenstiel on 4/2/15.
//  Copyright (c) 2015 Dustin Pfannenstiel. All rights reserved.
//

import UIKit

// TODO: Add your Player Class to the project.
// Add to your Player: Team (red, blue, or green), Nickname, Score, and Quote
// Extend your Player class to conform to PlayerRanking

protocol PlayerRanking {
	func getRank() -> NSString
}

class MasterViewController: UITableViewController {

    var players:[Player] = []
    
	// TODO: Configure the existing cell to display Blue Players
	// TODO: Add two extra cells, one for Red and Green Players, do not assign segues to them.
	
	override func awakeFromNib() {
		super.awakeFromNib()
	}

	override func viewDidLoad() {
		super.viewDidLoad()
        // TODO: Load at least 6 players into your model, two for each color
        let player1 = Player(team: "blue", nickname: "jdog", score:100,quote:"livin la vida loca")
        let player2 = Player(team: "blue", nickname: "jmoney", score:10,quote:"livin la vida loca")
        let player3 = Player(team: "green", nickname: "wowza", score:100,quote:"livin la vida loca")
        let player4 = Player(team: "green", nickname: "shazam", score:10,quote:"livin la vida loca")
        let player5 = Player(team: "red", nickname: "holla", score:100,quote:"livin la vida loca")
        let player6 = Player(team: "red", nickname: "hella", score:10,quote:"livin la vida loca")

        players = players + [player1, player2, player3, player4, player5, player6]
		// Do any additional setup after loading the view, typically from a nib.

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	// MARK: - Segues

	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
	// TODO: Use tableView.indexPathForSelectedRow() to get the currently selected index path
	//	 Then load the detail view with the player data

	// TODO: Change the background color for your detail view to match your player.
        var destination = segue.destinationViewController as DetailViewController
        let indexPath = tableView.indexPathForSelectedRow()?.row
        destination.detailItem = players[indexPath!]
	}

	// MARK: - UITableViewDataSource

	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		// #warning Default implementation returns 0
		return 1
	}

	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// #warning Default implementation returns 0
		return players.count
	}

	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

		// TODO: Dequeue the correct cell, by itentifier, for the current player
		// Cells should show player's nickname, ranking (good, bad, etc), and
		//   the icon for their team (see, Images.xcassets)
		//   Set the icon either programatically or in Storyboards
        let color = players[indexPath.row].team
		var cell = tableView.dequeueReusableCellWithIdentifier("\(color)PlayerCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = players[indexPath.row].nickname
        cell.detailTextLabel?.text = "\(players[indexPath.row].score)"

		// #warning Cells not returning.
		return cell
	}
	
	// MARK - UITableViewDelegate
	
	override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

		// HINT:  Loading viewControllers from storyboards programatically
		var detail = self.storyboard?.instantiateViewControllerWithIdentifier("detailViewController") as DetailViewController
        let index = indexPath.row
        detail.detailItem = players[index]
        if detail.detailItem!.team != "blue" {
        self.presentViewController(detail, animated: true, completion: nil)
        }
		// TODO: Load the selected user into detail
		// TODO: Present detail modally
	}


}

