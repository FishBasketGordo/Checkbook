using System;

namespace Checkbook.Framework.DAL 
{
    public partial class Bill
    {
        public int BillID { get; set; }
        public int AllocationTypeID { get; set; }
        public int BillFrequencyID { get; set; }
        public string BillerName { get; set; }
        public decimal Amount { get; set; }
        public DateTime DueDate { get; set; }
    }
}