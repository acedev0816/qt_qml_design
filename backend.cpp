#include "backend.h"
#include <QtWidgets>
#include <QQmlApplicationEngine>
extern QQmlApplicationEngine *g_engine;
BackEnd::BackEnd(QObject *parent) : QObject(parent)
{
    int a = 0;
}
void BackEnd::setUserName(QString userName)
{
    if(m_userName == userName) return;

    m_userName = userName;
    emit userNameChanged();
    int a = 5;
}
QString BackEnd::userName()
{
    return m_userName;
}
void BackEnd::showDiagnotics()
{
    const QUrl url1(QStringLiteral("qrc:/diagnotics.qml"));
    g_engine->load(url1);
}
