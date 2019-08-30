#!/bin/bash

gen_signing_keys() {
  local subject='/C=TW/ST=Taiwan/L=Taoyuan/O=Android/OU=LineageOS/CN=Android/emailAddress=android@lineageos.org'

  mkdir signing-keys
  for key in releasekey platform shared media testkey
  do
    echo | development/tools/make_key signing-keys/$key "$subject" ec
  done
}

gen_signing_keys
