# ATProjectGenerator


### ATProjectGenerator - simple way to create own project template
### Main advantage is possibility to run, test and modify your template quickly and simple

## Installation

- Download ApplicationName zip or clone
- Install CocoaPods if not already available:

``` bash
$ [sudo] gem install cocoapods
$ pod setup
```
---
## Start

To create own template you need only to design project in Xcode
- Create new project and name it 'ApplicationName'
- Configure whatever you want
- Install pods

### Your template is ready!

<em>Note: ATProjectGenerator can refresh comments with author automatically: every standard comment lines with developer name like<em/>
``` Swift
//  Created by Anton Tekutov on 17.02.21.
```
<em>will be replaced by name you just entered and current date<em/>

---
## ATProjectGenerator usage

Firs way is to enter all data as one common command like
``` bash
sh ATProjectGenerator.sh ./ATiOSProjectTemplate/ /path/you/would/like/project/to/put ProjectName 'Author Name'
```
Second way is to enter all of the paramms separately like
``` bash
sh ATProjectGenerator.sh 
Enter path to template folder: ./ATiOSProjectTemplate/ 
Enter path to target folder: /path/you/would/like/project/to/put 
Enter project name: ProjectName 
Enter the author name: 'Author Name'
```
Then you will see finder window with open project directory and message
``` bash
	🎉	Project was successfully generated!	🎉
```
---
## License

ATProjectGenerator is licensed under the terms of the [Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html). Please see the [LICENSE](LICENSE) file for full details.
