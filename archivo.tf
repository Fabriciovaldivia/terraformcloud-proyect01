terraform { 
  cloud { 
    
    organization = "org-fabricio" 

    workspaces { 
      name = "proyecto01-workspace" 
    } 
  } 
}