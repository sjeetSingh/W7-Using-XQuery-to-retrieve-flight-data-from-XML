(: Flights that depart from DFW and arrive at JFK on 11/20/2014 :)
'&#xa;1.Print flight information about all flights that depart from DFW and arrive at JFK on 11/20/2014.&#xa;',

doc("flightDB.xml")/travel/flight[@from="A02" and @to="A01" and date="11/20/2014"],

'&#xa;2.For each passenger, print her name and address, and the total number of her reservations.&#xa;',

doc("flightDB.xml")/travel/passenger,

'&#xa;3. For each airport, print the airport code and name, the total number of departing flighs and the total number of arriving flights.&#xa;',

for $x in doc("flightDB.xml")/travel/airport
let $fr:=doc("flightDB.xml")/travel/flight[@from=$x/@code]
let $to:=doc("flightDB.xml")/travel/flight[@to=$x/@code]
return concat($x,$x/@code," Departure ",count($fr)," Arrival ",count($to)),

'&#xa;4.For each flight that departs from DFW, print the flight date, the departure and arrival airport codes,the departure and arrival times, and the total number of reservations for this flight.&#xa;',

for $y in doc("flightDB.xml")/travel/flight[@from="A02"]
let $b := doc("flightDB.xml")/travel/reservation[@flight=$y/@id]
return concat($y, count($b)),

'&#xa;5.Print the total number of reservations made for the passenger John Smith.&#xa;',
for $name in doc("flightDB.xml")/travel/passenger[name="John Smith"]
let $ssn:=doc("flightDB.xml")/travel/reservation[@passenger=$name/@ssn]
return count($ssn),

'&#xa;6.Print all the flight destinations for the passenger John Smith.&#xa;',
for $johnS in doc("flightDB.xml")/travel/passenger[name="John Smith"]
for $johnSSN in doc("flightDB.xml")/travel/reservation[@passenger=$johnS/@ssn]
for $a in doc("flightDB.xml")/travel/flight[@id=$johnSSN/@flight]
for $b in doc("flightDB.xml")/travel/airport[@code=$a/@to]
return concat($b/data(@code)," ",$b/name)