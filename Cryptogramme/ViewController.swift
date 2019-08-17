//  ViewController.swift
//  Cryptogramme
//
//  Created by Jaafar Rammal on 1/26/18.
//  Copyright © 2018 Jaafar Rammal. All rights reserved.

import Cocoa

@IBDesignable

class ViewController: NSViewController{
    
    //Key variable initialized
    var k_key = 0000
    
    //View components defined
    @IBOutlet var input_field: NSTextField!
    @IBOutlet var key_field: NSTextField!
    @IBOutlet var output_field: NSTextField!
    
    @IBOutlet var char_number: NSTextField!
    
    //Updating key on during its editing and making sure no errors can be inherited
    @IBAction func editing_key(_ sender: NSTextField) {
        
        if Int(key_field.stringValue) != nil{
            k_key = Int(key_field.stringValue)!
        }else{
            key_field.stringValue = String(k_key)
        }
        
        
    }
    
    //Updating chars count after user's input of text
    @IBAction func end_editing(_ sender: NSTextField) {
        
        char_number.stringValue = String(Array(input_field.stringValue).count) + " chars"
        
    }
    
    //Creating all chars. Any can be added to the list
    let c_chars = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0",".",",","?","!","@","#","$","%","^","&","*","(",")"," ",";",":","'","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    //Encrypt on button signal
    @IBAction func encrypt(_ sender: NSButton) {
        
        output_field.stringValue = ""
        
        var e_list = [String]()
        
        var i = 0
        
        //Create corresponding key list
        while (i<c_chars.count) {
            e_list.append(c_chars[(i+k_key)%(c_chars.count)])
            i = i+1
        }
        
        var t_list = Array(input_field.stringValue)

        i = 0
        
        //Replacement and printing
        while (i<t_list.count) {
            var j = 0
            while (j<c_chars.count) {
                if String(t_list[i]) == c_chars[j]{
                    output_field.stringValue = output_field.stringValue + e_list[j]
                    j = c_chars.count
                }
                j = j+1
            }
            i = i+1
        }
    }
    
    //Decrypt on button signal
    @IBAction func decrypt(_ sender: NSButton) {
     
        output_field.stringValue = ""
        
        var e_list = [String]()
        
        var i = 0
        
        //Create corresponding key list
        while (i<c_chars.count) {
            e_list.append(c_chars[(i+k_key)%(c_chars.count)])
            i = i+1
        }
        
        var t_list = Array(input_field.stringValue)
        
        i = 0
        
        //Replacement and printing
        while (i<t_list.count) {
            var j = 0
            while (j<c_chars.count) {
                if String(t_list[i]) == e_list[j]{
                    output_field.stringValue = output_field.stringValue + c_chars[j]
                    j = c_chars.count
                }
                j = j+1
            }
            i = i+1
        }
        
    }
    
    //Defining application window
    lazy var window: NSWindow! = self.view.window
    
    //Function to remove window components
    func remove(_ member: NSWindow.StyleMask) {
        window.styleMask.remove(member)
    }
    
    //Creating text fields attributes
    let attrs = [NSAttributedStringKey.foregroundColor: NSColor.white, NSAttributedStringKey.font: NSFont(name: "StratumNo1-Medium", size: 24.22)]
    
    //Load view and inherit
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //Execute after view's appeared and inherit
    override func viewDidAppear() {
        super.viewDidAppear()
        
        //Make applicatoin screen non resizable
        remove(.resizable)
        remove(.fullScreen)
        
        //Make background color white
        window.backgroundColor = .white
        
        //Update key field attributes with placeholder white color and font
        key_field.placeholderAttributedString = NSAttributedString(string: "Enter Key",attributes: attrs as [NSAttributedStringKey : Any])
        
        //Remove focus rings on text fields
        key_field.focusRingType = .none
        input_field.focusRingType = .none
        output_field.focusRingType = .none
        
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
            
        }
    }
    
}

