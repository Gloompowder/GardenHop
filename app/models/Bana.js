var testCase = 1534236469;

var reverse = function(x) {
    var finalStr = ''
    x.toString().split('').reverse().forEach(
        numString =>{
            finalStr = finalStr + numString
    })
    if(x > ((Math.pow(2,31))-1) || x < -(Math.pow(2, 31))){
        return 0
    }
    else if(x >= 0){
    return parseInt(finalStr)
    }else if(x < 0){
        return -parseInt(finalStr)
    }
};

var octopus = function(x) {
    var finalStr = ''
    x.toString().split('').reverse().forEach(
        numString =>{
            finalStr = finalStr + numString
    })
    return x
    // return(x > ((Math.pow(2,31))-1) || x < -(Math.pow(2, 31)))
};
