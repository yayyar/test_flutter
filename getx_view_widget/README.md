## GetView
If we have single controller as a dependency then we can use ``GetView``
Instead of StatelessWidget and avoid writing ``Get.find()``

## GetWidget
It is similar to ``GetView`` with one difference it gives the same instance of ``Get.find()`` everytime.
It become very useful when used in combination with ``Get.create()``