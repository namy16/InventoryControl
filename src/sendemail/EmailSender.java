package sendemail;
import com.sendgrid.SendGrid;

import java.util.Properties;


/**
 * Created by parashan on 8/7/2017.
 */
public class EmailSender {
        public void sendEmail(String user_email,String message,String subject) {
try{
                Properties props = new Properties();
                props.put("mail.smtp.host", "smtp.sendgrid.net");
                props.put("mail.smtp.port", "465");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.debug", "true");
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.socketFactory.port", "465");
                props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                props.put("mail.smtp.socketFactory.fallback", "false");

                SendGrid sendgrid = new SendGrid("namanparashar", "EJt#480IGx##");

                SendGrid.Email email = new SendGrid.Email();
                email.addTo(user_email);
                email.setFrom("Vehicle_Inventory");
                email.setSubject(subject);
                email.setHtml(message);

                SendGrid.Response res = sendgrid.send(email);
                System.out.println(res.getMessage());

        }catch(
        Exception e)

        {
                System.out.println(e);
        }
}
}
