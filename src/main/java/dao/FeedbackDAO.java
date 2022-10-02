/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import model.Feedback;

/**
 *
 * @author Admin
 */
public class FeedbackDAO {
    final String FEEDBACK_TABLE = "dbo.Feedback"; 
    final String feedback_id = "feedback_id";
    final String description = "description";
    final String user_id = "user_id";
    final String rate_star = "rate_star";
    
    public FeedbackDAO() throws SQLException, ClassNotFoundException {
        super();
    }
    
    public ArrayList<Feedback> getAllFeedback() {
        ArrayList<Feedback> feedbacks = new ArrayList<>();
        return feedbacks;
    }
}
