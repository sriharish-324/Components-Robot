function writeToFile(value) {
    var file = Qt.platform.os === "windows" ? "C:\\output.txt" : "/tmp/output.txt";
    var fileObj = Qt.createQmlObject('import Qt.labs.folderlistmodel 1.0; File { name: "file"; path: "' + file + '"; }', root);
    fileObj.open(QtQuick.LocalStorage.WriteOnly);
    fileObj.write(value);
    fileObj.close();
}
