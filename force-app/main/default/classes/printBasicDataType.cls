public with sharing class printBasicDataType {
    public void printBasicDataType() {
        string batchName = 'Batch 14';
        integer totalCandidates = 40;
        boolean isAdminCompleted = true;

        system.debug('total candidates ==> ' + totalCandidates);

        string batchDescription = batchName + 'is the best';
        system.debug(batchDescription);
    }
}