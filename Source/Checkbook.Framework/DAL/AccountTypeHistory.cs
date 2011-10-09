using System;

namespace Checkbook.Framework.DAL 
{
    public partial class AccountTypeHistory
    {
        public int AccountTypeHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? AccountTypeID { get; set; }
        public string Type { get; set; }
        public string Description { get; set; }
    }
}