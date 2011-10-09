using System;

namespace Checkbook.Framework.DAL 
{
    public partial class FundBudgetHistory
    {
        public int FundBudgetHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? FundID { get; set; }
        public int? AllocationTypeID { get; set; }
        public decimal? BudgetAmount { get; set; }
    }
}