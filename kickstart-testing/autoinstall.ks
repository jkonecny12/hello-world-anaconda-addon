text
zerombr
bootloader --location=mbr
clearpart --all --initlabel
autopart
logging --level=debug
rootpw --plaintext rootpw
firewall --disabled
keyboard us
lang en_US
timezone --isUtc Europe/Prague
reboot

url --url=<SET-REPO-URL>

%addon org_fedora_payload_test
%end

%packages --ignoremissing
@core
%end

%post
if [ -f /usr/bin/vim ]; then
   echo "SUCCESS: vim installed in setup section" >> /root/RESULT
else
   echo "FAIL: setup section can't add vim" >> /root/RESULT
fi
%end
