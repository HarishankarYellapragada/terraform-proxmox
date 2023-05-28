resource "proxmox_lxc" "basic" {
    target_node = "pragada"
    hostname    = "lxc-clone"
    #id of lxc container to clone
    clone       = "104"
  # start the container after creation
    start       = true

}
