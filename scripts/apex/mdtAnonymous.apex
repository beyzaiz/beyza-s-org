Map<String, emailDomain__mdt> emails = EmailDomain__mdt.getAll();
System.debug(emails);

EmailDomain__mdt gmail = EmailDomain__mdt.getInstance('gmail');
system.debug('gmail ->' +gmail);

//custom metadata types -> custom object-> we just retrived it. we get it? yes

//custom metadata types records(data) is Also metadata