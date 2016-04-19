//
//  ViewController.swift
//  pokdexApp
//
//  Created by hoseen on 4/18/16.
//  Copyright © 2016 alone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate {
    @IBOutlet weak var collection : UICollectionView!
    var pokemons = [Pokemon]()
    var pokeReuslts = [Pokemon]()
    var inSearch = false
   // var searchController : UISearchController!

    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        collection.delegate = self
        collection.dataSource = self
        searchBar.delegate = self
        parseNamePoke()
        searchBar.returnKeyType = UIReturnKeyType.Done
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

    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCellWithReuseIdentifier("pokeCell", forIndexPath: indexPath) as? pokeVC {
            let poke : Pokemon!
            
            if  inSearch {
                poke = pokeReuslts[indexPath.row]
            }else {
                poke = pokemons[indexPath.row]
            }
            cell.cofigureCell(poke)
            
            
            return cell
        }else {
            return UICollectionViewCell()
        }
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let poke : Pokemon!
        if inSearch {
            poke = pokeReuslts[indexPath.row]
            
        }else {
            poke = pokemons[indexPath.row]
            
        }
        
        performSegueWithIdentifier("showPokeDetails", sender: poke)
        
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
        if inSearch{
            return pokeReuslts.count
        } else {return 718}
        
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(105.0, 105.0)
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        view.endEditing(true)
       
    }
    
    
    // filter the reusltes func
    // filter the reusltes func
    // filter the reusltes func
    // filter the reusltes func
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text == nil || searchBar.text == "" {
            inSearch = false
            view.endEditing(true)
            collection.reloadData()
        }else {
            inSearch = true
            let lower = searchBar.text!.lowercaseString
            pokeReuslts = pokemons.filter({$0.name.rangeOfString(lower) != nil })
            collection.reloadData()
        }
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPokeDetails" {
            if let pokeDetaVC =  segue.destinationViewController as? PokeDetailsVC {
                if let poke = sender as? Pokemon {
                    pokeDetaVC.pokemon = poke
                }
            }
        }
    }
    @IBAction func close(segue : UIStoryboardSegue){
        
    }
    
}

