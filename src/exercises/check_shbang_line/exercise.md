# Check shbang line

Given a folder name, go over all files in the folder. If the file is executable
then check that it has a correct `#!/bin/bash` first line. If not then create a new
file with the name `$old_file.new` with a correct shbang line and the old files content.

Create your input folder with scripts in it for testing purposes and this way make sure your script is correct.
