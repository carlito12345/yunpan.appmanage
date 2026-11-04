.class public Lcom/yunpan/appmanage/bean/NameValueBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;

.field public value2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/NameValueBean;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/NameValueBean;->name:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/yunpan/appmanage/bean/NameValueBean;->value2:Ljava/lang/String;

    return-void
.end method
