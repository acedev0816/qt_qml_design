#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>

class BackEnd : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString userName READ userName WRITE setUserName NOTIFY userNameChanged)
public:
    explicit BackEnd(QObject *parent = nullptr);
    void setUserName(QString userName);
    QString userName();
    Q_INVOKABLE void showDiagnotics();
private:
    QString m_userName;
signals:
    void userNameChanged();

};

#endif // BACKEND_H
