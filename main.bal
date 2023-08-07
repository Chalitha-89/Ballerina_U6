import ballerina/http;
import ballerina/io;

type Greeting record {|
    string to;
    string content;
|};

configurable int port = 9090;

service http:Service / on new http:Listener(port) {
    resource function get greeting() returns string {
        string message = "Hello";
        io:println(int:avg(10, 20, 30, 40));
        io:println(int:avg(10, 20, 30, 40));
        io:println(int:avg(10, 20, 30, 40));
        io:println(int:avg(10, 20, 30, 40));

        int sizeInMB = 800; // Target size in MB
        int sizeInBytes = sizeInMB * 1024 * 1024; // Converting to bytes

        byte[] largeArray = [];

        // Filling the array with bytes up to the defined limit
        foreach int i in 0 ..< sizeInBytes {
            largeArray.push(1);
        }

        return message;
    }
}
