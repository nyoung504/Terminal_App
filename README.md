# Destinations Terminal App

## Installation and Setup
1. Install ruby. Suggested: Use [asdf](https://asdf-vm.com/)
2. Install git. https://git-scm.com/downloads
3. `git clone` to your home directory 
```bash
git clone https://github.com/nyoung504/Terminal_App ~/Terminal_app
```
4. Run the `setup` executable file

```bash
~/Terminal_app/bin/setup
```
5. Open bash profile 
 ```bash
 open ~/.bash_profile
```

6. Add the following: 
```bash
 export PATH=$PATH:$HOME/Terminal_app/bin
 ``` 
7. Restart terminal to ensure .bash_profile loads the app into your PATH

8. To run the app type 
 ```bash
 destinations
 ```