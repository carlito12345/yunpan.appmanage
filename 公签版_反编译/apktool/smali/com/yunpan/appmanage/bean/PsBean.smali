.class public Lcom/yunpan/appmanage/bean/PsBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public addr:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public pid:Ljava/lang/String;

.field public ppid:Ljava/lang/String;

.field public rss:J

.field public rss_str:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public user:Ljava/lang/String;

.field public vsz:J

.field public vsz_str:Ljava/lang/String;

.field public wchan:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/bean/PsBean;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PsBean;->user:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PsBean;->user:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PsBean;->pid:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PsBean;->pid:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PsBean;->ppid:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PsBean;->ppid:Ljava/lang/String;

    .line 8
    iget-wide v0, p1, Lcom/yunpan/appmanage/bean/PsBean;->vsz:J

    iput-wide v0, p0, Lcom/yunpan/appmanage/bean/PsBean;->vsz:J

    .line 9
    iget-wide v0, p1, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    iput-wide v0, p0, Lcom/yunpan/appmanage/bean/PsBean;->rss:J

    .line 10
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PsBean;->vsz_str:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PsBean;->vsz_str:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PsBean;->rss_str:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PsBean;->rss_str:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PsBean;->wchan:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PsBean;->wchan:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PsBean;->addr:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PsBean;->addr:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PsBean;->state:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PsBean;->state:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PsBean;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PsBean;->name:Ljava/lang/String;

    .line 16
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/yunpan/appmanage/bean/PsBean;->packageName:Ljava/lang/String;

    return-void
.end method
