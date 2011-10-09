using System;

namespace Checkbook.Framework.DAL 
{
    public partial class AllocationTypeAccountHistory
    {
        public int AllocationTypeAccountHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? AllocationTypeID { get; set; }
        public int? AccountID { get; set; }
    }
}