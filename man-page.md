# MYRIENT(1) User Manual

## NAME
myrient - download and extract zip files from web directory listings

## SYNOPSIS
**myrient** \<URL\> [Download_Directory]

## DESCRIPTION
**myrient** is a utility that downloads all zip files from a specified URL, extracts their contents, and optionally removes the original zip files. It uses aria2 for faster, parallel downloads and handles organization of extracted files based on zip content.

## OPTIONS
**\<URL\>**
    The web address containing zip files to download (required)

**[Download_Directory]**
    The directory to save and extract files to (optional, defaults to current directory)

## EXAMPLES
Download all zip files from a web directory to the current folder:

    myrient https://example.com/files/

Download all zip files to a specific directory:

    myrient https://example.com/resources/ ~/Downloads/resources

## DEPENDENCIES
- aria2
- wget
- unzip

## EXIT STATUS
**0**
    Success

**1**
    Error (missing URL argument, no zip files found, download error)

## AUTHOR
Your Name <your.email@example.com>

## REPORTING BUGS
Report bugs at: https://github.com/yourusername/myrient/issues

## COPYRIGHT
Copyright © 2025 Your Name.
License MIT: MIT License <https://opensource.org/licenses/MIT>
