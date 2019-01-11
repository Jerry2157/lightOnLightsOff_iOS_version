//
//  LPA.swift
//  LucesPrendidasApagadas
//
//  Created by Jesús Heriberto Vásquez Sánchez on 7/11/18.
//  Copyright © 2018 Jesús Heriberto Vásquez Sánchez. All rights reserved.
//
//Modelo
import Foundation

class LPA{
    var nums = [0,0,0,0,0,0,0]
    var tiros: Int = 0;
    
    func tiro( puls:Int){
        switch (puls){
        case (-1):
            for i in 0...6{
                let randomNum:UInt32 = arc4random_uniform(2)
                 let someInt:Int = Int(randomNum)
                nums[i] = someInt
            }
            break
        case (0):
            if(nums[0]==1){
                nums[0]=0
            }
            else{
                nums[0]=1
            }
            if nums[1]==1{
                nums[1]=0
            }
            else{
                nums[1]=1
            }
            tiros = tiros+1
            
            break
        case (1):
            if nums[0]==1{
                nums[0]=0
            }
            else{
                nums[0]=1
            }
            if nums[1]==1{
                nums[1]=0
            }
            else{
                nums[1]=1
            }
            if nums[2]==1{
                nums[2]=0
            }
            else{
                nums[2]=1
            }
             tiros = tiros+1
            break
        case (2):
            if nums[1]==1{
                nums[1]=0
            }
            else{
                nums[1]=1
            }
            if nums[2]==1{
                nums[2]=0
            }
            else{
                nums[2]=1
            }
            if nums[3]==1{
                nums[3]=0
            }
            else{
                nums[3]=1
            }
             tiros = tiros+1
            break
        case (3):
            if nums[2]==1{
                nums[2]=0
            }
            else{
                nums[2]=1
            }
            if nums[3]==1{
                nums[3]=0
            }
            else{
                nums[3]=1
            }
            if nums[4]==1{
                nums[4]=0
            }
            else{
                nums[4]=1
            }
             tiros = tiros+1
            break
        case (4):
            if nums[3]==1{
                nums[3]=0
            }
            else{
                nums[3]=1
            }
            if nums[4]==1{
                nums[4]=0
            }
            else{
                nums[4]=1
            }
            if nums[5]==1{
                nums[5]=0
            }
            else{
                nums[5]=1
            }
             tiros = tiros+1
            break
        case (5):
            if nums[4]==1{
                nums[4]=0
            }
            else{
                nums[4]=1
            }
            if nums[5]==1{
                nums[5]=0
            }
            else{
                nums[5]=1
            }
            if nums[6]==1{
                nums[6]=0
            }
            else{
                nums[6]=1
            }
             tiros = tiros+1
            break
        case (6):
            if nums[5]==1{
                nums[5]=0
            }
            else{
                nums[5]=1
            }
            if nums[6]==1{
                nums[6]=0
            }
            else{
                nums[6]=1
            }
            tiros = tiros+1
            break
            
            
        default: break
            
    }
    }
    
    func gameOver()->(String){
        var conta1: Int = 0;
        var conta0: Int = 0;
        if tiros >= 12{
            return ("¡Perdiste!")
        }
        if tiros < 12 && tiros > 0{
            for i in 0...6{
                if nums[i]==1{
                    conta1=conta1+1
                }
                if nums[i]==0{
                    conta0=conta0+1
                }
            }
            
            if conta0==7 || conta1 == 7{
                return ("¡Ganaste!")
            }
        }
        
        return ""
    }
    
    func getNums()->([Int]){
        return nums
    }
    func getTiros()->(Int){
        return tiros
    }
    
    func deleteAll(){
        for i in 0...6{
            nums[i]=0
        }
        tiros = 0
    }
    
    func setNum(posicion: Int ,value: Int){
        nums[posicion]=value
        
    }
}


