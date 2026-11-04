.class public final Lja/h;
.super Lfg/m;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:Lcom/yunpan/appmanage/bean/WpTaskBean;

.field public c:J

.field public final d:J

.field public final e:Lma/b;


# direct methods
.method public constructor <init>(Lfg/j;Lcom/yunpan/appmanage/bean/WpTaskBean;JLma/b;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lfg/m;-><init>(Lfg/x;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lja/h;->a:J

    .line 7
    .line 8
    iput-wide v0, p0, Lja/h;->c:J

    .line 9
    .line 10
    iput-object p2, p0, Lja/h;->b:Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 11
    .line 12
    iput-wide p3, p0, Lja/h;->d:J

    .line 13
    .line 14
    iput-object p5, p0, Lja/h;->e:Lma/b;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final write(Lfg/i;J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lja/h;->b:Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->isTask_stop:Z

    .line 4
    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Lfg/m;->write(Lfg/i;J)V

    .line 8
    .line 9
    .line 10
    iget-wide v0, p0, Lja/h;->a:J

    .line 11
    .line 12
    add-long/2addr v0, p2

    .line 13
    iput-wide v0, p0, Lja/h;->a:J

    .line 14
    .line 15
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    iget-wide v0, p0, Lja/h;->c:J

    .line 25
    .line 26
    sub-long v0, p1, v0

    .line 27
    .line 28
    const-wide/16 v2, 0x3e8

    .line 29
    .line 30
    iget-wide v4, p0, Lja/h;->d:J

    .line 31
    .line 32
    cmp-long p3, v0, v2

    .line 33
    .line 34
    if-gez p3, :cond_0

    .line 35
    .line 36
    iget-wide v0, p0, Lja/h;->a:J

    .line 37
    .line 38
    cmp-long p3, v0, v4

    .line 39
    .line 40
    if-ltz p3, :cond_2

    .line 41
    .line 42
    :cond_0
    iput-wide p1, p0, Lja/h;->c:J

    .line 43
    .line 44
    iget-object p1, p0, Lja/h;->e:Lma/b;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-wide p2, p0, Lja/h;->a:J

    .line 49
    .line 50
    const-wide/16 v0, 0x1

    .line 51
    .line 52
    cmp-long v2, v4, v0

    .line 53
    .line 54
    if-gez v2, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, "\u4e0a\u4f20\u4e2d\uff1a"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 65
    .line 66
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 67
    .line 68
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 69
    .line 70
    long-to-double p2, p2

    .line 71
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 72
    .line 73
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    .line 74
    .line 75
    .line 76
    mul-double p2, p2, v2

    .line 77
    .line 78
    long-to-double v2, v4

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 80
    .line 81
    .line 82
    div-double/2addr p2, v2

    .line 83
    const-string v2, "%"

    .line 84
    .line 85
    invoke-static {v1, p2, p3, v0, v2}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    iget-object p3, p1, Lma/b;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p3, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 92
    .line 93
    iput-object p2, p3, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const/16 v0, 0xa

    .line 100
    .line 101
    iput v0, p2, Landroid/os/Message;->what:I

    .line 102
    .line 103
    iput-object p3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    .line 105
    iget-object p1, p1, Lma/b;->c:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p1, Lcom/yunpan/appmanage/carsdk/u;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_0
    return-void

    .line 113
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 114
    .line 115
    const-string p2, "\u7528\u6237\u4e3b\u52a8\u505c\u6b62\u4efb\u52a1"

    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method
