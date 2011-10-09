using Checkbook.Framework.DAL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using Creelio.Framework.DAL;
using System.Collections.Generic;
using Creelio.Framework.DAL.Interfaces;

namespace Checkbook.Tests.Framework.DAL
{   
    [TestClass]
    public class CheckbookEntitiesTest
    {
        #region Fields

        private TestContext _testContext;

        #endregion

        #region Properties

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return _testContext;
            }
            set
            {
                _testContext = value;
            }
        }

        #endregion

        #region Methods

        [TestMethod]
        public void CheckCounts()
        {
            CheckCount(CheckbookEntities.Account);
            CheckCount(CheckbookEntities.AccountHistory);
            CheckCount(CheckbookEntities.AccountType);
            CheckCount(CheckbookEntities.AccountTypeHistory);
            CheckCount(CheckbookEntities.Allocation);
            CheckCount(CheckbookEntities.AllocationData);
            CheckCount(CheckbookEntities.AllocationDataHistory);
            CheckCount(CheckbookEntities.AllocationHistory);
            CheckCount(CheckbookEntities.AllocationType);
            CheckCount(CheckbookEntities.AllocationTypeAccount);
            CheckCount(CheckbookEntities.AllocationTypeAccountHistory);
            CheckCount(CheckbookEntities.AllocationTypeField);
            CheckCount(CheckbookEntities.AllocationTypeFieldHistory);
            CheckCount(CheckbookEntities.AllocationTypeHistory);
            CheckCount(CheckbookEntities.Bill);
            CheckCount(CheckbookEntities.BillFrequency);
            CheckCount(CheckbookEntities.BillFrequencyHistory);
            CheckCount(CheckbookEntities.BillHistory);
            CheckCount(CheckbookEntities.DataType);
            CheckCount(CheckbookEntities.DataTypeHistory);
            CheckCount(CheckbookEntities.Fund);
            CheckCount(CheckbookEntities.FundBudget);
            CheckCount(CheckbookEntities.FundBudgetHistory);
            CheckCount(CheckbookEntities.FundHistory);
            CheckCount(CheckbookEntities.FundType);
            CheckCount(CheckbookEntities.FundTypeHistory);
            CheckCount(CheckbookEntities.Transaction);
            CheckCount(CheckbookEntities.TransactionHistory);
            CheckCount(CheckbookEntities.User);
            CheckCount(CheckbookEntities.UserAccount);
            CheckCount(CheckbookEntities.UserAccountHistory);
            CheckCount(CheckbookEntities.UserFund);
            CheckCount(CheckbookEntities.UserFundHistory);
            CheckCount(CheckbookEntities.UserHistory);            
        }
        
        public void CheckCount<T>(IDataSelector<T> selector) where T : new()
        {
            int count = selector.Count();
            List<T> selected = selector.Select();
            Assert.AreEqual(count, selected.Count, string.Format("COUNT does not match SELECT for entity \"{0}\".", typeof(T).FullName));
        }

        [TestMethod]
        public void CheckCrud()
        {
            //CheckCrud(CheckbookEntities.Account);
            //CheckCrud(CheckbookEntities.AccountType);
            //CheckCrud(CheckbookEntities.Allocation);
            //CheckCrud(CheckbookEntities.AllocationData);
            //CheckCrud(CheckbookEntities.AllocationType);
            //CheckCrud(CheckbookEntities.AllocationTypeAccount);
            //CheckCrud(CheckbookEntities.AllocationTypeField);
            //CheckCrud(CheckbookEntities.Bill);
            //CheckCrud(CheckbookEntities.BillFrequency);
            //CheckCrud(CheckbookEntities.DataType);
            //CheckCrud(CheckbookEntities.Fund);
            //CheckCrud(CheckbookEntities.FundBudget);
            //CheckCrud(CheckbookEntities.FundType);
            //CheckCrud(CheckbookEntities.Transaction);
            CheckCrud(CheckbookEntities.User);
            //CheckCrud(CheckbookEntities.UserAccount);
            //CheckCrud(CheckbookEntities.UserFund);            
        }

        private void CheckCrud<T>(DataAccessor<T> accessor) where T : class, new()
        {
            T entity = CreateEntity<T>();
            accessor.ClearPrimaryKey(entity);
            accessor.Save(ref entity);
            accessor.Remove(entity);
        }

        private T CreateEntity<T>() where T : new()
        {
            var entity = new T();
            var props = typeof(T).GetProperties();
            foreach (var prop in props)
            {
                if (!prop.CanWrite)
                    continue;

                if (prop.PropertyType == typeof(bool))
                {
                    prop.SetValue(entity, true, null);
                }
                else if (prop.PropertyType == typeof(char))
                {
                    prop.SetValue(entity, 'a', null);
                }
                else if (prop.PropertyType.IsPrimitive)
                {
                    prop.SetValue(entity, 1, null);
                }
                else if (prop.PropertyType == typeof(string))
                {
                    prop.SetValue(entity, "a", null);
                }
                else if (prop.PropertyType == typeof(DateTime))
                {
                    prop.SetValue(entity, DateTime.Today, null);
                }
            }

            return entity;
        }

        #endregion
    }
}
