using System;

namespace Checkbook.Framework.DAL 
{
    public partial class DataType
    {
        public int DataTypeID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string InputFilter { get; set; }
        public string ValidationFilter { get; set; }
        public string Format { get; set; }
        public bool System { get; set; }
    }
}