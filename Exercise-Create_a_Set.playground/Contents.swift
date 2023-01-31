//Phone Numbers

//Use the union() method on a set to combine multiple sets into a single collection:
//let identifier = element.union(element)

//Use the remove() method to remove an element from a set:
//element.remove(element)

//Use the count method on a set to return the number of items in the collection:
//element.count


//BOOKING METHODS: PHONE, PERSON, INTERNET
var reservationInPerson : Set<String>
reservationInPerson = ["000-345-3441","000-325-3443"]

var reservationPhone : Set<String>
reservationPhone = ["000-345-3443","000-345-5223"]

var reservationInternet : Set<String>
reservationInternet = ["000-345-6223","000-345-7223"]


//COMBINE ALL SETS IN A --SINGLE-- SET
let inPersonAndOverPhone=reservationInPerson.union(reservationPhone)

print(inPersonAndOverPhone)

//ALL PHONE NUMBERS
var allPhoneNumbers=inPersonAndOverPhone.union(reservationInternet)
print(allPhoneNumbers)

//SET FOR THE RESERVATION CODES
var confirmationCodes:Set<String>
confirmationCodes = ["LL3450","LL3451","LL3452","LL3453","LL3454"]

//COMPARE NUMBER CODES TO THE NUMBER OF PHONE NUMBERS
print("Phone Numbers: \(allPhoneNumbers.count), ConfirmationCodes: \(confirmationCodes.count)")

if (allPhoneNumbers.count==confirmationCodes.count){
    print("All Phone numbers are the same number of elements like confirmation codes!")
} else {
    print("All Phone numbers are NOT the same number of elements like confirmation codes!")
}

//INSERT MORE CONFIRMATIONCODES IF IT IS LESS THAN PHONE NUMBERS

confirmationCodes.insert("LL3455")
print(confirmationCodes)
print("Phone Numbers: \(allPhoneNumbers.count), ConfirmationCodes: \(confirmationCodes.count)")
if (allPhoneNumbers.count==confirmationCodes.count){
    print("All Phone numbers are the same number of elements like confirmation codes!")
} else {
    print("All Phone numbers are NOT the same number of elements like confirmation codes!")
}

//REMOVE THE CONFIRMATION CODE AND PHONE NUMBER
allPhoneNumbers.remove("000-345-7223")
confirmationCodes.remove("LL3455")
print("Phone Numbers: \(allPhoneNumbers.count), ConfirmationCodes: \(confirmationCodes.count)")

