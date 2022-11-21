# If a user needs to be removed from a server, move their public key file into this directory.
# After the key is moved here, commit the change to the repo and the 'Manager Users'
# workflow should run automatically.  That run will remove the user assocaited with
# the public key file placed in this directory.
# After that workflow run, the public key file can be deleted from the repo.

