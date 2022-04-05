/**
 main.swift
 
 AFL 1 NathanaelAbelA

 Created by MacBook on 15/03/22.
 
 Point of Sales - Swift Simple Project

 by: Nathanael Abel Arianto ~ 0706012010029
**/

import Foundation

var shoppingCart = [String]()
var check:Bool = true

while check == true {
  
  print("")
  print("=========================== ")
  print("    Point of Sales (PoS)    ")
  print("=========================== ")
  print("Options:")
  print("[1] Buy Food")
  print("[2] Shopping Cart")
  print("[X] Exit\n")
  print("Your Choice? ")
  if let option = readLine() {
      
      switch option {
        
        case "1":
          var back:Bool = true
        
          print("\nHi, we have 5 Food & Beverage options for you!")
          print("----------------------------------------------  ")
          print("[F03] Gado-Gado")
          print("[F02] Chicken Satay")
          print("[F01] Nasi Padang")
          print("[B02] Mineral Water")
          print("[B01] Ice Tea")
          print("[Q] Quit to Main Menu")
          
          while back == true {
            
            print("\nYour F&B Choice? ")
            let choices = readLine() ?? ""
            let choice = choices.uppercased()
        
            if choice == "F03" {
              print("How many Gado-Gado you want to buy?")
              let menu = Int(readLine() ?? "") ?? 0
              shoppingCart.append("\(menu) Gado-Gado")

              print("\nShopping Cart (\(shoppingCart.count) items):")
              for shop in shoppingCart {
              print(shop)
              }
              
            }
            else if choice == "F02" {
              print("How many Chicken Satay you want to buy?")
              let menu = Int(readLine() ?? "") ?? 0
              shoppingCart.append("\(menu) Chicken Satay")

              print("\nShopping Cart (\(shoppingCart.count) items):")
              for shop in shoppingCart {
              print(shop)
              }
              
            }
            else if choice == "F01" {
              print("How many Nasi Padang you want to buy?")
              let menu = Int(readLine() ?? "") ?? 0
              shoppingCart.append("\(menu) Nasi Padang")

              print("\nShopping Cart (\(shoppingCart.count) items):")
              for shop in shoppingCart {
              print(shop)
              }
              
            }
            else if choice == "B02" {
              print("How many Mineral Water you want to buy?")
              let menu = Int(readLine() ?? "") ?? 0
              shoppingCart.append("\(menu) Mineral Water")

              print("\nShopping Cart (\(shoppingCart.count) items):")
              for shop in shoppingCart {
              print(shop)
              }
              
            }
            else if choice == "B01" {
              print("How many Ice Tea you want to buy?")
              let menu = Int(readLine() ?? "") ?? 0
              shoppingCart.append("\(menu) Ice Tea")

              print("\nShopping Cart (\(shoppingCart.count) items):")
              for shop in shoppingCart {
              print(shop)
              }
              
            }
            else if choice == "q" || choice == "Q" {
              back = false
            }
            else {
              print("\nChoice not found. Please try again.")
            }
            
          } // while back end
  
        case "2":
          if shoppingCart.count == 0 {
            print("\nYour shopping cart is empty. Please buy something!")
          }
          else {
            print("\nShopping Cart (\(shoppingCart.count) items):")
            for shop in shoppingCart {
              print(shop)
            }
          }
        
        case "x", "X":
          check = false
          print("\nThankyou for using our service!\n")
          
        default:
          print("\nYour option is not available. Please try again.")
        
      } // switch option end
    
  } else {
    print("\nOption is not available. Please try again.")
  }
  
} // while check end
