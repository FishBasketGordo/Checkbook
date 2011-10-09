using System;

namespace Checkbook.Framework.DAL 
{
    public partial class FundTypeHistory
    {
        public int FundTypeHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? FundTypeID { get; set; }
        public string Type { get; set; }
    }
}