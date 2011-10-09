using System;

namespace Checkbook.Framework.DAL 
{
    public partial class Allocation
    {
        public int AllocationID { get; set; }
        public int AllocationTypeID { get; set; }
        public int AccountID { get; set; }
        public int TransactionID { get; set; }
        public int FundID { get; set; }
        public decimal Amount { get; set; }
        public string Description { get; set; }
    }
}