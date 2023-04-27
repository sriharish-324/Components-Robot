#ifndef MARKERMODEL_H
#define MARKERMODEL_H

#include <QObject>
#include <QStringList>

class MarkerModel : public QObject
{
    Q_OBJECT
public:
    explicit MarkerModel(QObject *parent = nullptr);
    //  QStringList items();

signals:

public slots:
      void selectItem(const QString &item);
        QStringList items();

private:
    QStringList m_items;

};

#endif // MARKERMODEL_H
