import ballerina/http;
import ballerina/io;

type Greeting record {|
    string to;
    string content;
|};

type Order record {|
    string name;
    float price;
|};

configurable int port = 9090;

service http:Service / on new http:Listener(port) {
    resource function get greeting() returns string {
        
        string message = "Hello";
        io:println(int:avg(10, 20, 30, 40));
        io:println(int:avg(10, 20, 30, 40));
        io:println(int:avg(10, 20, 30, 40));
        io:println(int:avg(10, 20, 30, 40));

        int sizeInMB = 2; // Target size in MB
        int sizeInBytes = sizeInMB * 1024 * 1024; // Converting to bytes

        byte[] largeArray = [];

        // Filling the array with bytes up to the defined limit
        foreach int i in 0 ..< sizeInBytes {
            // io:println("Copying i " + i.toBalString());
            largeArray.push(1);
        }
        Order[] orders = [
            {name: "Rich Dad Poor Dad", price: 16.0},
            {name: "Becoming", price: 22.6},
            {name: "Rich Dad Poor Dad", price: 16.4},
            {name: "Becoming", price: 22.5}
        ];
        var average = from var {price} in orders
            collect avg(price);
        io:println(average);
        return message;
    }
}
