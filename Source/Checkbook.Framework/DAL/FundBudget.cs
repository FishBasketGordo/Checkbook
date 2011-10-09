using System;

namespace Checkbook.Framework.DAL 
{
    public partial class FundBudget
    {
        public int FundID { get; set; }
        public int AllocationTypeID { get; set; }
        public decimal BudgetAmount { get; set; }
    }
}