using System;

namespace Checkbook.Framework.DAL 
{
    public partial class BillHistory
    {
        public int BillHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? BillID { get; set; }
        public int? AllocationTypeID { get; set; }
        public int? BillFrequencyID { get; set; }
        public string BillerName { get; set; }
        public decimal? Amount { get; set; }
        public DateTime? DueDate { get; set; }
    }
}