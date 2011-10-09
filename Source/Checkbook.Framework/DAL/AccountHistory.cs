using System;

namespace Checkbook.Framework.DAL 
{
    public partial class AccountHistory
    {
        public int AccountHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? AccountID { get; set; }
        public int? AccountTypeID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}