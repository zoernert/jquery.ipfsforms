# jquery.ipfsforms
jQuery Plugin to persist selectable form data into IPFS (and retrieve Hash)

## Overview
The jQuery IPFS Plugin allows you to easily and unobtrusively persist forms into [IPFS](https://ipfs.io). The main method, `persist()`, will simply retrieve the value of selected  form elements, build a JSON object and publish it to IPFS. For retrieval of persisted data you might either use the JSON object directly from IPFS, or use `$.loadIPFS` and `$.fillIPFS` to get form fields filled again.

## Requirements
Requires jQuery 1.7.2 or later. Compatible with jQuery 2.x.x and 3.x.x.

## Installation

### Download

### CDN 


## Usage

Given HTML Code:
```html
<label for="field1">Field1</label>
<input type="text" id="field1" class="form-control">			
<h3>Anschrift</h3>
<label for="field2">Field2</label>
<input type="text" id="field2" class="form-control">
```

persist selector /form-control/

```js
$('.form-control').persist();
```

After calling persist you will see a new attribute added to each selected field having an IPFS hash. In addition you might add another input field with id ipfs-hash:

```html
	<input type="text" id="ipfs-hash">
```

To retriev data from an IPFS Hash and auto fill form fields again 

```js
$.loadIPFS('YOURIPFSHASH');
```

*NOTE* Please make your self familiar with IPFS as you persist localy and data might be only available as long as the page is open. Alternative you might setup an IPFS infrastructure (daemon) which will persist all your data an pin it. However this is not in scope of this README.

## Community
Want to contribute to jQuery Persist Plugin? Awesome! See [CONTRIBUTING](CONTRIBUTING.md) for more information. So far this plugin was mainly developed to support [STROMDAO](https://stromdao.de) decentralized applications for energy markets.

### Constributors
 - Thorsten Zoerner <thorsten.zoerner@stromdao.de> 

### Code of Conduct
Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md) to ensure that this project is a welcoming place for **everyone** to contribute to. By participating in this project you agree to abide by its terms.


## License

This project is dual licensed under the MIT licenses:

* [MIT](LICENSE-MIT)
