using System;

namespace Checkbook.Framework.DAL 
{
    public partial class AccountType
    {
        public int AccountTypeID { get; set; }
        public string Type { get; set; }
        public string Description { get; set; }
    }
}