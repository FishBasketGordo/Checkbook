using System;

namespace Checkbook.Framework.DAL 
{
    public partial class UserAccountHistory
    {
        public int UserAccountHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? UserID { get; set; }
        public int? AccountID { get; set; }
    }
}