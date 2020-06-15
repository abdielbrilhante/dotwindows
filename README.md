In a powershell terminal, run (PC will be restarted automatically to enable WSL):

```powershell
& "init.ps1"
```

After restart, run downloaded Kernel update, and then run:

```powershell
& "config.ps1"
```

With WSL (2) now set up, download Ubuntu 20.04 from the Windows Store. Once finished, add root user and run:

```bash
bash init.sh
```

Close Ubuntu terminal and run in Powershell:

```powershell
wsl --shutdown
```

Finally, open a Ubuntu terminal to run:

```bash
bash config.sh
```
