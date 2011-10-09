using System;

namespace Checkbook.Framework.DAL 
{
    public partial class AllocationTypeFieldHistory
    {
        public int AllocationTypeFieldHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? AllocationTypeFieldID { get; set; }
        public int? AllocationTypeID { get; set; }
        public int? DataTypeID { get; set; }
        public string Label { get; set; }
        public bool? Required { get; set; }
    }
}