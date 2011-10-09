using System;

namespace Checkbook.Framework.DAL 
{
    public partial class AllocationData
    {
        public int AllocationDataID { get; set; }
        public int AllocationTypeFieldID { get; set; }
        public int AccountID { get; set; }
        public int TransactionID { get; set; }
        public int AllocationID { get; set; }
        public int FundID { get; set; }
        public string Value { get; set; }
    }
}