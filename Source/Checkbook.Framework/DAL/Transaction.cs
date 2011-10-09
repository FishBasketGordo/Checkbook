using System;

namespace Checkbook.Framework.DAL 
{
    public partial class Transaction
    {
        public int TransactionID { get; set; }
        public int AccountID { get; set; }
        public DateTime TransactionDate { get; set; }
        public DateTime? PostingDate { get; set; }
        public DateTime EntryDate { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public string Description { get; set; }
    }
}