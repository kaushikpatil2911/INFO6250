/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neu.edu.beconnected.exception;

/**
 *
 * @author kaushikpatil
 */
public class UserException extends Exception{
    
    public UserException() {
    }
    
    public UserException(String errDesc) {
        super(errDesc);
    }    
}
