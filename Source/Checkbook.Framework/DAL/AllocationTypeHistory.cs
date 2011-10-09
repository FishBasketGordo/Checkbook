using System;

namespace Checkbook.Framework.DAL 
{
    public partial class AllocationTypeHistory
    {
        public int AllocationTypeHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? AllocationTypeID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}