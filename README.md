# ansible-manage-users
Ansible playbook and role to manage users and their public SSH keys.

## Configure GitHub

_Coming soon..._

## Configure Your Jump Host Account

_These instructions assume you're using a local workstation with a terminal (for example, iTerm on Mac or WSL on Windows)._

1. Pull this repo.
1. Add a public key to `./user_keys/USER_NAME` where `USER_NAME` is the ID you will use for SSH access and the contents of the file are your public key.
1. Commit the changes to the repo. Be sure to include a detailed commit message.
1. Confirm the account was added by checking the latest run of the "Manage Users" workflow on the [Actions tab]().
  1. Under "Workflows", click "Manage Users".
  1. Click the link under the latest run (it should have the text from your commit message).
  1. Clik the "build" icon in the middle or the "build" text on the left.
  1. In the build output, expand the text under "Run Ansible Playbook".
  1. Review the output to confirm that the account was added correctly.
1. Create an SSH config by adding the following to `~/.ssh/config` on your local system, replacing *USER_NAME* with the name used in the previous steps and *PRIVATE_KEY* with the path to your private SSH key:

    ```
    Host *.example.com
        User USER_NAME
        IdentityFile ~/.ssh/PRIVATE_KEY
        IdentitiesOnly yes
        StrictHostKeyChecking no
    ```

1. Validate your configuration by connecting via SSH:

    ```
    ssh hostname.example.com
    ```

# Configure SSH Tunneling

_Coming soon..._

- [pgAdmin](docs/PGADMIN.md)
- [DataGrip](docs/DATAGRIP.md)
- [Other Applications](docs/OTHER_APPS.md)

