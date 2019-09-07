function hitungKembalian(totalBelanja, uang){
    var stokUang = [500, 1000, 2000, 5000, 1000, 2000, 50000];
    stokUang.sort(function(a,b){
        return b-a;
    });

    var uangKembalian = [];

    var kembalian = uang - totalBelanja;

    for (var a = 0; a < stokUang.length; a++){
        if (kembalian >= stokUang[a]){
            uangKembalian.push(stokUang[a]);
            kembalian -= stokUang[a];
        }
    }
    return uangKembalian;
}
console.log(hitungKembalian(15500,50000));