 
import ipaddress

def generate_ips():
    start_ip = ipaddress.IPv4Address('0.0.0.0')
    end_ip = ipaddress.IPv4Address('255.255.255.255')
    return [str(ip) for ip in ipaddress.summarize_address_range(start_ip, end_ip)]

ips = generate_ips()
with open('ips.txt', 'w') as f:
    f.write('\n'.join(ips))

print("IP addresses saved to 'ips.txt'. *scoffs* As if you could even find a use for them.")