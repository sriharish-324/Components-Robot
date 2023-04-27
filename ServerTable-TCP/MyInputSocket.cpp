#include "MyInputSocket.h"

MyInputSocket::MyInputSocket(QObject *parent)
    : QObject{parent}
{
    qDebug()<<Q_FUNC_INFO<<endl;
    Connect();
    ConnectY();
    ConnectZ();
    //qDebug()<<"the rcvd text is: "<<m_recvdText<<endl;
}

void MyInputSocket::sendData(QString value)
{
      socket->write(value.toUtf8());
}

QString MyInputSocket::readData()
{
    this->setRecvdText(socket->readAll());
    emit recvdTextChanged();
    return socket->readAll();
}
QString MyInputSocket::readDataY()
{
    this->setRecvdyText(socketY->readAll());
    emit recvdyTextChanged();
    return socketY->readAll();
}
QString MyInputSocket::readDataZ()
{
    this->setRecvdzText(socketZ->readAll());
    emit recvdzTextChanged();
    return socketZ->readAll();
}

const QString &MyInputSocket::recvdText() const
{
    return m_recvdText;
}
const QString &MyInputSocket::recvdyText() const
{
    return m_recvdTexty;
}
const QString &MyInputSocket::recvdzText() const
{
    return m_recvdTextz;
}

void MyInputSocket::setRecvdText(const QString &newRecvdText)
{
    m_recvdText = newRecvdText;
}
void MyInputSocket::setRecvdyText(const QString &newRecvdyText)
{
    m_recvdTexty = newRecvdyText;
}
void MyInputSocket::setRecvdzText(const QString &newRecvdzText)
{
    m_recvdTextz = newRecvdzText;
}




void MyInputSocket::Connect()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    socket = new QTcpSocket(this);
    socket->connectToHost("localhost",8080);
    if(socket->waitForConnected(1000))
    {
        qDebug() <<"Connected"<<endl;
        socket->waitForReadyRead(1000);
    }
    else
    {
        qDebug()<<"Not Connected"<<endl;
    }
    connect(socket,&QTcpSocket::readyRead,this,&MyInputSocket::readData);
}
void MyInputSocket::ConnectY()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    socketY = new QTcpSocket(this);
    socketY->connectToHost("localhost",8888);
    if(socketY->waitForConnected(1000))
    {
        qDebug() <<"Connected"<<endl;
        socketY->waitForReadyRead(1000);
    }
    else
    {
        qDebug()<<"Not Connected"<<endl;
    }
    connect(socketY,&QTcpSocket::readyRead,this,&MyInputSocket::readDataY);
}
void MyInputSocket::ConnectZ()
{
    qDebug()<<Q_FUNC_INFO<<endl;
    socketZ = new QTcpSocket(this);
    socketZ->connectToHost("localhost",8082);
    if(socketZ->waitForConnected(1000))
    {
        qDebug() <<"Connected"<<endl;
        socketZ->waitForReadyRead(1000);
    }
    else
    {
        qDebug()<<"Not Connected"<<endl;
    }
    connect(socketZ,&QTcpSocket::readyRead,this,&MyInputSocket::readDataZ);
}

