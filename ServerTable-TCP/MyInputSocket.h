#ifndef MYINPUTSOCKET_H
#define MYINPUTSOCKET_H

#include <QObject>
#include<QDebug>
#include<QTcpServer>
#include<QTcpSocket>

class MyInputSocket : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString recvdText READ recvdText WRITE setRecvdText NOTIFY recvdTextChanged)
    Q_PROPERTY(QString recvdyText READ recvdyText WRITE setRecvdyText NOTIFY recvdyTextChanged)
    Q_PROPERTY(QString recvdzText READ recvdzText WRITE setRecvdzText NOTIFY recvdzTextChanged)


public:
    explicit MyInputSocket(QObject *parent = nullptr);
    Q_INVOKABLE void sendData(QString value);

    void Connect();
    QString readData();
    void ConnectY();
    QString readDataY();
    void ConnectZ();
    QString readDataZ();

    const QString &recvdText() const;
    void setRecvdText(const QString &newRecvdText);
    const QString &recvdyText() const;
    void setRecvdyText(const QString &newRecvdyText);
    const QString &recvdzText() const;
    void setRecvdzText(const QString &newRecvdzText);

private:
    QTcpSocket *socket;
    QString m_recvdText;
    QTcpSocket *socketY;
    QString m_recvdTexty;
    QTcpSocket *socketZ;
    QString m_recvdTextz;

signals:
    void recvdTextChanged();
    void recvdyTextChanged();
    void recvdzTextChanged();

};

#endif // MYINPUTSOCKET_H
