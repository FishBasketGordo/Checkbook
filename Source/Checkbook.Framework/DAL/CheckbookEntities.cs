using System;
using Creelio.Framework.DAL;

namespace Checkbook.Framework.DAL
{
    public static class CheckbookEntities
    {
        private const string _checkbookConnectionName = "ConnectionStrings.Checkbook";

        private static DataAccessor<Account> _account = null;   
        public static DataAccessor<Account> Account             
        {                                     
            get                                
            {                                 
                if (_account == null)              
                {                             
                    _account = new DataAccessor<Account>(_checkbookConnectionName);  
                }                             
                return _account;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<AccountHistory> _accountHistory = null;   
        public static ReadOnlyDataAccessor<AccountHistory> AccountHistory             
        {                                     
            get                                
            {                                 
                if (_accountHistory == null)              
                {                             
                    _accountHistory = new ReadOnlyDataAccessor<AccountHistory>(new DataAccessor<AccountHistory>(_checkbookConnectionName));  
                }                             
                return _accountHistory;                   
            }                                 
        }                                     

        private static DataAccessor<AccountType> _accountType = null;   
        public static DataAccessor<AccountType> AccountType             
        {                                     
            get                                
            {                                 
                if (_accountType == null)              
                {                             
                    _accountType = new DataAccessor<AccountType>(_checkbookConnectionName);  
                }                             
                return _accountType;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<AccountTypeHistory> _accountTypeHistory = null;   
        public static ReadOnlyDataAccessor<AccountTypeHistory> AccountTypeHistory             
        {                                     
            get                                
            {                                 
                if (_accountTypeHistory == null)              
                {                             
                    _accountTypeHistory = new ReadOnlyDataAccessor<AccountTypeHistory>(new DataAccessor<AccountTypeHistory>(_checkbookConnectionName));  
                }                             
                return _accountTypeHistory;                   
            }                                 
        }                                     

        private static DataAccessor<Allocation> _allocation = null;   
        public static DataAccessor<Allocation> Allocation             
        {                                     
            get                                
            {                                 
                if (_allocation == null)              
                {                             
                    _allocation = new DataAccessor<Allocation>(_checkbookConnectionName);  
                }                             
                return _allocation;                   
            }                                 
        }                                     

        private static DataAccessor<AllocationData> _allocationData = null;   
        public static DataAccessor<AllocationData> AllocationData             
        {                                     
            get                                
            {                                 
                if (_allocationData == null)              
                {                             
                    _allocationData = new DataAccessor<AllocationData>(_checkbookConnectionName);  
                }                             
                return _allocationData;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<AllocationDataHistory> _allocationDataHistory = null;   
        public static ReadOnlyDataAccessor<AllocationDataHistory> AllocationDataHistory             
        {                                     
            get                                
            {                                 
                if (_allocationDataHistory == null)              
                {                             
                    _allocationDataHistory = new ReadOnlyDataAccessor<AllocationDataHistory>(new DataAccessor<AllocationDataHistory>(_checkbookConnectionName));  
                }                             
                return _allocationDataHistory;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<AllocationHistory> _allocationHistory = null;   
        public static ReadOnlyDataAccessor<AllocationHistory> AllocationHistory             
        {                                     
            get                                
            {                                 
                if (_allocationHistory == null)              
                {                             
                    _allocationHistory = new ReadOnlyDataAccessor<AllocationHistory>(new DataAccessor<AllocationHistory>(_checkbookConnectionName));  
                }                             
                return _allocationHistory;                   
            }                                 
        }                                     

        private static DataAccessor<AllocationType> _allocationType = null;   
        public static DataAccessor<AllocationType> AllocationType             
        {                                     
            get                                
            {                                 
                if (_allocationType == null)              
                {                             
                    _allocationType = new DataAccessor<AllocationType>(_checkbookConnectionName);  
                }                             
                return _allocationType;                   
            }                                 
        }                                     

        private static DataAccessor<AllocationTypeAccount> _allocationTypeAccount = null;   
        public static DataAccessor<AllocationTypeAccount> AllocationTypeAccount             
        {                                     
            get                                
            {                                 
                if (_allocationTypeAccount == null)              
                {                             
                    _allocationTypeAccount = new DataAccessor<AllocationTypeAccount>(_checkbookConnectionName);  
                }                             
                return _allocationTypeAccount;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<AllocationTypeAccountHistory> _allocationTypeAccountHistory = null;   
        public static ReadOnlyDataAccessor<AllocationTypeAccountHistory> AllocationTypeAccountHistory             
        {                                     
            get                                
            {                                 
                if (_allocationTypeAccountHistory == null)              
                {                             
                    _allocationTypeAccountHistory = new ReadOnlyDataAccessor<AllocationTypeAccountHistory>(new DataAccessor<AllocationTypeAccountHistory>(_checkbookConnectionName));  
                }                             
                return _allocationTypeAccountHistory;                   
            }                                 
        }                                     

        private static DataAccessor<AllocationTypeField> _allocationTypeField = null;   
        public static DataAccessor<AllocationTypeField> AllocationTypeField             
        {                                     
            get                                
            {                                 
                if (_allocationTypeField == null)              
                {                             
                    _allocationTypeField = new DataAccessor<AllocationTypeField>(_checkbookConnectionName);  
                }                             
                return _allocationTypeField;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<AllocationTypeFieldHistory> _allocationTypeFieldHistory = null;   
        public static ReadOnlyDataAccessor<AllocationTypeFieldHistory> AllocationTypeFieldHistory             
        {                                     
            get                                
            {                                 
                if (_allocationTypeFieldHistory == null)              
                {                             
                    _allocationTypeFieldHistory = new ReadOnlyDataAccessor<AllocationTypeFieldHistory>(new DataAccessor<AllocationTypeFieldHistory>(_checkbookConnectionName));  
                }                             
                return _allocationTypeFieldHistory;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<AllocationTypeHistory> _allocationTypeHistory = null;   
        public static ReadOnlyDataAccessor<AllocationTypeHistory> AllocationTypeHistory             
        {                                     
            get                                
            {                                 
                if (_allocationTypeHistory == null)              
                {                             
                    _allocationTypeHistory = new ReadOnlyDataAccessor<AllocationTypeHistory>(new DataAccessor<AllocationTypeHistory>(_checkbookConnectionName));  
                }                             
                return _allocationTypeHistory;                   
            }                                 
        }                                     

        private static DataAccessor<Bill> _bill = null;   
        public static DataAccessor<Bill> Bill             
        {                                     
            get                                
            {                                 
                if (_bill == null)              
                {                             
                    _bill = new DataAccessor<Bill>(_checkbookConnectionName);  
                }                             
                return _bill;                   
            }                                 
        }                                     

        private static DataAccessor<BillFrequency> _billFrequency = null;   
        public static DataAccessor<BillFrequency> BillFrequency             
        {                                     
            get                                
            {                                 
                if (_billFrequency == null)              
                {                             
                    _billFrequency = new DataAccessor<BillFrequency>(_checkbookConnectionName);  
                }                             
                return _billFrequency;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<BillFrequencyHistory> _billFrequencyHistory = null;   
        public static ReadOnlyDataAccessor<BillFrequencyHistory> BillFrequencyHistory             
        {                                     
            get                                
            {                                 
                if (_billFrequencyHistory == null)              
                {                             
                    _billFrequencyHistory = new ReadOnlyDataAccessor<BillFrequencyHistory>(new DataAccessor<BillFrequencyHistory>(_checkbookConnectionName));  
                }                             
                return _billFrequencyHistory;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<BillHistory> _billHistory = null;   
        public static ReadOnlyDataAccessor<BillHistory> BillHistory             
        {                                     
            get                                
            {                                 
                if (_billHistory == null)              
                {                             
                    _billHistory = new ReadOnlyDataAccessor<BillHistory>(new DataAccessor<BillHistory>(_checkbookConnectionName));  
                }                             
                return _billHistory;                   
            }                                 
        }                                     

        private static DataAccessor<DataType> _dataType = null;   
        public static DataAccessor<DataType> DataType             
        {                                     
            get                                
            {                                 
                if (_dataType == null)              
                {                             
                    _dataType = new DataAccessor<DataType>(_checkbookConnectionName);  
                }                             
                return _dataType;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<DataTypeHistory> _dataTypeHistory = null;   
        public static ReadOnlyDataAccessor<DataTypeHistory> DataTypeHistory             
        {                                     
            get                                
            {                                 
                if (_dataTypeHistory == null)              
                {                             
                    _dataTypeHistory = new ReadOnlyDataAccessor<DataTypeHistory>(new DataAccessor<DataTypeHistory>(_checkbookConnectionName));  
                }                             
                return _dataTypeHistory;                   
            }                                 
        }                                     

        private static DataAccessor<Fund> _fund = null;   
        public static DataAccessor<Fund> Fund             
        {                                     
            get                                
            {                                 
                if (_fund == null)              
                {                             
                    _fund = new DataAccessor<Fund>(_checkbookConnectionName);  
                }                             
                return _fund;                   
            }                                 
        }                                     

        private static DataAccessor<FundBudget> _fundBudget = null;   
        public static DataAccessor<FundBudget> FundBudget             
        {                                     
            get                                
            {                                 
                if (_fundBudget == null)              
                {                             
                    _fundBudget = new DataAccessor<FundBudget>(_checkbookConnectionName);  
                }                             
                return _fundBudget;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<FundBudgetHistory> _fundBudgetHistory = null;   
        public static ReadOnlyDataAccessor<FundBudgetHistory> FundBudgetHistory             
        {                                     
            get                                
            {                                 
                if (_fundBudgetHistory == null)              
                {                             
                    _fundBudgetHistory = new ReadOnlyDataAccessor<FundBudgetHistory>(new DataAccessor<FundBudgetHistory>(_checkbookConnectionName));  
                }                             
                return _fundBudgetHistory;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<FundHistory> _fundHistory = null;   
        public static ReadOnlyDataAccessor<FundHistory> FundHistory             
        {                                     
            get                                
            {                                 
                if (_fundHistory == null)              
                {                             
                    _fundHistory = new ReadOnlyDataAccessor<FundHistory>(new DataAccessor<FundHistory>(_checkbookConnectionName));  
                }                             
                return _fundHistory;                   
            }                                 
        }                                     

        private static DataAccessor<FundType> _fundType = null;   
        public static DataAccessor<FundType> FundType             
        {                                     
            get                                
            {                                 
                if (_fundType == null)              
                {                             
                    _fundType = new DataAccessor<FundType>(_checkbookConnectionName);  
                }                             
                return _fundType;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<FundTypeHistory> _fundTypeHistory = null;   
        public static ReadOnlyDataAccessor<FundTypeHistory> FundTypeHistory             
        {                                     
            get                                
            {                                 
                if (_fundTypeHistory == null)              
                {                             
                    _fundTypeHistory = new ReadOnlyDataAccessor<FundTypeHistory>(new DataAccessor<FundTypeHistory>(_checkbookConnectionName));  
                }                             
                return _fundTypeHistory;                   
            }                                 
        }                                     

        private static DataAccessor<Transaction> _transaction = null;   
        public static DataAccessor<Transaction> Transaction             
        {                                     
            get                                
            {                                 
                if (_transaction == null)              
                {                             
                    _transaction = new DataAccessor<Transaction>(_checkbookConnectionName);  
                }                             
                return _transaction;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<TransactionHistory> _transactionHistory = null;   
        public static ReadOnlyDataAccessor<TransactionHistory> TransactionHistory             
        {                                     
            get                                
            {                                 
                if (_transactionHistory == null)              
                {                             
                    _transactionHistory = new ReadOnlyDataAccessor<TransactionHistory>(new DataAccessor<TransactionHistory>(_checkbookConnectionName));  
                }                             
                return _transactionHistory;                   
            }                                 
        }                                     

        private static DataAccessor<User> _user = null;   
        public static DataAccessor<User> User             
        {                                     
            get                                
            {                                 
                if (_user == null)              
                {                             
                    _user = new DataAccessor<User>(_checkbookConnectionName);  
                }                             
                return _user;                   
            }                                 
        }                                     

        private static DataAccessor<UserAccount> _userAccount = null;   
        public static DataAccessor<UserAccount> UserAccount             
        {                                     
            get                                
            {                                 
                if (_userAccount == null)              
                {                             
                    _userAccount = new DataAccessor<UserAccount>(_checkbookConnectionName);  
                }                             
                return _userAccount;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<UserAccountHistory> _userAccountHistory = null;   
        public static ReadOnlyDataAccessor<UserAccountHistory> UserAccountHistory             
        {                                     
            get                                
            {                                 
                if (_userAccountHistory == null)              
                {                             
                    _userAccountHistory = new ReadOnlyDataAccessor<UserAccountHistory>(new DataAccessor<UserAccountHistory>(_checkbookConnectionName));  
                }                             
                return _userAccountHistory;                   
            }                                 
        }                                     

        private static DataAccessor<UserFund> _userFund = null;   
        public static DataAccessor<UserFund> UserFund             
        {                                     
            get                                
            {                                 
                if (_userFund == null)              
                {                             
                    _userFund = new DataAccessor<UserFund>(_checkbookConnectionName);  
                }                             
                return _userFund;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<UserFundHistory> _userFundHistory = null;   
        public static ReadOnlyDataAccessor<UserFundHistory> UserFundHistory             
        {                                     
            get                                
            {                                 
                if (_userFundHistory == null)              
                {                             
                    _userFundHistory = new ReadOnlyDataAccessor<UserFundHistory>(new DataAccessor<UserFundHistory>(_checkbookConnectionName));  
                }                             
                return _userFundHistory;                   
            }                                 
        }                                     

        private static ReadOnlyDataAccessor<UserHistory> _userHistory = null;   
        public static ReadOnlyDataAccessor<UserHistory> UserHistory             
        {                                     
            get                                
            {                                 
                if (_userHistory == null)              
                {                             
                    _userHistory = new ReadOnlyDataAccessor<UserHistory>(new DataAccessor<UserHistory>(_checkbookConnectionName));  
                }                             
                return _userHistory;                   
            }                                 
        }                                     


    }
}