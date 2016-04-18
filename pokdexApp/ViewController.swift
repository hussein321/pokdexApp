//
//  ViewController.swift
//  pokdexApp
//
//  Created by hoseen on 4/18/16.
//  Copyright © 2016 alone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var collection : UICollectionView!
    var pokemons = [Pokemon]()
    var pokeReuslts = [Pokemon]()
   // var searchController : UISearchController!

    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        collection.delegate = self
        collection.dataSource = self
        parseNamePoke()
//       //  searchBar = searchController.searchBar
//          searchController.searchResultsUpdater = self
//        searchController.dimsBackgroundDuringPresentation = false
//     
    }
 
        /////// get names from csv file ////////////
        /////// get names from csv file ////////////
        /////// get names from csv file ////////////
    func parseNamePoke(){
        if let path = NSBundle.mainBundle().pathForResource("pokemon", ofType: ".csv") {
            do {
                let csv = try CSV(contentsOfURL: path)
                let rows = csv.rows
                for row in rows {
               let pokeId = Int(row["id"]!)!
                    let name = row["identifier"]!
                    let poke = Pokemon(name: name, pokdexId: pokeId)
                    pokemons.append(poke)
                }
                
            }catch let error as NSError {
                print(error.debugDescription)
            }
        }
        
    }
    
    /////// get names from csv file ////////////
    /////// get names from csv file ////////////
    /////// get names from csv file ////////////
    /////// get names from csv file ////////////
    /////// get names from csv file ////////////
    /////// get names from csv file ////////////
//    func updateSearchResultsForSearchController(searchController: UISearchController) {
//        if let seatchText = searchController.searchBar.text {
//            filterContentSearchBar(seatchText)
//            collection.reloadData()
//        }
//        
//    }
    
    
    // filter the reusltes func
    // filter the reusltes func
    // filter the reusltes func
    // filter the reusltes func
    
//    func filterContentSearchBar(searchText : String){
//        pokeReuslts = pokemons.filter( { (poke : Pokemon) -> Bool in
//            let matchName = poke.name.rangeOfString(searchText, options: NSStringCompareOptions.CaseInsensitiveSearch)
//            return matchName != nil
//        })
//        
//        
//    }
    
    
    // filter the reusltes func
    // filter the reusltes func
    // filter the reusltes func
    // filter the reusltes func
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCellWithReuseIdentifier("pokeCell", forIndexPath: indexPath) as? pokeVC {
            
            
//            let pokemon = Pokemon(name: "test", pokdexId: indexPath.row + 1)
            
            
           
 
         
            cell.cofigureCell(pokemons[indexPath.row])
            
            return cell
        }else {
            return UICollectionViewCell()
        }
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
   
            return 718
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(105.0, 105.0)
    }
    
}

