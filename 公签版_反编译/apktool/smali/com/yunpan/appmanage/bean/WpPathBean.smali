.class public Lcom/yunpan/appmanage/bean/WpPathBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public downUrl:Ljava/lang/String;

.field public downUrlReferer:Ljava/lang/String;

.field public errorStr:Ljava/lang/String;

.field public hasMoreData:Z

.field public isSelect:Z

.field public isStopDown:Z

.field public is_dir:Z

.field public jsonObject:Lz7/s;

.field public ls_read:Z

.field public name:Ljava/lang/String;

.field public page:I

.field public path:Ljava/lang/String;

.field public size_long:J

.field public size_txt:Ljava/lang/String;

.field public time_txt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->isSelect:Z

    .line 4
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->isStopDown:Z

    .line 5
    const-string v2, ""

    iput-object v2, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 6
    iput-object v2, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrlReferer:Ljava/lang/String;

    .line 7
    iput-object v2, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->errorStr:Ljava/lang/String;

    .line 8
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->ls_read:Z

    .line 9
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->hasMoreData:Z

    .line 10
    iput v0, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 11
    iput-object v2, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 13
    iput-object v2, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->isSelect:Z

    .line 17
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->isStopDown:Z

    .line 18
    const-string v2, ""

    iput-object v2, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrl:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->downUrlReferer:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->errorStr:Ljava/lang/String;

    .line 21
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->ls_read:Z

    .line 22
    iput-boolean v1, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->hasMoreData:Z

    .line 23
    iput v0, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->page:I

    .line 24
    iput-object v2, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 26
    iput-object v2, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    return-void
.end method
