class nova::compute::quantum (
  $libvirt_vif_driver = 'nova.virt.libvirt.vif.LibvirtHybirdOVSBridgeDriver'
){

  nova_config {
    'libvirt_vif_driver':             value => $libvirt_vif_driver;
    #'libvirt_vif_driver':             value => 'nova.virt.libvirt.vif.LibvirtHybirdOVSBridgeDriver';
    'libvirt_use_virtio_for_bridges': value => 'True';
  }
}
