// This file is controlled by Puppet.
// DO NOT EDIT!!!

function FindProxyForURL(url, host) {
   // Adressen, die auf example.com liegen, brauchen keinen Proxy:
   if (shExpMatch(host,"*.domain.com")) {
      return "DIRECT";
   }

   // URLs innerhalb dieses Netzwerkes werden abgefragt über
   // Port 8080 auf fastproxy.example.com: (macht Nameserver Anfrage)
   if (isInNet(host, "192.168.1.0", "255.255.255.0")) {
      return "DIRECT";
   }

   // Alle anderen Anfragen gehen über Port 8000 von proxy.example.com.
   // sollte das fehlschlagen, verbinde direkt ins Netz:
   return "PROXY proxy:3128;";
}
