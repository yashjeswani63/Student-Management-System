using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;

namespace SMS
{
    public class EmailSender
    {
        static string smtpAddress = "smtp.gmail.com";
        static int portNumber = 587;
        static bool enableSSL = true;
        static string emailFromAddress = "yashjeswaniearcs@gmail.com";
        static string password = "pote cnag fjey cswh";
        static string subject = "Hello";
        static void Main(string[] args)
        {
            EmailSender emailSender = new EmailSender();
            String Receiver = "";
            String otp = "";
            emailSender.SendEmail(Receiver, otp);
        }
        public void SendEmail(String Receiver, String otp)
        {
            string emailToAddress = Receiver;
            string body = "Hello, Your One Time Password is " + otp;
            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress(emailFromAddress);
                mail.To.Add(emailToAddress);
                mail.Subject = subject;
                mail.Body = body;
                mail.IsBodyHtml = true;
                //mail.Attachments.Add(new Attachment("D:\\TestFile.txt"));//--Uncomment this to send any attachment  
                using (SmtpClient smtp = new SmtpClient(smtpAddress, portNumber))
                {
                    smtp.Credentials = new NetworkCredential(emailFromAddress, password);
                    smtp.EnableSsl = enableSSL;
                    smtp.Send(mail);
                }
            }
        }
    }
}