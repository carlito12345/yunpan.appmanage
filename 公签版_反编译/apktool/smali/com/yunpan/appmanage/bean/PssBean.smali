.class public Lcom/yunpan/appmanage/bean/PssBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isCanStarted:Z

.field public name:Ljava/lang/String;

.field public pack:Ljava/lang/String;

.field public pack_str:Ljava/lang/String;

.field public pid:Ljava/lang/String;

.field public process_name:Ljava/lang/String;

.field public pss:J

.field public pss_str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->name:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->isCanStarted:Z

    return-void
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/bean/PssBean;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->name:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->isCanStarted:Z

    .line 15
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PssBean;->pid:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->pid:Ljava/lang/String;

    .line 16
    iget-wide v0, p1, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    iput-wide v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->pss:J

    .line 17
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->pss_str:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PssBean;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->name:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->pack_str:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/PssBean;->process_name:Ljava/lang/String;

    .line 22
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/PssBean;->isCanStarted:Z

    iput-boolean p1, p0, Lcom/yunpan/appmanage/bean/PssBean;->isCanStarted:Z

    return-void
.end method
