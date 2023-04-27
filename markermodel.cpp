#include "markermodel.h"
#include <QDebug>

MarkerModel::MarkerModel(QObject *parent)
    : QObject{parent}
{
  m_items << "Add Marker" << "marker 1" << "marker 2";
}

QStringList MarkerModel::items()
{
    return m_items;
}
void MarkerModel::selectItem(const QString &item)
{
    // This function is called whenever the user selects an item from the combo box
    qDebug() << items();
    qDebug() << "Selected item:" << item;
}
