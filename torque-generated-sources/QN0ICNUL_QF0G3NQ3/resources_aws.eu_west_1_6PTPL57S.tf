resource "aws_ebs_volume" "qualidev_dynamic_pvc_c17037aa_8ad0_4fae_8eb6_15f158c75187" {
  tags = {
    CSIVolumeName = "pvc-c17037aa-8ad0-4fae-8eb6-15f158c75187"
    KubernetesCluster = "qualidev"
    Name = "qualidev-dynamic-pvc-c17037aa-8ad0-4fae-8eb6-15f158c75187"
    "ebs.csi.aws.com/cluster" = "true"
    "kubernetes.io/cluster/qualidev" = "owned"
    "kubernetes.io/created-for/pv/name" = "pvc-c17037aa-8ad0-4fae-8eb6-15f158c75187"
    "kubernetes.io/created-for/pvc/name" = "var-lib-docker-cs2018-dockerize-mb8b4-0"
    "kubernetes.io/created-for/pvc/namespace" = "actions-runner-system"
  }
  tags_all = {
    CSIVolumeName = "pvc-c17037aa-8ad0-4fae-8eb6-15f158c75187"
    KubernetesCluster = "qualidev"
    Name = "qualidev-dynamic-pvc-c17037aa-8ad0-4fae-8eb6-15f158c75187"
    "ebs.csi.aws.com/cluster" = "true"
    "kubernetes.io/cluster/qualidev" = "owned"
    "kubernetes.io/created-for/pv/name" = "pvc-c17037aa-8ad0-4fae-8eb6-15f158c75187"
    "kubernetes.io/created-for/pvc/name" = "var-lib-docker-cs2018-dockerize-mb8b4-0"
    "kubernetes.io/created-for/pvc/namespace" = "actions-runner-system"
  }
  availability_zone = "eu-west-1b"
  iops = 3000
  size = 50
  throughput = 125
  type = "gp3"
  provider = aws.eu_west_1
}