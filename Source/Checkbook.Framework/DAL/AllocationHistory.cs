using System;

namespace Checkbook.Framework.DAL 
{
    public partial class AllocationHistory
    {
        public int AllocationHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? AllocationID { get; set; }
        public int? AllocationTypeID { get; set; }
        public int? AccountID { get; set; }
        public int? TransactionID { get; set; }
        public int? FundID { get; set; }
        public decimal? Amount { get; set; }
        public string Description { get; set; }
    }
}