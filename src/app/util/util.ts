export function getCookie(key: string) {
    const b = document.cookie.match("(^|;)\\s*" + key + "\\s*=\\s*([^;]+)");
    return b ? b.pop() : "";
}

function addCommasToNumber(number: number) {
    return number.toLocaleString('en-US');
}

export function currencyFormat(amount: number) {
    var numberWithCommas = addCommasToNumber(amount);
    return numberWithCommas + ' VNĐ';
}