# PHP-VERSION

Simple .BAT file with some commands to quickly change between multiple versions of php installed


## Configuration 🔧
First of all, you need to configure the file on the system variables;
After that, edit the .BAT file adjusting the **`directory`** variable to match the path of your php versions;
And that's all, you are ready to start. 🤓☝🏻

## Commands 💻

**`php-version -l`**<br /><br />
This command list all the *php* versions founded on the folder provided on the **``directory``** variable

---

**`php-version active {{version}}`**<br /><br />
This command changes the active version to the specified on the command;<br />
The version syntax assumes that your folder's name follows ``php74, php80, etc..``

Example: <br />
`php-version active 74`

