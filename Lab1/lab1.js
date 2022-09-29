function Singleton(param){
    let list=[param];
    return list;
}
console.log(Singleton("First"));

function Null(list){
    if(list.length===0){
        return true;
    }else{
        return false;
    }
}
console.log(Null(["Hello"]));

function snoc(list, elem){

    list.push(elem);
    return list;
}
console.log(snoc(["Cat", "Dog"], "Rat"));

function length(list){
    let i=0;
    for(let elem of list){
        i++;
    }
    return i;
}
console.log(length(["12", "823", "543", "0913"]));