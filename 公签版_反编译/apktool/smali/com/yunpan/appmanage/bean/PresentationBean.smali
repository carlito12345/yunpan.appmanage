.class public Lcom/yunpan/appmanage/bean/PresentationBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public className:Ljava/lang/String;

.field public mDisplayId:I

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public taskId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/yunpan/appmanage/bean/PresentationBean;->mDisplayId:I

    .line 5
    .line 6
    iput p2, p0, Lcom/yunpan/appmanage/bean/PresentationBean;->taskId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yunpan/appmanage/bean/PresentationBean;->name:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yunpan/appmanage/bean/PresentationBean;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/yunpan/appmanage/bean/PresentationBean;->className:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method
