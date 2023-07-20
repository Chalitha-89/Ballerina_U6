import ballerina/http;
import ballerina/io;

type Greeting record {|
    string to;
    string content;
|};

configurable int port = 9090;

type Order record {|
    string name;
    float price;
|};

service http:Service / on new http:Listener(port) {
    resource function get greeting() returns string {
        string message = "Hello";
        io:println(int:avg(10, 20, 30, 40));
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
