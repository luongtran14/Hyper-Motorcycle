/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.common;

import dao.CustomerDAO;
import java.sql.SQLException;
import java.util.Random;

/**
 *
 * @author Admin
 */
public class CustomerServices {

    public String resetCustomerPassword(String email) throws SQLException, ClassNotFoundException {
        CustomerDAO customerDAO = new CustomerDAO();
        int uid = customerDAO.findIdByEmail(email);
        if(uid ==-1){
            return "EmailNotFound";
        }
        String randomPassword = new CustomerServices().randomPassword();
        customerDAO.changePassword(uid, randomPassword);
        return randomPassword;
    }

    public String randomPassword() {
        int leftLimit = 97; // letter 'a'
        int rightLimit = 122; // letter 'z'
        int targetStringLength = 10;
        Random random = new Random();
        StringBuilder buffer = new StringBuilder(targetStringLength);
        for (int i = 0; i < targetStringLength; i++) {
            int randomLimitedInt = leftLimit + (int) (random.nextFloat() * (rightLimit - leftLimit + 1));
            buffer.append((char) randomLimitedInt);
        }
        String generatedString = buffer.toString();

        System.out.println(generatedString);
        return generatedString;
    }
}
