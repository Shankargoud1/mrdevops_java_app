
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-003ffd677c31f2c6c","subnet-02250855a2197380b","subnet-066f8c820f3282b29"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "myeksnode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-003ffd677c31f2c6c","subnet-02250855a2197380b","subnet-066f8c820f3282b29"]

        tags = {
             "Name" =  "node1"
         } 
  }
}