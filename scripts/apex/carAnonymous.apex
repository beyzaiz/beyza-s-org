car vw = new car();
vw.carColor = 'White';
vw.carName = 'polo';
vw.switchOn();
vw.drive();
vw.driveAtMaxSpeed();



car bm = new car();
bm.carColor = 'Black';
system.debug ('bm ==> ' + bm);
bm.switchOn();
system.debug('bm color ==> ' + bm.carColor);

car lm = new car();
lm.carColor = 'red';
lm.switchOn();
system.debug('lm max speed=> ' + lm.maxSpeed);


//code to call switchOn method.
//1.create the instance the class
Car tesla = new car();
tesla.switchOn();
