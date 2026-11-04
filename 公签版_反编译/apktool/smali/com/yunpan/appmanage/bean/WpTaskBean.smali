.class public Lcom/yunpan/appmanage/bean/WpTaskBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bdPathInfo:Lx9/w3;

.field public bdRootPath:Lx9/w3;

.field public isTask_stop:Z

.field public position:I

.field public str1:Ljava/lang/String;

.field public str_ETag:Ljava/lang/String;

.field public str_state:Ljava/lang/String;

.field public type:I

.field public upload_state:I

.field public userInfo:Lx9/n5;

.field public wpPathInfo:Lcom/yunpan/appmanage/bean/WpPathBean;

.field public wpRootPath:Lcom/yunpan/appmanage/bean/WpPathBean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpRootPath:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdRootPath:Lx9/w3;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpPathInfo:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->position:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->isTask_stop:Z

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    iput-object v1, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 26
    .line 27
    iput v0, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 28
    .line 29
    iput-object v1, p0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_ETag:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method
