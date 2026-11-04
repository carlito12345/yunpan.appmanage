.class public Lcom/yunpan/appmanage/bean/InputMethodBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public className:Ljava/lang/String;

.field public isDefault:Z

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/InputMethodBean;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/InputMethodBean;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yunpan/appmanage/bean/InputMethodBean;->className:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/yunpan/appmanage/bean/InputMethodBean;->isDefault:Z

    .line 11
    .line 12
    return-void
.end method
