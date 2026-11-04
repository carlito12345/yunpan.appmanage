.class public Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public className:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public timeStamp:J

.field public timeStr:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->type:I

    .line 6
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->state:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->packageName:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->className:Ljava/lang/String;

    .line 9
    iput-wide p5, p0, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->timeStamp:J

    .line 10
    iput-object p7, p0, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->timeStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->timeStamp:J

    .line 3
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->timeStr:Ljava/lang/String;

    return-void
.end method
