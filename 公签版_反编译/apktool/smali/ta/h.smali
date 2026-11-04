.class public final synthetic Lta/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/service/BootTaskService;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/service/BootTaskService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lta/h;->a:I

    iput-object p1, p0, Lta/h;->b:Lcom/yunpan/appmanage/service/BootTaskService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lta/h;->b:Lcom/yunpan/appmanage/service/BootTaskService;

    .line 3
    .line 4
    iget v2, p0, Lta/h;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v2, Lcom/yunpan/appmanage/service/BootTaskService;->c:I

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v2, Lfa/d;->a:Lfa/e;

    .line 15
    .line 16
    iget-boolean v2, v2, Lfa/e;->d:Z

    .line 17
    .line 18
    if-nez v2, :cond_3

    .line 19
    .line 20
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 21
    .line 22
    iget-boolean v3, v2, Lwa/u;->f0:Z

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    iget-boolean v2, v2, Lwa/u;->t:Z

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const-string v2, "\u7b49\u5f85\u7cfb\u7edf\u5f00\u673a\u52a0\u8f7d\u5b8c\u6210"

    .line 31
    .line 32
    invoke-static {v2}, Lwa/w;->c(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const-wide/16 v2, 0x1f4

    .line 36
    .line 37
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 38
    .line 39
    .line 40
    sget-object v2, Lfa/d;->a:Lfa/e;

    .line 41
    .line 42
    iget-boolean v2, v2, Lfa/e;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget v3, v2, Lwa/u;->m:I

    .line 48
    .line 49
    if-lez v3, :cond_3

    .line 50
    .line 51
    iget-boolean v3, v2, Lwa/u;->t:Z

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v4, "\u5ef6\u65f6\uff1a"

    .line 58
    .line 59
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget v4, v2, Lwa/u;->m:I

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v4, "\u79d2\u518d\u6267\u884c\u5f00\u673a\u4efb\u52a1"

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v3}, Lwa/w;->c(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :try_start_1
    iget v2, v2, Lwa/u;->m:I

    .line 80
    .line 81
    mul-int/lit16 v2, v2, 0x3e8

    .line 82
    .line 83
    int-to-long v2, v2

    .line 84
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    .line 86
    .line 87
    :catch_0
    :cond_3
    :goto_0
    invoke-static {}, Lta/i;->d()V

    .line 88
    .line 89
    .line 90
    iput-boolean v0, v1, Lcom/yunpan/appmanage/service/BootTaskService;->b:Z

    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_0
    sget v2, Lcom/yunpan/appmanage/service/BootTaskService;->c:I

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lta/i;->a()V

    .line 99
    .line 100
    .line 101
    iput-boolean v0, v1, Lcom/yunpan/appmanage/service/BootTaskService;->a:Z

    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
