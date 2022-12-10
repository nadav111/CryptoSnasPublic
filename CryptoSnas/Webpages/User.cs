using System;

namespace CryptoSnas.Webpages
{
    public class User
    {
        public int Id;
        public string userName;
        public string password;
        public string firstName;
        public string lastName;
        public DateTime birth;
        public string phone;
        public string Gmail;
        public bool Admin;

        public User()
        {
            Id = -1;
            userName = "";
            password = "";
            firstName = "";
            lastName = "";
            birth = DateTime.Today;
            phone = "";
            Gmail = "";
            Admin = false;
        }
    }
}