.class public Lcom/yunpan/appmanage/bean/CmdBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ico:I

.field public name:Ljava/lang/String;

.field public str1:Ljava/lang/String;

.field public str2:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/CmdBean;->str1:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/CmdBean;->str2:Ljava/lang/String;

    .line 4
    iput p1, p0, Lcom/yunpan/appmanage/bean/CmdBean;->ico:I

    .line 5
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/CmdBean;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/yunpan/appmanage/bean/CmdBean;->ico:I

    .line 8
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/CmdBean;->name:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/yunpan/appmanage/bean/CmdBean;->str1:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/yunpan/appmanage/bean/CmdBean;->str2:Ljava/lang/String;

    return-void
.end method
