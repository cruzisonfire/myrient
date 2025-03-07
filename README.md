# Myrient

A command-line utility to download and extract zip files from directory listings on the web.

## Description

Myrient is a bash script that simplifies the process of downloading multiple zip files from a web directory. It automatically:

1. Scans a given URL for all available .zip files
2. Downloads all found zip files using aria2 for faster multi-connection downloads
3. Extracts the contents of each zip file
4. Organizes files in appropriate folders (creates a folder for zips with multiple files)
5. Removes the original zip files to save space

This tool is particularly useful for bulk downloading resources, datasets, templates, or any collection of zip-archived files available via HTTP/HTTPS.

## Features

- **Fast Downloads**: Uses aria2 for multi-connection, parallel downloads
- **Smart Extraction**: Automatically creates folders for multi-file archives
- **Space Efficient**: Removes zip files after successful extraction
- **Simple Interface**: Easy to use with minimal arguments required
- **Resumable**: Supports continuing interrupted downloads

## Requirements

- bash
- aria2
- wget
- unzip

## Installation

### From AUR (Arch User Repository)

If you're using Arch Linux or an Arch-based distribution:

```bash
yay -S myrient
# or
paru -S myrient
```

### Manual Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/myrient.git
   cd myrient
   ```

2. Make the script executable:
   ```bash
   chmod +x myrient
   ```

3. Install to your path (optional):
   ```bash
   sudo cp myrient /usr/local/bin/
   ```

## Usage

```
myrient <URL> [Download_Directory]
```

### Arguments

- `URL`: The web address containing zip files to download (required)
- `Download_Directory`: The directory to save and extract files to (optional, defaults to current directory)

### Examples

Download all zip files from a web directory to the current folder:
```bash
myrient https://example.com/files/
```

Download all zip files to a specific directory:
```bash
myrient https://example.com/resources/ ~/Downloads/resources
```

## How It Works

1. Uses wget to fetch the directory listing from the specified URL
2. Parses the HTML to find all zip file links
3. Creates a download list for aria2
4. Downloads all files in parallel
5. Extracts each zip file:
   - If the zip contains only one file, extracts directly to the target directory
   - If the zip contains multiple files, creates a folder named after the zip file
6. Removes the original zip files after successful extraction
7. Cleans up temporary files

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the license file for details.
