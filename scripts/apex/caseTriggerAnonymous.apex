List<Case> newCAses = new List<Case>();
for (Integer i = 0; i < 210; i++) {
    case c = new case();
    c.Subject = 'trigger case';
    c.Status = 'New';
    c.Origin = 'Resolve it now';
    newCAses.add(c);
}
insert newCAses;

List<Case> updateCAses = [select id, status from case where status = 'New'];
for (case eachCase : updateCAses) {
        eachCase.Status = 'Working';
}
update updateCAses;