.class public Lcom/yunpan/appmanage/bean/DesktopBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isDefaultDesktop:Z

.field public isDisable:Z

.field public isHide:Z

.field public isSystemApp:Z

.field public isUninstall:Z

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/DesktopBean;->name:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/DesktopBean;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/yunpan/appmanage/bean/DesktopBean;->isSystemApp:Z

    .line 5
    iput-boolean p4, p0, Lcom/yunpan/appmanage/bean/DesktopBean;->isDisable:Z

    .line 6
    iput-boolean p5, p0, Lcom/yunpan/appmanage/bean/DesktopBean;->isHide:Z

    .line 7
    iput-boolean p6, p0, Lcom/yunpan/appmanage/bean/DesktopBean;->isUninstall:Z

    .line 8
    iput-boolean p7, p0, Lcom/yunpan/appmanage/bean/DesktopBean;->isDefaultDesktop:Z

    return-void
.end method
