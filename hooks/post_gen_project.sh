#!/bin/sh

########################################################
##################  HELPER FUNCTIONS  ##################
########################################################

removeLicense() {
  echo "Removing LICENSE file as project is unlicensed\n"
  rm -rf ./LICENSE
}

cleanupFiles() {
  local defaultPackageDir="packages/{{cookiecutter.__first_package_slug}}"
  local defaultSrcDir="src"
  [ "{{cookiecutter.is_mono_repo}}" == "True" ] && local targetDir=$defaultPackageDir || local targetDir=$defaultSrcDir

  echo "Moving files...\n"
  if [ "{{cookiecutter.is_mono_repo}}" == "True" ]; then
    mv ./src ./$targetDir
    rm -rf ./src
  else
    rm -rf ./packages
  fi

}

initProject() {
  echo "Initialising Git repository with created files..."
  git init
  git add .
  git commit -m "Init project"
}

#########################################################
####################  MAIN FUNCTION  ####################
#########################################################

echo "\n------------\nInit post-gen script...\n------------\n"

if [ "{{cookiecutter.project_license}}" == "None" ]; then
  removeLicense
fi

cleanupFiles
initProject

echo "\n------------\n...Post-gen script finished.\n\nOptionally run the setup scripts in the '{{cookiecutter.__project_slug}}/tools' folder.\n------------"
