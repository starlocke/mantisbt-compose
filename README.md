# Introduction

This is a docker-compose package to quickly get a development copy of MantisBT
up and running. All credentials and secrets in this file (if any) are purely
dummy values.

# Requirements

- Docker
- Docker-Compose
- Linux-like Host OS
- GitHub
  - It is expected that you're using GitHub with SSH keys.

# Starting up


```
# Clone
git clone --recurse-submodules git@github.com:starlocke/mantisbt-compose.git

# Change Directory
cd mantisbt-compose

# Populate the 'mantisbt/vendor' subdirectory (requires token, will be prompt you as needed)
./bootstrap.sh

# Launch
docker-compose up -d
```

Do basic administrative tasks:

- Navigate to http://localhost:10200/admin/install.php to install the database
    - Ensure that you clear all MANTISBT-related cookies for this domain in your browser,
      or use a "private session" for the same effect; or else, you may encounter an error
      where MantisBT's installer fails at creating all the tables because it attempts to
      validate the COOKIE-based authentication/credentials from a previous installation.
- Supply the dummy password: `password`
- Click the "Install/Upgrade Database" button.
- Navigate to the "login" page.
- The default user/pass is `administrator/root`
- Change the administrator's password to get rid of the warning/nagging.
- Select the "Manage" (gear icon) button from the left-side navigation pane.
    - You may be prompted for a password.
- Select the "Manage Projects" tab
- Create the first project
    - Fill in its info...
- Create the second project
    - Fill in its info...

Try using the querystring project-selector for some tasks:

- Reporting a bug
    - http://localhost:10200/bug_report_page.php?project_id=1
    - http://localhost:10200/bug_report_page.php?project_id=2
- Viewing issues
    - http://localhost:10200/view_all_bug_page.php?project_id=1
    - http://localhost:10200/view_all_bug_page.php?project_id=2
- My View
    - http://localhost:10200/my_view_page.php?project_id=1
    - http://localhost:10200/my_view_page.php?project_id=2
