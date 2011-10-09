using System;

namespace Checkbook.Framework.DAL 
{
    public partial class UserFundHistory
    {
        public int UserFundHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? UserID { get; set; }
        public int? FundID { get; set; }
    }
}