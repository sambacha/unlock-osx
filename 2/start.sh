#!/bin/bash
echo "Downloading XCode 12.3..."
curl -O 'https://download.developer.apple.com/Developer_Tools/Xcode_12.3_Release_Candidate/Xcode_12.3_Release_Candidate.xip' \
  -H 'authority: download.developer.apple.com' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'sec-ch-ua: "Google Chrome";v="89", "Chromium";v="89", ";Not A Brand";v="99"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'dnt: 1' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'sec-fetch-site: same-site' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-user: ?1' \
  -H 'sec-fetch-dest: document' \
  -H 'referer: https://developer.apple.com/' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cookie: dssid2=e42cbf0c-4853-4013-9d63-daa2c0b02ecf; dssf=1; as_sfa=Mnx1c3x1c3x8ZW5fVVN8Y29uc3VtZXJ8aW50ZXJuZXR8MHwwfDE; pxro=2; xp_ci=3z4ceuhFzEFIz5HOzCQ7zJvp3TxKN; as_uct=0; POD=us~en; s_vnum_n2_us=19|1; as_disa=AAAjAAABNRaVASM1EeKZLCjVovaWd-qbpUtk4z_PpB9U5NBP37kAAgFou6in0Gr9sAi-TwoV8_l12h_pWp2kK5IQHH81zehnIQ==; XID=dda8be527c8356b3553e2c81315e8d61; dslang=US-EN; geo=US; site=USA; myacinfo=DAWTKNV27de393d569e2ee32cc21fb55c40909993c4afd4040e498143d4e24f6bbed87e9c8943ec016bde3b44a5815a95ffe60e541c485faba351be89d4549ba98a599cb5a96473edc72e7e85037e7596ff1d079906c498b103e8ce0a53ffc25a18a47fb77e7f6849131b0725631e76e26ba0e315770bb4097196e1e388e142b4274e22bdc25ee39fd681a0c31614af1d0b41201126a58f6e3faeb2ea686c3bf2b3c421d56b37b8c43118e8d2faa1573e29e212bc0a04cf3fe68ecfcd1b1c6a0a12f3a02a73f5a49a8758424b23509957e713b157fada89098daf1593d442f689f3381a822cb0d74a54187b4201000fd40c49da703483f6933378f2f4c01bd359975544f1e4b5d07e71e1abd8b85fc4384b2db1e34303461666135353637336530626138353863326163633363663933643335353339376238633138MVRYV2; DSESSIONID=csr0j9mhepf2ts53uuu7tk7dmh321lo1d0b74pepkdpc714tnt8; s_fid=787D45EB02F7BD6C-051A599CEB07FCBB; s_cc=true; s_vi=[CS]v1|30348ACD0AB745F1-40001AC95CF126B9[CE]; SID_EN=5567393668d8504f9e50f0e086e2908655ad2b5ca8427342f3ad570efcffdbd2; asc_user=eyJsb2dpbiI6dHJ1ZX0=; s_pathLength=developer%3D4%2C; ADCDownloadAuth=HLHLiTsVVb%2BKEK0UtotiFwyNIJDl4VNZyENCeEtGxZy%2FDtm5yFFJREPfMjqroQUKB%2F1oKy0XUvOC%0D%0Apu2W10gj8qfzItUl8eJDz1i8F4prvWlChhMR5v7HYpoyET5wMEN8zan%2Bd1aUL1T0VwyWMSlNXeQo%0D%0AhjlxdSDklaJGGiwU%2B0W20h%2FU%0D%0A; s_sq=awdappledeveloper%3D%2526pid%253Dmore%252520software%252520downloads%2526pidt%253D1%2526oid%253Dhttps%25253A%25252F%25252Fdownload.developer.apple.com%25252FDeveloper_Tools%25252FXcode_12.3_Release_Candidate%25252FXcode_12.3_Release%2526ot%253DA' \
  --compressed
