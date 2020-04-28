/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neu.edu.beconnected.mapper;

import com.neu.edu.beconnected.pojo.Contact;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;


/**
 *
 * @author kaushikpatil
 */

public class ContactRowMapper implements RowMapper<Contact>{
    @Override
    public Contact mapRow(ResultSet rs, int i) throws SQLException {
        Contact c=new Contact();
        c.setContactId(rs.getInt("contactId"));
        c.setUserId(rs.getInt("userId"));
        c.setName(rs.getString("name"));
        c.setEmail(rs.getString("email"));
        c.setAddress(rs.getString("address"));       
        c.setPhone(rs.getString("phone"));       
        c.setRemark(rs.getString("remark"));               
        return c;
    }
    
}

