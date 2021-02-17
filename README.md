# ATProjectGenerator
=============

ATProjectGenerator - simple way to create own project template

## Installation

- Download ApplicationName zip or clone
- Install CocoaPods if not already available:

``` bash
$ [sudo] gem install cocoapods
$ pod setup
```
## Start

To create own template you need only to design project in Xcode
- Create new project and name it 'ApplicationName'
- Configure whatever you want
- Install pods
Your template is ready!

## ATProjectGenerator usage

Firs way is to enter all data as one common command like
``` bash
$ sh ATProjectGenerator.sh ./ATiOSProjectTemplate/ /path/you/would/like/project/to/put ProjectName 'Author Name'
```
Second way is to enter all of the paramms separately like
``` bash
$ sh ATProjectGenerator.sh 
Enter path to template folder: ./ATiOSProjectTemplate/ 
Enter path to target folder: /path/you/would/like/project/to/put 
Enter project name: ProjectName 
Enter the author name: 'Author Name'
```
Then you will see finder window with open project directory and message
	🎉	Project was successfully generated!	🎉

P.S. in current version ATProjectGenerator can not refresh comments with author automaticaly, but it will be able soon...

## License

TagsList is available under the MIT license. See the LICENSE file for more info.
