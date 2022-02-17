class profile::agent_nodes {
  include dockeragent 
  dockeragent::node {'web.pupper.vm':}
  dockeragent::node {'db.pupper.vm':}
  host {'web.puppet.vm':
    ensure => present,
    ip     => '172.18.0.2'
  }
  host {'db.puppet.vm':
    ensure => present,
    ip     => '172.18.0.3'
  }
}
