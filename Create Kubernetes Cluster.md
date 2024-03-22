# Enable iptables Bridged Traffic on all the Nodes:
Execute the following commands on all the nodes for IPtables to see bridged traffic.
Here we are tweaking some kernel parameters and setting them using sysctl
```
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF
```

