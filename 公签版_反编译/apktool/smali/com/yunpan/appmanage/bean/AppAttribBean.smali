.class public Lcom/yunpan/appmanage/bean/AppAttribBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public installTime:J

.field public installTime_str:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public updateTime:J

.field public updateTime_str:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/AppAttribBean;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yunpan/appmanage/bean/AppAttribBean;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yunpan/appmanage/bean/AppAttribBean;->versionName:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/yunpan/appmanage/bean/AppAttribBean;->versionCode:I

    .line 11
    .line 12
    iput-wide p5, p0, Lcom/yunpan/appmanage/bean/AppAttribBean;->installTime:J

    .line 13
    .line 14
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 15
    .line 16
    const-string p2, "yyyy-MM-dd HH:mm:ss"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p3, Ljava/util/Date;

    .line 22
    .line 23
    invoke-direct {p3, p5, p6}, Ljava/util/Date;-><init>(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/AppAttribBean;->installTime_str:Ljava/lang/String;

    .line 31
    .line 32
    iput-wide p7, p0, Lcom/yunpan/appmanage/bean/AppAttribBean;->updateTime:J

    .line 33
    .line 34
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Ljava/util/Date;

    .line 40
    .line 41
    invoke-direct {p2, p7, p8}, Ljava/util/Date;-><init>(J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/AppAttribBean;->updateTime_str:Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method
