function isPrime(value) {
    for(var i = 2; i < value; i++) {
        if(value % i === 0) {
            return false;
        }
    }
    return value > 1;
}

// Testing numbers
console.log(isPrime(5))
console.log(isPrime(7))
console.log(isPrime(10))
