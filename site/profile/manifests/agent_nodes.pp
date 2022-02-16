class profile::agent_nodes {
  include dockeragent 
  dockeragent::node {'web.pupper.vm':}
  dockeragent::node {'db.pupper.vm':}
}
