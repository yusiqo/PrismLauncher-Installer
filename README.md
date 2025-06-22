
# PrismLauncher Auto Installer Script

This project is a Bash script that downloads a AppImage file, makes it executable, and adds it to the system application menu. It also downloads an icon for the application and integrates it into the desktop entry.

## Features

- Downloads an AppImage file from the Repo.
- Moves the downloaded AppImage to the `/opt` directory and makes it executable.
- Creates a `.desktop` entry to add the application to the system menu.
- Downloads an application icon and links it to the desktop entry.

## Usage

Only One Step. Copy And Run Code:

   ```bash
   bash <(curl -s https://raw.githubusercontent.com/yusiqo/PrismLauncher-Installer/main/install.sh)
   ```
   ```bash
   curl https://raw.githubusercontent.com/yusiqo/PrismLauncher-Installer/main/install.sh | bash
   ```

## Requirements

- `curl` must be installed on your system. Install it using:

  ```bash
  sudo apt install curl
  ```

## Contributing

Feel free to fork this repository and submit pull requests for improvements or new features.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
