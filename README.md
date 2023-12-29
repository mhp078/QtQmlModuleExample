
# Qt Qml Module Sample

In this project, we use qml modules in another project.

Cmake is used in this library.

[MyModule Folder](#mymodule-folder) \
[MyModuleTest Project](#mymoduletest-project) \
[Usage](#Usage)


# MyModule Folder

In this folder there are qml files that are supposed to be added as modules to our project.

# MyModuleTest Project

We do the following in the relevant files.

**CMakeLists.txt**

```
set(MY_MODULE_PATH "./MyModule")
set(QML_MY_MODULE
        ${MY_MODULE_PATH}/MyGreenRec.qml
        ${MY_MODULE_PATH}/MyRedRec.qml)

qt_add_qml_module(appMyModuleTest
    URI MyModuleTest
    VERSION 1.0
    QML_FILES
        ${QML_MY_MODULE}
        Main.qml
)
```

**Main.qml**

```
import "MyModule"
```

```
MyGreenRec
{
    x: 0
    y: 0
}
```
# Usage

We copy the MyModule folder to the project folder and now we can use them in our project.
