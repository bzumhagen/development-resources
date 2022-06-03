
# Process
1. Setup [git-filter-repo](https://github.com/newren/git-filter-repo) tool. Install python3 if you don't have it already and run `pip3 install git-filter-repo`
    Make sure you install a 3.x version of python for all users and include it in your system path (these are options under custom in the installer for Python 3.9)
    run "git filter-repo -h" in an Admin Powershell to make sure it is installed
        if you get "Permission Denied" for python3, you may need to turn off app execution aliases: https://stackoverflow.com/questions/56974927/permission-denied-trying-to-run-python-on-windows-10
        if you get "no such file or directory" for python3, there literally needs to be a python3.exe in your Python folder, go to C:\Program Files\Python39 and copy python.exe to python3.exe
1. Clone destination repo
1. Clone source repo
1. Check out a new local branch -- (i.e. git checkout -B extraction)
1. Remove origin remote to avoid accidents -- `git remote remove origin`
1. Add origin to local destination repo -- `git remote add local <full local path to destination repo .git file>`
1. Filter to desired paths, exclude specific commits, and clean large files and binaries (see section below)
1. Push to local remote -- `git push -f --set-upstream local extraction`
1. Navigate to destination
1. Check out migrated branch
1. Verify history looks as expected
1. Cherry pick desired commits from destination master -- `git cherry-pick <oldest-commit-id>^..<latest-commit-id>`
1. Verify history looks as expected
1. Checkout master
1. Reset master to extraction branch -- `git reset --hard extraction`
1. Force push to destination master remote -- `git push -f origin/master`

# Filter Command

```
git filter-repo `
--path "path/to/directory/or/file/to/keep" `
--path "path/to/other/directory/or/file/to/keep" `
--commit-callback '
msg = commit.message.decode(\"utf-8\")
targets = [\"some commit I want to drop\"]
if any(target in msg for target in targets):
  commit.file_changes = []
' `
--strip-blobs-bigger-than 1M `
--force --prune-empty auto
```
