.class public Lcom/yunpan/appmanage/bean/StackBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public appBounds:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public displayBounds:Ljava/lang/String;

.field public displayId:I

.field public packageName:Ljava/lang/String;

.field public stackId:I

.field public taskId:I

.field public topActivity:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/yunpan/appmanage/bean/StackBean;->displayId:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/StackBean;->displayBounds:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/yunpan/appmanage/bean/StackBean;->stackId:I

    .line 9
    .line 10
    iput p4, p0, Lcom/yunpan/appmanage/bean/StackBean;->userId:I

    .line 11
    .line 12
    iput p5, p0, Lcom/yunpan/appmanage/bean/StackBean;->taskId:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/yunpan/appmanage/bean/StackBean;->appName:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/yunpan/appmanage/bean/StackBean;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/yunpan/appmanage/bean/StackBean;->className:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/yunpan/appmanage/bean/StackBean;->topActivity:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/yunpan/appmanage/bean/StackBean;->appBounds:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method
