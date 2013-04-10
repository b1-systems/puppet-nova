class nova::compute::quantum (
  $libvirt_vif_driver = 'nova.virt.libvirt.vif.LibvirtHybridOVSBridgeDriver'
){

  nova_config {
    'DEFAULT/libvirt_vif_driver':             value => $libvirt_vif_driver;
    #'libvirt_vif_driver':             value => 'nova.virt.libvirt.vif.LibvirtHybridOVSBridgeDriver';
    'DEFAULT/libvirt_use_virtio_for_bridges': value => 'True';
    'DEFAULT/libvirt_ovs_bridge':             value => 'br-int';
    'DEFAULT/libvirt_vif_type':               value => 'ethernet';
  }
}
