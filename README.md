# Using XQuery

Project Description :
 You will use Zorba, which is a free implementation of XQuery.

    Download Zorba. It provides binaries for Windows, Linux, and Mac OS. 

Put all XQueries in a file "queries.xq" and use the Zorba Command Line Utility to evaluate the XQueries. 

Project Requirements

Write a sample XML file, travel.xml, for flight reservations that satisfies the following DTD:

<!ELEMENT travel (airport | flight | passenger | reservation)*>
<!ELEMENT airport (name)>
    <!ATTLIST airport code ID #REQUIRED>
<!ELEMENT flight (date,departureTime,arrivalTime)>
    <!ATTLIST flight id ID  #REQUIRED
                     from IDRef #REQUIRED    <!-- the code of the departure airport -->
                     to IDRef #REQUIRED>     <!-- the code of the destination airport -->
<!ELEMENT passenger (name,address)>
    <!ATTLIST passenger ssn ID #REQUIRED>
<!ELEMENT reservation (creditcard)>
    <!ATTLIST reservation passenger IDRef #REQUIRED        <!-- the passenger ssn -->
                          flight IDRef #REQUIRED>          <!-- the flight id -->

where all other elements are PCDATA. Express the following queries using XQuery and run them against your file travel.xml using Zorba:

    Print flight information about all flights that depart from DFW and arrive at JFK on 11/20/2014.
    For each passenger, print her name and address, and the total number of her reservations.
    For each airport, print the airport code and name, the total number of departing flighs, and the total number of arriving flights.
    For each flight that departs from DFW, print the flight date, the departure and arrival airport codes, the departure and arrival times, and the total number of reservations for this flight.
    Print the total number of reservations made for the passenger John Smith.
    Print all the flight destinations for the passenger John Smith. 

You should write the file travel.xml so that your queries return a non-empty result. 
