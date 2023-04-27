#ifndef MYINPUTSERVER_H
#define MYINPUTSERVER_H

#include <QObject>
#include<QDebug>
#include<QTcpServer>
#include<QTcpSocket>

class MyInputServer : public QObject
{
    Q_OBJECT
public:
    explicit MyInputServer(QObject *parent = nullptr);
    Q_INVOKABLE void sendText(QString text);
    Q_INVOKABLE void sendyText(QString ytext);
    Q_INVOKABLE void sendzText(QString ztext);
    Q_INVOKABLE void input_speed(QString in_v);
    Q_INVOKABLE void output_speed(QString out_V);


public:
    QTcpServer *server;
    QTcpSocket *socket;
    QTcpServer *serverY;
    QTcpSocket *socketY;
    QTcpServer *serverZ;
    QTcpSocket *socketZ;
signals:
public slots:
    void readData();
    void newConnection();
    void readDataY();
    void newConnectionY();
    void readDataZ();
    void newConnectionZ();


};

#endif // MYINPUTSERVER_H
