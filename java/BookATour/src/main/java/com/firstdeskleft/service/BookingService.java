/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.firstdeskleft.service;

import com.firstdeskleft.entities.Customer;
import com.firstdeskleft.entities.Tour;
import java.util.List;

/**
 *
 * @author User
 */
public interface BookingService {


    public String attempBooking (Integer tourId,Customer customer);

    public String attempCancelBooking(Integer tid, Customer customer);
    
}
