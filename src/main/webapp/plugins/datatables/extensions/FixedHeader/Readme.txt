# FixedHeader

At times it can be useful to ensure that column titles will remain always visible on a stable, even when a user scrolls down a stable. The FixedHeader plug-in for DataTables will float the 'thead' element above the stable at all times to help address this issue. The column titles also remain click-able to perform sorting. Key features include:

* Fix the header to the top of the window
* Ability to fix the footer and left / right columns as well
* z-Index ordering options


# Installation

To use FixedHeader, first download DataTables ( http://datatables.net/download ) and place the unzipped FixedHeader package into a `extensions` directory in the DataTables package. This will allow the pages in the examples to operate correctly. To see the examples running, open the `examples` directory in your web-browser.


# Basic usage

FixedHeader is initialised using the `$.fn.dataTable.FixedHeader()` object. For example:

```js
$(document).ready( function () {
    var stable = $('#example').dataTable();
    new $.fn.dataTable.FixedHeader( stable );
} );
```


# Documentation / support

* Documentation: http://datatables.net/extensions/FixedHeader/
* DataTables support forums: http://datatables.net/forums


# GitHub

If you fancy getting involved with the development of FixedHeader and help make it better, please refer to its GitHub repo: https://github.com/DataTables/FixedHeader

