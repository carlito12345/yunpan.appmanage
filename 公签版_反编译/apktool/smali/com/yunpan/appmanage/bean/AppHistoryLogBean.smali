.class public Lcom/yunpan/appmanage/bean/AppHistoryLogBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public time:J

.field public time_end:J

.field public time_end_str:Ljava/lang/String;

.field public time_start:J

.field public time_start_str:Ljava/lang/String;

.field public time_str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->packageName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_start:J

    .line 4
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_start_str:Ljava/lang/String;

    .line 5
    iput-wide v1, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end:J

    .line 6
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end_str:Ljava/lang/String;

    .line 7
    iput-wide v1, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time:J

    .line 8
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_str:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end:J

    .line 12
    const-string v2, ""

    iput-object v2, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_end_str:Ljava/lang/String;

    .line 13
    iput-wide v0, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time:J

    .line 14
    iput-object v2, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_str:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->packageName:Ljava/lang/String;

    .line 17
    iput-wide p3, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_start:J

    .line 18
    iput-object p5, p0, Lcom/yunpan/appmanage/bean/AppHistoryLogBean;->time_start_str:Ljava/lang/String;

    return-void
.end method
