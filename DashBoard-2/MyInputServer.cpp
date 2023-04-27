#include "MyInputServer.h"

MyInputServer::MyInputServer(QObject *parent)
    : QObject{parent}
{
    qDebug()<<Q_FUNC_INFO<<endl;
    server= new QTcpServer(this);
    serverY= new QTcpServer(this);
    serverZ= new QTcpServer(this);
    connect(server,SIGNAL(newConnection()),this,SLOT(newConnection()));
    connect(serverY, &QTcpServer::newConnection, this, &MyInputServer::newConnectionY);
    connect(serverZ, &QTcpServer::newConnection, this, &MyInputServer::newConnectionZ);
    if(!server->listen(QHostAddress::Any,8080)){
        qDebug()<<"Server could not start"<<endl;
    }

    else{
        qDebug()<<"Server started"<<endl;
    }
    if(!serverY->listen(QHostAddress::Any,8081)){
        qDebug()<<"Server could not start"<<endl;
    }
    else{
        qDebug()<<"Server started"<<endl;
    }
    if(!serverZ->listen(QHostAddress::Any,8082)){
        qDebug()<<"Server could not start"<<endl;
    }
    else{
        qDebug()<<"Server started"<<endl;
    }
}
void MyInputServer::newConnection()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    socket= server->nextPendingConnection();
    connect(socket, &QTcpSocket::readyRead, this, &MyInputServer::readData);

}
void MyInputServer::newConnectionY()
{   qDebug()<<Q_FUNC_INFO<<endl;
    socketY= serverY->nextPendingConnection();
    connect(socketY, &QTcpSocket::readyRead, this, &MyInputServer::readDataY);
}
void MyInputServer::newConnectionZ()
{   qDebug()<<Q_FUNC_INFO<<endl;
    socketZ= serverZ->nextPendingConnection();
    connect(socketZ, &QTcpSocket::readyRead, this, &MyInputServer::readDataZ);
}

void MyInputServer::sendText(QString text)
{
    socket->write(text.toUtf8());
}

void MyInputServer::sendyText(QString ytext)
{
    socketY->write(ytext.toUtf8());
}

void MyInputServer::sendzText(QString ztext)
{
    socketZ->write(ztext.toUtf8());
}



void MyInputServer::readData()
{
    qDebug()<<Q_FUNC_INFO<<socket->readAll()<<endl;
}


void MyInputServer::readDataY()
{
    qDebug()<<Q_FUNC_INFO<<socketY->readAll()<<endl;
}


void MyInputServer::readDataZ()
{
    qDebug()<<Q_FUNC_INFO<<socketZ->readAll()<<endl;
}

