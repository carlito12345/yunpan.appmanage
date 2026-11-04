.class public final synthetic Lha/s4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lha/t4;


# direct methods
.method public synthetic constructor <init>(Lha/t4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/s4;->a:Lha/t4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lha/s4;->a:Lha/t4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/text/DecimalFormat;

    .line 7
    .line 8
    const-string v2, "0.00"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lha/a4;->b:Landroid/content/Context;

    .line 14
    .line 15
    const-string v3, "activity"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/app/ActivityManager;

    .line 22
    .line 23
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    .line 24
    .line 25
    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 29
    .line 30
    .line 31
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 32
    .line 33
    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 34
    .line 35
    sub-long v6, v4, v6

    .line 36
    .line 37
    long-to-float v6, v6

    .line 38
    const/high16 v7, 0x42c80000    # 100.0f

    .line 39
    .line 40
    mul-float v6, v6, v7

    .line 41
    .line 42
    long-to-float v4, v4

    .line 43
    div-float/2addr v6, v4

    .line 44
    iput v6, v0, Lha/t4;->l:F

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v5, "\u5185\u5b58\u4f7f\u7528\uff1a"

    .line 49
    .line 50
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget v5, v0, Lha/t4;->l:F

    .line 54
    .line 55
    float-to-double v5, v5

    .line 56
    const-string v7, "%"

    .line 57
    .line 58
    invoke-static {v1, v5, v6, v4, v7}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {p1, v4}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    filled-new-array {v4}, [I

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const/4 v5, 0x0

    .line 78
    aget-object v4, v4, v5

    .line 79
    .line 80
    invoke-virtual {v4}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    .line 81
    .line 82
    .line 83
    const-wide/16 v4, 0x3e8

    .line 84
    .line 85
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 86
    .line 87
    .line 88
    iget-boolean v4, v0, Lha/t4;->k:Z

    .line 89
    .line 90
    if-eqz v4, :cond_0

    .line 91
    .line 92
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lha/s4;->a:Lha/t4;

    .line 2
    .line 3
    iget-object p1, p1, Lha/t4;->h:Lx9/c0;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lx9/c0;->G(I)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 9
    .line 10
    iput p3, p1, Lcom/yunpan/appmanage/util/w;->Z:I

    .line 11
    .line 12
    :try_start_0
    iget-object p2, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 13
    .line 14
    const-string v0, "CleanMemoryMode"

    .line 15
    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p2, v0, p3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
