.class public Lcom/yunpan/appmanage/bean/TimePeriodBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public endH:I

.field public endM:I

.field public jsonArray:Lz7/o;

.field public startH:I

.field public startM:I


# direct methods
.method public constructor <init>(IIIILz7/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/yunpan/appmanage/bean/TimePeriodBean;->startH:I

    .line 5
    .line 6
    iput p2, p0, Lcom/yunpan/appmanage/bean/TimePeriodBean;->startM:I

    .line 7
    .line 8
    iput p3, p0, Lcom/yunpan/appmanage/bean/TimePeriodBean;->endH:I

    .line 9
    .line 10
    iput p4, p0, Lcom/yunpan/appmanage/bean/TimePeriodBean;->endM:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/yunpan/appmanage/bean/TimePeriodBean;->jsonArray:Lz7/o;

    .line 13
    .line 14
    return-void
.end method
