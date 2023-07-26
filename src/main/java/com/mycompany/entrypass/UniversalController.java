package com.mycompany.entrypass;

import java.io.InputStream;
import java.sql.Connection;
//import java.sql.Date;
import java.util.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author mrina
 */
@Controller
public class UniversalController {
    
    @RequestMapping("/welcomepage")
    public String welcomefunction() {
        System.out.println("This is welcome page");
        return "welcomepage";
    }
    
    @RequestMapping("/visitpage")
    public String visitfunction() {
        System.out.println("This is visit page");
        return "visitpage";
    }
    
    @RequestMapping("/requestsent")
    public String requestsent() {
        System.out.println("This is requestsent page");
        return "requestsent";
    }
    
    @RequestMapping("/makepassfac")
    public String makepassfac() {
        System.out.println("This is makepassfac page");
        return "makepassfac";
    }
    
    @RequestMapping("/register")
    public String register() {
        System.out.println("This is register page");
        return "register";
    }
    
    @RequestMapping(value = "/requestsent", method = RequestMethod.POST)
    public String requestSent(HttpServletRequest request, HttpServletResponse response, @RequestParam("a") String w, @RequestParam("b") String x, @RequestParam("c") Long y, @RequestParam("d") String z, @RequestParam("e") Integer isid, @RequestParam("f") String add, @RequestParam("g") String g, Model object1){
        Integer val=0;
        try{
            String reject="Reject", email="";Long phonn=123456789L; 
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pass?characterEncoding=utf8", "root", "root");
            
            int idd = Integer.parseInt(g.replaceAll("-", ""));
            
            PreparedStatement stmt = con.prepareStatement("insert into entry_pass (dataa, name, work_with, reason, phone, status, issuer_id, address) values (?,?,?,?,?,?,?,?)");
            stmt.setInt(1, idd);
            stmt.setString(2, w);
            stmt.setString(3, z);
            stmt.setString(4, x);
            stmt.setLong(5, y);
            stmt.setString(6, reject);
            stmt.setInt(7, isid);
            stmt.setString(8, add);
            stmt.executeUpdate();
            
            PreparedStatement stmt2 = con.prepareStatement("select entry_id from entry_pass where name=? and phone=?");
            stmt2.setString(1, w);
            stmt2.setLong(2, y);
            ResultSet rst2 = stmt2.executeQuery();
            while(rst2.next()){val=rst2.getInt(1);}
            
            PreparedStatement stmt1 = con.prepareStatement("select email from members where name=?");
            stmt1.setString(1, z);
            ResultSet rst = stmt1.executeQuery();
            while(rst.next()){email=rst.getString(1);}
            
            PreparedStatement stmt3 = con.prepareStatement("select issuer_phone from issuers where issuer_id=?");
            stmt3.setInt(1, isid);
            ResultSet rst3 = stmt3.executeQuery();
            while(rst3.next()){phonn=rst3.getLong(1);}
            
            System.out.println(email+" "+phonn);
            
            String recipient = email;

            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.ssl.protocols", "TLSv1.2");
            props.put("mail.smtp.starttls.enable", "true");

            Authenticator auth = new Authenticator() {
                public PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("mjgbarend2003@gmail.com", "xmkhrokkmtzpeofx");
                }
            };

            Session session;
            session = Session.getInstance(props, auth);

            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("mjgbarend2003@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient));
            message.setSubject("Mail sent for Approval");

            String htmlBody = "<!DOCTYPE html>\n" +
"<html xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\" lang=\"en\">\n" +
"\n" +
"<head>\n" +
"	<title></title>\n" +
"	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n" +
"	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><!--[if mso]><xml><o:OfficeDocumentSettings><o:PixelsPerInch>96</o:PixelsPerInch><o:AllowPNG/></o:OfficeDocumentSettings></xml><![endif]-->\n" +
"	<style>\n" +
"		* {\n" +
"			box-sizing: border-box;\n" +
"		}\n" +
"\n" +
"		body {\n" +
"			margin: 0;\n" +
"			padding: 0;\n" +
"		}\n" +
"\n" +
"		a[x-apple-data-detectors] {\n" +
"			color: inherit !important;\n" +
"			text-decoration: inherit !important;\n" +
"		}\n" +
"\n" +
"		#MessageViewBody a {\n" +
"			color: inherit;\n" +
"			text-decoration: none;\n" +
"		}\n" +
"\n" +
"		p {\n" +
"			line-height: inherit\n" +
"		}\n" +
"\n" +
"		.desktop_hide,\n" +
"		.desktop_hide table {\n" +
"			mso-hide: all;\n" +
"			display: none;\n" +
"			max-height: 0px;\n" +
"			overflow: hidden;\n" +
"		}\n" +
"\n" +
"		.image_block img+div {\n" +
"			display: none;\n" +
"		}\n" +
"\n" +
"		@media (max-width:650px) {\n" +
"			.desktop_hide table.icons-inner {\n" +
"				display: inline-block !important;\n" +
"			}\n" +
"\n" +
"			.icons-inner {\n" +
"				text-align: center;\n" +
"			}\n" +
"\n" +
"			.icons-inner td {\n" +
"				margin: 0 auto;\n" +
"			}\n" +
"\n" +
"			.image_block img.fullWidth {\n" +
"				max-width: 100% !important;\n" +
"			}\n" +
"\n" +
"			.row-content {\n" +
"				width: 100% !important;\n" +
"			}\n" +
"\n" +
"			.stack .column {\n" +
"				width: 100%;\n" +
"				display: block;\n" +
"			}\n" +
"\n" +
"			.mobile_hide {\n" +
"				max-width: 0;\n" +
"				min-height: 0;\n" +
"				max-height: 0;\n" +
"				font-size: 0;\n" +
"				display: none;\n" +
"				overflow: hidden;\n" +
"			}\n" +
"\n" +
"			.desktop_hide,\n" +
"			.desktop_hide table {\n" +
"				max-height: none !important;\n" +
"				display: table !important;\n" +
"			}\n" +
"		}\n" +
"	</style>\n" +
"</head>\n" +
"\n" +
"<body style=\"text-size-adjust: none; background-color: #fff; margin: 0; padding: 0;\">\n" +
"	<table class=\"nl-container\" width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #fff;\">\n" +
"		<tbody>\n" +
"			<tr>\n" +
"				<td>\n" +
"					<table class=\"row row-1\" align=\"center\" width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\">\n" +
"						<tbody>\n" +
"							<tr>\n" +
"								<td>\n" +
"									<table class=\"row-content stack\" align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000; width: 630px; margin: 0 auto;\" width=\"630\">\n" +
"										<tbody>\n" +
"											<tr>\n" +
"												<td class=\"column column-1\" width=\"100%\" style=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; text-align: left; font-weight: 400; padding-bottom: 5px; padding-top: 5px; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;\">\n" +
"													<table class=\"heading_block block-1\" width=\"100%\" border=\"0\" cellpadding=\"10\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\">\n" +
"														<tr>\n" +
"															<td class=\"pad\">\n" +
"																<h1 style=\"margin: 0; color: #000000; direction: ltr; font-family: Arial, Helvetica, sans-serif; font-size: 30px; font-weight: 700; letter-spacing: normal; line-height: 120%; text-align: left; margin-top: 0; margin-bottom: 0;\"><span class=\"tinyMce-placeholder\" style=\"color: #000000;\">You have a visit request...</span></h1>\n" +
"															</td>\n" +
"														</tr>\n" +
"													</table>\n" +
"													<table class=\"paragraph_block block-2\" width=\"100%\" border=\"0\" cellpadding=\"10\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;\">\n" +
"														<tr>\n" +
"															<td class=\"pad\">\n" +
"																<div style=\"color:#101112;direction:ltr;font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:19.2px;\">\n" +
"																	<p style=\"margin: 0; margin-bottom: 16px;\">Respected "+z+",</p>\n" +
"																	<p style=\"margin: 0; margin-bottom: 16px;\">"+w+" has graced us with their presence, seeking a moment of your valuable time for an important matter: "+x+".</p>\n" +
"																	<p style=\"margin: 0; margin-bottom: 16px;\">We kindly request your response, indicating your decision as \"Accept\" or \"Reject.\"</p>\n" +
"																	<p style=\"margin: 0; margin-bottom: 16px;\">Alternatively, you may choose to reach the issuer at the following esteemed number: <a href=\"tel:0"+phonn+"\">"+phonn+"</a></p>\n" +
"																	<p style=\"margin: 0; margin-bottom: 16px;\">MIT Academy of Engineering, Alandi(D)\n" +
"																	<p style=\"margin: 0;\">&nbsp;</p>\n" +
"																</div>\n" +
"															</td>\n" +
"														</tr>\n" +
"													</table>\n" +
"													<table class=\"image_block block-3\" width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"mso-table-lspace: 0pt; mso-table-rspace: 0pt;\">\n" +
"														<tr>\n" +
"															<td class=\"pad\" style=\"width:100%;padding-right:0px;padding-left:0px;\">\n" +
"																<div class=\"alignment\" align=\"left\" style=\"line-height:10px\"><img class=\"fullWidth\" src=\"https://www.linkpicture.com/q/mitaoe-logo.jpg\" style=\"height: auto; display: block; border: 0; max-width: 409.5px; width: 100%;\" width=\"409.5\"></div>\n" +
"															</td>\n" +
"														</tr>\n" +
"													</table>\n" +
"												</td>\n" +
"											</tr>\n" +
"										</tbody>\n" +
"									</table>\n" +
"								</td>\n" +
"							</tr>\n" +
"						</tbody>\n" +
"					</table>\n" +
"				</td>\n" +
"			</tr>\n" +
"		</tbody>\n" +
"	</table><!-- End -->\n" +
"</body>\n" +
"\n" +
"</html>";
            message.setContent(htmlBody, "text/html");

            Transport.send(message);

        }
        catch(Exception k){
            k.getMessage();
        }
        object1.addAttribute("value", val);
        
        return "redirect:/requestsent";
    }
    
