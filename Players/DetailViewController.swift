//
//  DetailViewController.swift
//  Players
//
//  Created by Dustin Pfannenstiel on 4/2/15.
//  Copyright (c) 2015 Dustin Pfannenstiel. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nick: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var quote: UITextView!
    @IBOutlet weak var score: UILabel!
    
	// TODO: Modify this class to support modal dismissal
	// Hint: View Controllers should not dismiss themselves

	/// You can load your player in here!
	var detailItem: Player? {
		// didSet gets called after the object is set
       
		didSet {
		    // Update the view.
		    self.configureView()
		}
	}
    

	// Load what the view should look like
	func configureView() {
       
		// Update the user interface for the detail item.
        		// Show the Player's name, the icon for the player, score, and quote
        
	}

	override func viewDidLoad() {
        
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
        //println( self.detailItem!.nickname)         
        nick.text = self.detailItem!.nickname
        icon.image = UIImage(named: self.detailItem!.team)
        quote.text = self.detailItem!.quote
        score.text = "Score: \(self.detailItem!.score)"
        self.configureView()
        

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

// TODO: BONUS - Add a gesture to dismiss on swipe down only if this is presented modally.

