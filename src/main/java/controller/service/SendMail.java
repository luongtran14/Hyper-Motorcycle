package controller.service;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class SendMail {

    public static void send(String to, String sub,
            String msg) throws AddressException,
            MessagingException {
        final String user = "hypermotorcycle123@gmail.com";
        final String pass = "cczsgwavplsbqbby";
//        final String user = "hunghtfx09440@funix.edu.vn";
//        final String pass = "PYfvN3JTjGp1";
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
        props.put("mail.smtp.port", "587"); //TLS Port
        props.put("mail.smtp.auth", "true"); //enable authentication
        props.put("mail.smtp.starttls.enable", "true"); //enable 
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, pass);
            }
        });
        MimeMessage message = new MimeMessage(session);
        message.setFrom(new InternetAddress(user));
        InternetAddress[] toAddresses = {new InternetAddress(to)};
        message.setRecipients(Message.RecipientType.TO, toAddresses);
        message.setSubject(sub);
        message.setSentDate(new Date());
        message.setText(msg);
        Transport.send(message);
    }

}