    @RequestMapping(value = "/makepassfaculty", method = RequestMethod.POST)
    public String makePassfaculty(HttpServletRequest request, HttpServletResponse response, @RequestParam("a") String w, @RequestParam("b") String x, @RequestParam("c") String y, @RequestParam("d") MultipartFile imageFile, @RequestParam("e") String vd, @RequestParam("f") String acc, Model object1){
        String val="";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pass?characterEncoding=utf8", "root", "root");
            
            PreparedStatement stmt = con.prepareStatement("update entry_pass set entry=?,visit_date=?,status=? where entry_id=?");
            stmt.setObject(1,y);
            stmt.setObject(2,vd);
            stmt.setString(3, acc);
            stmt.setString(4, x);
            stmt.executeUpdate();
            
            if (!imageFile.isEmpty()) {
                try (InputStream inputStream = imageFile.getInputStream()) {
                        String sql = "insert into pass_image (entry_id, data) values (?,?)";
                        PreparedStatement statement = con.prepareStatement(sql);
                        statement.setString(1, x);

                        if (inputStream != null) {
                            statement.setBlob(2, inputStream);
                        }
                        int row = statement.executeUpdate();
                        if (row > 0) {
                            String message = "File uploaded and saved into the database";
                        }          
                } 
                catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            else{System.out.println("not there");
            }            
            val=x;
        }
        catch(Exception k){
            k.getMessage();
        }
        object1.addAttribute("value", val);
        
        return "redirect:/passfaculty";
    }
    
