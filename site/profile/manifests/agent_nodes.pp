class profile::agent_nodes {
  include dockeragent 
  dockeragent {'web.pupper.vm':}
  dockeragent {'db.pupper.vm':}
}
