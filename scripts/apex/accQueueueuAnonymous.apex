list<account> listAcc = [select id, name from account limit 50];
AccountsQueuable aq = new AccountsQueuable(listAcc);
id jobId = system.enqueueJob(aq);//we can enqueue the class which implements queueable.