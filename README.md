# Rails-Startup Application

`Rails-Startup` is designed to help developers write Ruby on Rails (_Rails_) applications within the _nys-its_. The Rails-Startup `code` can be used (i) to fast-track Rails application development, or (ii) as a template that you can use in your own applications. 

This README references pages in the `Rails-Toolkit Wiki` that give more detail on each of the `versions` that make up the `master` branch. (The Rails-Toolkit [Wiki](https://github.com/nys-its/rails-toolkit/wiki) itself contains more than `Rails-Startup` information and is a resource for information on learning Rails, and becoming part of the _ITS-Rails_ programming community.)

**Requirements:** This setup is designed for _Rails_ v4.0.2, _Ruby_ v2.0.0. (Developers using Windows-RailsInstaller setup are constrained to _Ruby_ v2.0.0. **Don't install _Rails_ >= v4.1** as it requires _Ruby_ >= v2.1)

### How to Use `Rails-Startup`
##### Fast-track your _Rails_ application development
* Clone `Rails-Startup` to your machine's 'projects' folder. 
* `Basic Configuration`
  * If you want to use all of the basic configuration, do nothing more, leave `head` at v0.05. Basic configuration includes the following installed and configured: home page, testing gems, debugging gems, mobile first responsive design gem, secret file.
  * If you want some, but not all, of the 'basic configuration' you can `checkout` the appropriate `tag` on the `master` branch. You will get cumulatively more `basic configuration` as you `checkout` `tags` from v0.01 through v0.05.
    * [v0.01](https://github.com/nys-its/rails-toolkit/wiki/v0.01-StaticPages-Home-Page) Static Pages tag - Home Page, README.md (.rdoc converted to .md)
    * [v0.02](https://github.com/nys-its/rails-toolkit/wiki/v0.02-Testing) Testing tag - RSpec, Capybara, Spork, FactoryGirl
    * [v0.03](https://github.com/nys-its/rails-toolkit/wiki/v0.03-Debugging) Debugging tag - ByeBug, BetterErrors, RailsPanel
    * [v0.04](https://github.com/nys-its/rails-toolkit/wiki/v0.04-Mobile Responsive) Mobile First Responsive Design tag - Zurb Foundation
    * [v0.05](https://github.com/nys-its/rails-toolkit/wiki/v0.05-Secret File) Supports a _secret file_ on server for sensitive information
* `Specific Functionality` 
  * Will be added over time as useful functional needs are identified
  * Will be found on `branches`. Every `branch` will be a child of `v0.04`.
  * To get the `specific function` on your machine, `checkout` `master` and merge the appropriate `branch`.

##### Use code as a template that you can use in your own applications
* Clone `RAILS-poc` to your machine's 'code' folder.
* View code in editor

**DESKTOP VIEW   v0.04 Home Page with Mobile Responsive Navigation**

![railsmobilehome](https://cloud.githubusercontent.com/assets/6201245/3870016/9e62ca40-20b6-11e4-8e83-f6f871b5143b.png)

**PHONE VIEW   v0.04 Home Page with Mobile Responsive Navigation**

![railsmobilesize2](https://cloud.githubusercontent.com/assets/6201245/3869823/7d64e48a-20a8-11e4-8e0a-9ed1f9bf035e.png)

