//
//  ViewController.swift
//  Project 1
//
//  Created by Grace Geer on 10/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var p1Score: UILabel!
    @IBOutlet weak var p2Score: UILabel!
    @IBOutlet weak var gameScore: UILabel!
    @IBOutlet weak var setScore: UILabel!
    
    @IBOutlet weak var p2Game: UILabel!
    @IBOutlet weak var p1Games: UILabel!
    
    var pointScore = "0";
    var pointScore2 = "0";
    var addGame = "0";
    var addGame2 = "0";

    
    func updatePointScore(){
        //add point scoring here
        if pointScore == "0" {
            pointScore = "15";
        }
        
        else if pointScore == "15" {
            pointScore = "30";
        }
        
        else if pointScore == "30" {
            pointScore = "40";
        }
        
        else if pointScore == "40" {
            pointScore = "AD";
        }
        
        else if pointScore == "AD" {
            pointScore = "0";
        }
        
        p1Score.text=pointScore;
         }
    
    func updatePointScore2(){
        //add point scoring here
        if pointScore2 == "0" {
            pointScore2 = "15";
        }
        
        else if pointScore2 == "15" {
            pointScore2 = "30";
        }
        
        else if pointScore2 == "30" {
            pointScore2 = "40";
        }
        
        else if pointScore2 == "40" {
            pointScore2 = "AD";
        }
        
        else if pointScore2 == "AD" {
            pointScore2 = "0";
        }
        
        p2Score.text=pointScore2;
         }
    
    func updateGameScore(){
        if addGame == "0"{
            addGame = "1"
        }
        else if addGame == "1"{
            addGame = "2"
        }
        else if addGame == "2"{
            addGame = "3"
        }
        else if addGame == "3"{
            addGame = "4"
        }
        else if addGame == "4"{
            addGame = "5"
        }
        else if addGame == "5"{
            addGame = "6"
        }
        else if addGame == "6"{
            addGame = "0"
        }
        p1Games.text=addGame;
    }
    
    func updateGameScore2(){
        if addGame2 == "0"{
            addGame2 = "1"
        }
        else if addGame2 == "1"{
            addGame2 = "2"
        }
        else if addGame2 == "2"{
            addGame2 = "3"
        }
        else if addGame2 == "3"{
            addGame2 = "4"
        }
        else if addGame2 == "4"{
            addGame2 = "5"
        }
        else if addGame2 == "5"{
            addGame2 = "6"
        }
        else if addGame2 == "6"{
            addGame2 = "0"
        }
        p2Game.text=addGame2;
    }
    
    func resetPointScore(){
        p1Score.text="0";
        p2Score.text="0";
    }

    
    @IBAction func updateP1(_ sender: UIButton) {
        updatePointScore()
    }
    
    @IBAction func updateP2(_ sender: UIButton) {
        updatePointScore2()
    }
    
    @IBAction func updateGame1(_ sender: UIButton) {
        updateGameScore()
    }
    
    @IBAction func updateGame2(_ sender: UIButton) {
        updateGameScore2()
    }
    
    @IBAction func resetGameScore(_ sender: UIButton) {
        resetPointScore()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

