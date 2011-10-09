using System;

namespace Checkbook.Framework.DAL 
{
    public partial class BillFrequencyHistory
    {
        public int BillFrequencyHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? BillFrequencyID { get; set; }
        public string FrequencyName { get; set; }
        public int? ApproximateDays { get; set; }
    }
}