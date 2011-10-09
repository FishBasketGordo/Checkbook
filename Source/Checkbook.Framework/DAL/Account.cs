using System;

namespace Checkbook.Framework.DAL 
{
    public partial class Account
    {
        public int AccountID { get; set; }
        public int AccountTypeID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}