    @RequestMapping(value = "/makepassvisitor", method = RequestMethod.POST)
    public String makePassvisitor1(HttpServletRequest request, HttpServletResponse response, @RequestParam("a") String a, @RequestParam("b") String b, @RequestParam("c") Long c, @RequestParam("d") String d, @RequestParam("f") MultipartFile imageFile, @RequestParam("g") String g, @RequestParam("h") Integer isid, @RequestParam("i") String add, Model object1){
        Integer val1=0;
        String val="";
        try{
            String visit="Visiting";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pass?characterEncoding=utf8", "root", "root");
            
            int idd = Integer.parseInt(g.replaceAll("-", ""));
            
            PreparedStatement stmt = con.prepareStatement("insert into entry_pass (dataa, name, reason, phone, entry, visit_date, issuer_id, status, address) values (?,?,?,?,?,?,?,?,?)");
            stmt.setInt(1, idd);
            stmt.setObject(2,a);
            stmt.setObject(3,b);
            stmt.setLong(4, c);
            stmt.setString(5, d);
            stmt.setString(6, g);
            stmt.setInt(7, isid);
            stmt.setString(8, visit);
            stmt.setString(9, add);
            stmt.executeUpdate();
            
            System.out.println("DATE : " + g);
            
            PreparedStatement stmt2 = con.prepareStatement("select entry_id from entry_pass where name=? and phone=?");
            stmt2.setString(1, a);
            stmt2.setLong(2, c);
            ResultSet rst2 = stmt2.executeQuery();
            while(rst2.next()){val1=rst2.getInt(1);}
            
            val=Integer.toString(val1);
            
            if (!imageFile.isEmpty()) {
                try (InputStream inputStream = imageFile.getInputStream()) {
                        String sql = "insert into pass_image (entry_id, data) values (?,?)";
                        PreparedStatement statement = con.prepareStatement(sql);
                        statement.setInt(1, val1);

                        if (inputStream != null) {
                            statement.setBlob(2, inputStream);
                        }
                        int row = statement.executeUpdate();
                        if (row > 0) {
                            String message = "File uploaded and saved into the database";
                        }          
                } 
                catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            else{System.out.println("not there");
            }
        }
        catch(Exception k){
            k.getMessage();
        }
        object1.addAttribute("value", val);
        
        return "redirect:/passvisit";
    }
    
    @RequestMapping(value = "/exit", method = RequestMethod.POST)
    public String Exit(HttpServletRequest request, HttpServletResponse response, @RequestParam("a") Long w, @RequestParam("b") String x){
        try{
            String entry="", duration="", left="left";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pass?characterEncoding=utf8", "root", "root");
            
            PreparedStatement stmt1 = con.prepareStatement("select entry from entry_pass where entry_id=?");
            stmt1.setLong(1, w);
            ResultSet rst = stmt1.executeQuery();
            while(rst.next()){entry=rst.getString(1);}
            
            System.out.println(w+" "+x+" "+entry);
            
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");

                // Check if entry and x are not empty strings before parsing
                if (!entry.isEmpty() && x != null && !x.isEmpty()) {
                    Date date1 = sdf.parse(entry);
                    Date date2 = sdf.parse(x);

                    long durationInMillis = date2.getTime() - date1.getTime();
                    long hours = durationInMillis / (60 * 60 * 1000);
                    long minutes = (durationInMillis / (60 * 1000)) % 60;

                    duration = hours + " hour(s) and " + minutes + " minute(s)";
                } else {
                    // Handle the case when entry or x is an empty string or null
                    duration = "Invalid time format";
                }

                PreparedStatement stmt = con.prepareStatement("update entry_pass set exitt=?, duration=?, status=? where entry_id=?");
                stmt.setString(1, x);
                stmt.setString(2, duration);
                stmt.setString(3, left);
                stmt.setLong(4, w);
                stmt.executeUpdate();


            } catch (ParseException e) {
                e.printStackTrace();
                // Handle the ParseException, if any
            } catch (SQLException e) {
                e.printStackTrace();
                // Handle the SQLException, if any
            }
            

        }
        catch(Exception k){
            k.getMessage();
        }
        return "register";
    }
    
