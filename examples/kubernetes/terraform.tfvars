# Example building a Kubernetes cluster consisting of 4 virtual machines (1 control plane and 3 worker nodes).
vsphere_user       = "administrator@vsphere.local"
vsphere_password   = "password_here"
vsphere_server     = "server_here"
vsphere_datacenter = "Datacenter"
vsphere_cluster    = "Cluster"
vsphere_datastore  = "nvme"
vsphere_network    = "VM Network"

# Global template to apply to all virtual machines
vm_template_name   = "template-ubuntu-20.04-20211207"

virtual_machines = [
  {
    fqdn         = "c1-cp1.lab",
    cpu          = 2,
    memory       = 6144,
    ip           = "192.168.2.21/24",
    gateway      = "192.168.2.1",
    nameserver_1 = "192.168.2.1"
  },
  {
    fqdn         = "c1-node1.lab",
    cpu          = 4,
    memory       = 6144,
    ip           = "192.168.2.31/24",
    gateway      = "192.168.2.1",
    nameserver_1 = "192.168.2.1"
  },
  {
    fqdn         = "c1-node2.lab",
    cpu          = 4,
    memory       = 6144,
    ip           = "192.168.2.32/24",
    gateway      = "192.168.2.1",
    nameserver_1 = "192.168.2.1"
  },
  {
    fqdn         = "c1-node3.lab",
    cpu          = 4,
    memory       = 4096,
    ip           = "192.168.2.33/24",
    gateway      = "192.168.2.1",
    nameserver_1 = "192.168.2.1"
  }
]