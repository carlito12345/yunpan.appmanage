.class public Lcom/yunpan/appmanage/bean/AppTrafficBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public count:J

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public sim:J

.field public uid:I

.field public wifi:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/AppTrafficBean;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/AppTrafficBean;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/yunpan/appmanage/bean/AppTrafficBean;->uid:I

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/yunpan/appmanage/bean/AppTrafficBean;->sim:J

    .line 11
    .line 12
    iput-wide p6, p0, Lcom/yunpan/appmanage/bean/AppTrafficBean;->wifi:J

    .line 13
    .line 14
    iput-wide p8, p0, Lcom/yunpan/appmanage/bean/AppTrafficBean;->count:J

    .line 15
    .line 16
    return-void
.end method
