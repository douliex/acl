[custom]
;不要随意改变关键字，否则会导致出错
;acl4SSR规则


;直连
ruleset=🇨🇳直连,https://ghproxy.com/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/LocalAreaNetwork.list
;拦截
ruleset=🎯拦截,https://ghproxy.com/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanAD.list
;净化
ruleset=🎯拦截,https://ghproxy.com/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/BanProgramAD.list
;🇨🇳直连
ruleset=🇨🇳直连,https://ghproxy.com/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/GoogleCN.list
;直连
ruleset=🇨🇳直连,https://ghproxy.com/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Ruleset/SteamCN.list
;微软
ruleset=🖥微软,https://ghproxy.com/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Microsoft.list
;苹果
ruleset=🍎苹果,https://ghproxy.com/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Apple.list
;外媒
ruleset=☁️代理,https://ghproxy.com/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyMedia.list
;self_add
ruleset=☁️代理,https://ghproxy.com/https://raw.githubusercontent.com/douliex/acl/main/self_add.list
;电报
ruleset=☁️代理,https://ghproxy.com/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/Telegram.list
;代理
ruleset=☁️代理,https://ghproxy.com/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ProxyLite.list
;直连
ruleset=🇨🇳直连,https://ghproxy.com/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaDomain.list
;直连
ruleset=🇨🇳直连,https://ghproxy.com/https://raw.githubusercontent.com/ACL4SSR/ACL4SSR/master/Clash/ChinaCompanyIp.list
;ruleset=🇨🇳直连,[]GEOIP,LAN
ruleset=🇨🇳直连,[]GEOIP,CN
ruleset=🔗其他,[]FINAL

custom_proxy_group=☁️代理`select`[]♻️自动`[]DIRECT`.*
custom_proxy_group=🔗其他`select`[]DIRECT`[]☁️代理`[]🇨🇳直连
custom_proxy_group=🇨🇳直连`select`[]DIRECT`[]☁️代理
custom_proxy_group=🖥微软`select`[]♻️自动`[]DIRECT`.*
custom_proxy_group=🍎苹果`select`[]♻️自动`[]DIRECT`.*
custom_proxy_group=🎯拦截`select`[]REJECT`[]DIRECT`[]☁️代理
custom_proxy_group=♻️自动`url-test`.*`http://www.gstatic.com/generate_204`300,,50

enable_rule_generator=true
overwrite_original_rules=true
