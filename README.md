## SharpOffice

[![Build Status](https://travis-ci.org/SharpV/sharp_office.png?branch=master)](https://travis-ci.org/SharpV/sharp_office)

## Requirements

### Swftools

```
#不建议使用这种方法
sudo add-apt-repository ppa:guilhem-fr/swftools
sudo apt-get update
sudo apt-get install swftools
```
make it yourself
download:  http://www.swftools.org/download.html
```
tar -zvxf swftools-0.x.x.tar
cd swftools-0.x.x
./configure
make 
make install
```
可能会报错
```
rm：无效选项 -- o
Try 'rm --help' for more information.
make[1]: *** [install] 错误 1
```
编辑 swfs/Makefile 和 swfs/Makefile.in两个文件
找到 rm 命令，去掉后面的 -o -L 保存，再次install即可

### LibreOffice https://wiki.ubuntu.com/LibreOffice

```　 
sudo apt-get install python-software-properties
sudo apt-add-repository ppa:libreoffice/libreoffice-4-0
sudo apt-get install libreoffice
```

### ImageMagick

```
sudo apt-get install imagemagick libmagickcore-dev gs
```

## Installation

Add this line to your application's Gemfile:

    gem build sharp_office.gemspec

And then execute:

    $ gem install ./sharp_office-1.0.1.gem

## Usage

``` ruby
require 'sharp_office'

SharpOffice.process('/Users/apple/Documents/test.doc')
=> {:status=>"ok", :pdf_path=>"/Users/apple/Documents/test-doc.pdf", :swf_path=>"/Users/apple/Documents/test-doc.swf", :cover_path=>"/Users/apple/Documents/test-doc.png"} 

SharpOffice.process('/Users/apple/Documents/test.doc', {pages: '1-20'})
=> {:status=>"ok", :pdf_path=>"/Users/apple/Documents/test-doc.pdf", :swf_path=>"/Users/apple/Documents/test-doc.swf", :cover_path=>"/Users/apple/Documents/test-doc.png"} 

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
