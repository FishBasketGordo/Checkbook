using System;

namespace Checkbook.Framework.DAL 
{
    public partial class DataTypeHistory
    {
        public int DataTypeHistoryID { get; set; }
        public string HistoryUserName { get; set; }
        public DateTime HistoryTimestamp { get; set; }
        public string HistoryAction { get; set; }
        public int? DataTypeID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string InputFilter { get; set; }
        public string ValidationFilter { get; set; }
        public string Format { get; set; }
        public bool? System { get; set; }
    }
}