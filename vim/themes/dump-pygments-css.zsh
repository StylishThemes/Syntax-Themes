#!/bin/zsh
# =============================================================================
#
# Name: dump-pygments-css.zsh
# Version: 1.00
# Created: 2011-10-14
# Description:
#
# This script will generate individual CSS files in the specified directory
# for all styles supported by Pygments.
#
# Internal Dependencies: zsh, pygments
# External Dependencies: None
#
# Script_URI: https://github.com/mhutchin/dump-pygments-css
#
# Author: Michael Hutchinson
# Author URI: http://mhutchinson.com
#
# The error_out and wrap_* functions are inspired by the
# Web script by Andre Hook, http://thehook.eu/tools/nweb/
# =============================================================================
# Usage
# =============================================================================
#
# Just specify the directory where you want all of the generated CSS files to 
# be created.
#
# ./dump-pygments-css.zsh DIRECTORY_FOR_GENERATED_CSS_FILES
#

# =============================================================================
# License and copyright
# =============================================================================

# Copyright(c)2011 Michael Hutchinson http://mhutchinson.com
# Licensed under the MIT license
# http://creativecommons.org/licenses/MIT/
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
# =============================================================================

# Exit the script if any statement returns a non-true return value
set -e

# Check for uninitialized variables
set -u

# =============================================================================
# Set some variables and define some helper functions
# =============================================================================

# Directory where this script is located
BASEDIR="$(dirname $0)"

# Exit with error message ($1)
# https://github.com/craigbarnes/ubuntu-kickstart/blob/master/kickstart-desktop.sh
abort() {
  echo "ERROR: $1" 1>&2;
  exit 1;
}

error_out() {
  echo "Could not ${1}, aborting"
  exit 1
}

warning_out() {
  echo "Warning: ${1}, warning"
}

wrap_and_continue_on_error() {
  local ErrorMsg="$1"
  shift
  local cmd="$1"
  shift
  $cmd "$@" || warning_out "$ErrorMsg"
}

wrap_and_fail_on_error() {
  local ErrorMsg="$1"
  shift
  local cmd="$1"
  shift
  $cmd "$@" || error_out "$ErrorMsg"
}

# =============================================================================
# Custom functions and aliases
# =============================================================================

check_for_required_directory_specification() {
  # If no arguments were passed on the command line, then bail.
  if [[ ${#} -eq 0 ]]; then
    abort "No directory specified for the generated CSS files."
  else
    TMPDIR=${argv[1]}
  fi 
}

build_list_of_pygments_styles() {
  STYLES=()
  for ipyg in $(pygmentize -L styles | grep "*" | sed 's/\* //' | sed 's/://')
  do
    STYLES+=$ipyg
  done
  echo "Number of styles found: ${#STYLES[*]}"
}

generate_new_tmpdir() {
  mkdir $TMPDIR
}

check_for_existing_tmpdir() {
  if [[ -d $TMPDIR ]]
  then
    abort "The directory specified already exists."
  else
    generate_new_tmpdir
  fi 
}

process_styles() {
  for i in $STYLES; do
    echo "Generating CSS file for $i..."
    pygmentize -S $i -f html > $TMPDIR/$i.css 
  done
}

# =============================================================================
# The magic starts here
# =============================================================================

check_for_required_directory_specification $# $argv

wrap_and_fail_on_error "Building list of Pygments styles..." \
  build_list_of_pygments_styles

wrap_and_fail_on_error "Creating new object directory..." \
  check_for_existing_tmpdir

wrap_and_continue_on_error "Generating CSS files..." \
  process_styles
