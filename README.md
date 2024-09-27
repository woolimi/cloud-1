# cloud-1

## Objectif

Cloud-1 is a DevOps project at Ecole 42, where we use Ansible and Docker to deploy our WordPress website to a cloud service.

## Local development

```bash
vagrant up
```

## ssh

```bash
# Create
ssh-keygen -t ed25519 -C "your comment on this key"
# Copy and send to the server you want to connect (~/.ssh/authorized_keys)
ssh-copy-id -i ~/.ssh/id_ed25519.pub [ip_address]
```

## Ansible commands

```bash
# Check local vm server connection
ansible -m ping local
```

## Resources

- [Ansible Tutorial](https://youtu.be/3RiVKs8GHYQ?si=kbrnWH_QItYJZ8Gs)
