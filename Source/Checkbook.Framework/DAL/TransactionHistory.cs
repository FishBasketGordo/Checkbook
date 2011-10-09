using System;

namespace Checkbook.Framework.DAL 
{
    public partial class TransactionHistory
    {
        public int TransactionHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? TransactionID { get; set; }
        public int? AccountID { get; set; }
        public DateTime? TransactionDate { get; set; }
        public DateTime? PostingDate { get; set; }
        public DateTime? EntryDate { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public string Description { get; set; }
    }
}