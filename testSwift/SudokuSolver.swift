//
//  sudoku.swift
//  testSwift
//
//  Created by Wuyue Xu on 2016-01-25.
//  Copyright © 2016 ProjectX. All rights reserved.
//

import Foundation

class SudokuSolver{
    class func solve(problem:[[Int]])->[[[Int]]]{
        var map=problem
        var result=[[[Int]]]()
        var rowNumbers=[[Bool]]()
        var columnNumbers=[[Bool]]()
        var blockNumbers=[[Bool]]()
        var tempFlags=[Bool]()

        //initialization
        for i in 0...8{
            tempFlags.append(true)
        }
        for i in 0...8{
            rowNumbers.append(tempFlags)
            columnNumbers.append(tempFlags)
            blockNumbers.append(tempFlags)
            
        }
        
        for i in 0...8{
            for j in 0...8{
                if map[i][j]>0{
                    rowNumbers[i][map[i][j]-1]=false;
                    columnNumbers[j][map[i][j]-1]=false;
                    blockNumbers[3*(i/3)+j/3][map[i][j]-1]=false;
                }
            }
        }
        
        //
        var row=0
        var column=0
        var flag=true
        while row>=0 && column>=0{
            if(problem[row][column]==0){
                var num=map[row][column]
                if(num>0){
                    rowNumbers[row][num-1]=true
                    columnNumbers[column][num-1]=true
                    blockNumbers[3*(row/3)+column/3][num-1]=true
                }
                map[row][column]++
                num=map[row][column]
                while num<10&&(!(rowNumbers[row][num-1]&&columnNumbers[column][num-1]&&blockNumbers[3*(row/3)+column/3][num-1])){
                    map[row][column]++
                    num=map[row][column]
                }
                if num<10{
                    flag=true
                    rowNumbers[row][num-1]=false
                    columnNumbers[column][num-1]=false
                    blockNumbers[3*(row/3)+column/3][num-1]=false
                    if row==8&&column==8 {
                        result.append(map)
                    }else{
                        column++
                        if(column>8){
                            column=0
                            row++
                        }
                    }
                }else{
                    flag=false
                    map[row][column]=0
                    column--
                    if(column<0){
                        row--
                        column=8
                    }
                }
            }else{
                if flag{
                    column++
                    if(column>8){
                        column=0
                        row++
                    }
                }else{
                    column--
                    if(column<0){
                        column=8
                        row--
                    }
                }
            }
        }
        return result
    }
    
}