    @RequestMapping("/passfaculty")
    public String passfaculty() {
        System.out.println("This is passfaculty page");
        return "passfaculty";
    }
    
    @RequestMapping("/passvisit")
    public String passvisit() {
        System.out.println("This is passvisit page");
        return "passvisit";
    }
    
    @RequestMapping("/entries")
    public String entries() {
        System.out.println("This is entries page");
        return "entries";
    }
    
    @RequestMapping("/perdayentries")
    public String perdayentries() {
        System.out.println("This is perdayentries page");
        return "perdayentries";
    }
    
    @RequestMapping("/call")
    public String call() {
        System.out.println("This is call page");
        return "call";
    }
    
    @RequestMapping(value = "/searchentry", method = RequestMethod.POST)
    public String Searchentry(HttpServletRequest request, HttpServletResponse response, @RequestParam("a") String x, Model object1){
        try{
            String entry="", duration="", left="left";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pass?characterEncoding=utf8", "root", "root");
            
            PreparedStatement stmt1 = con.prepareStatement("select entry from entry_pass where entry_id=?");
            
        }
        catch(Exception k){
            k.getMessage();
        }
        object1.addAttribute("valuee", x);
        
        return "redirect:/perdayentries";
    }
    
    @RequestMapping("/login")
    public String login() {
        System.out.println("This is login page");
        return "login";
    }
    
    @RequestMapping(value = "/loginform", method = RequestMethod.POST)
    public String processLogin(HttpServletRequest request, HttpServletResponse response, @RequestParam("a") String x, @RequestParam("b") String y, Model object1) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pass?characterEncoding=utf8","root","root");
            PreparedStatement stmt = con.prepareStatement("select * from issuers where issuer_id=? and password=?");

            stmt.setString(1, x);
            stmt.setString(2, y);

            ResultSet rs = stmt.executeQuery();

           
            while (rs.next()) {
                if (rs.getString("issuer_id").equals(x) && rs.getString("password").equals(y)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("userName", x);
                    session.setAttribute("password", y);

                    session.setMaxInactiveInterval(30 * 24 * 30 * 60);
                    session.setAttribute("loggedIn", true);
                    
                    return "welcomepage";
                }
                else {
                    String errorMessage = "Invalid issuer_id/password";
                    object1.addAttribute("errorMessage", errorMessage);
                }
            }
        }
        catch (Exception k) {
            String errorMessage = "There was an unknown error! Please try again";
            object1.addAttribute("errorMessage", errorMessage);
            return "login";
        }

        return "login" ;
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request, HttpServletResponse response)
    {
        HttpSession session = request.getSession();
        session.removeAttribute("userName");
        session.setAttribute("loggedIn", false);
        return "welcomepage";
    }
    
}
