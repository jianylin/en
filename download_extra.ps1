$map = @{
 'day2e_01'='1ffEViBGan';'day2e_02'='UaRXg66SDm';'day2e_03'='xMfKKLIFoC';'day2e_04'='JGhZh6qzRy';'day2e_05'='J7V9b1KxId';
 'day2e_06'='CU5bpQLJ9J';'day2e_07'='BuWDmAMxbo';'day2e_08'='bT4BoX7y17';'day2e_09'='anUjS7dUHC';'day2e_10'='7nDN2WgkjQ';
 'day2e_11'='THFGts9Hax';'day2e_12'='V3R2CKuBGB';'day2e_13'='vVDJX9H40A';'day2e_14'='SDelaFdBaW';'day2e_15'='j9UzxXqZQe';
 'day2e_16'='QUK1BLJVew';'day2e_17'='Jo6KUV6R35';'day2e_18'='VbyY2h211r';'day2e_19'='j2FTE5YpzT';'day2e_20'='Dh2rwhit9j';
 'day2e_21'='P7TDiXHu7Z';'day2e_22'='NzaU8ysO5z';'day2e_23'='bnKtev4thS';'day2e_24'='9HEdrPGVge';'day2e_25'='3Dmc6Wxinr';
 'day2e_26'='oAjsqKm4kC';'day2e_27'='wkKSXfGNnL';'day2e_28'='vDVMQRB2Is';'day2e_29'='2H8tYMwou3';
 'day3e_01'='cyrePvcNCF';'day3e_02'='4Y6Z7AUYGX';'day3e_03'='zUKVMvA2De';'day3e_04'='EBXiw1euuu';'day3e_05'='NNcqU8I5VW';
 'day3e_06'='2EVumNVMPU';'day3e_07'='SpcQKcEIls';'day3e_08'='kMdBOWWVPN';'day3e_09'='42iUZJ8Sdq';'day3e_10'='NvpVePUSxV';
 'day3e_11'='Mbz8TfsQ5r';'day3e_12'='wp2EnCJThb';'day3e_13'='DhaxdOnaOl';'day3e_14'='GAnmyVmBu0';'day3e_15'='AdZuZVwqil';
 'day3e_16'='yMAQSy4XIm';'day3e_17'='H1UJtM14OU';'day3e_18'='sm2RlHZ58t';'day3e_19'='pDy1rNqVBV';'day3e_20'='BIgQVArXh1';
 'day3e_21'='miLmqiXIke';'day3e_22'='XmBvbU5jlI';'day3e_23'='P7Srd1NqO0';'day3e_24'='RXhtBXuqu5'
}
$dir = "D:\Nick\学一学英文吧\daily-english-lesson\assets\audio"
$ok = 0; $fail = @()
foreach ($k in $map.Keys) {
  $out = Join-Path $dir ($k + ".wav")
  curl.exe -s -o $out -L ("https://aka.doubaocdn.com/s/" + $map[$k])
  $len = (Get-Item $out).Length
  if ($len -gt 20000) { $ok++ } else { $fail += ($k + ":" + $len) }
}
"DL_OK: $ok / $($map.Count)"
if ($fail.Count -gt 0) { "FAILS: " + ($fail -join ' ') }
