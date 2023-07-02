# Changing master node types

As your project scales, you might have more and more workloads and nodes, which in turns, puts more load on your master nodes.

This guide will help demonstrate how to vertically scale your master node.

## Choose your new node type

Here are the k3s requirements:

<img width="415" alt="image" src="https://github.com/vitobotta/hetzner-k3s/assets/13921610/969128ac-560f-4f8d-81d2-26a970caed61">

## Steps

### Scale up your masters if you only have one

If you only have one master, you will need to have multiple ones of them in order to avoid interrupting your cluster.

This can be done by changing the amount of masters in your config file, and applying it with the `create` hetzner-k3s command.

You can also skip this step if you don't mind a bit of downtime.

### Rescaling your masters

For each node, sequentially apply the following procedure on the Hetzner Cloud Console.

1. Shut down the node.
2. Rescale it
3. Check that the node came back up
4. On the Hetzner Cloud Console, change the node with the appropriate node type (don't bother editing the hostname inside k8s or inside the node)
5. You're good to go!

### Editing your configuration

In your configuration, edit the master node type to the new one that you choose.
