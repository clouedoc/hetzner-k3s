# Changing master node types

As your project scales, you might have more and more workloads and nodes, which in turns, puts more load on your master nodes.

This guide will help demonstrate how to vertically scale your master node.

## Key points

- do not attempt to rename existing nodes
- gradually delete and replace your masters

## Choose your new node type

Here are the k3s requirements:

<img width="415" alt="image" src="https://github.com/vitobotta/hetzner-k3s/assets/13921610/969128ac-560f-4f8d-81d2-26a970caed61">


## Scale up your masters if you only have one

If you only have one master, you will need to have multiple ones to follow this procedure.

This can be done by changing the amount of masters in your config file, and applying it with the `create` hetzner-k3s command.

It is recommended to pick an uneven number of nodes.

## Remove all of your masters except one

1. Remove most of your masters on k8s
2. Remove the corresponding nodes on Hetzner cloud

## Recreate master nodes with the new type

In your configuration, edit the master node type to the new one that you choose.
Then, apply the changes

## Final touch - recreate leftover master nodes

1. Delete the leftover master nodes (k8s, Hetzner Cloud Console)
2. Reapply the configuration again, to recreate them
