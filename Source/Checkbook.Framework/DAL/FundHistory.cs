using System;

namespace Checkbook.Framework.DAL 
{
    public partial class FundHistory
    {
        public int FundHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? FundID { get; set; }
        public int? FundTypeID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}