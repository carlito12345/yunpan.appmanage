.class public final Lmc/g;
.super Lmc/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lec/b;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p4, p0, Lmc/g;->b:I

    invoke-direct {p0, p1}, Lmc/a;-><init>(Lec/b;)V

    iput-object p2, p0, Lmc/g;->d:Ljava/lang/Object;

    iput p3, p0, Lmc/g;->c:I

    return-void
.end method


# virtual methods
.method public final c(Lec/e;)V
    .locals 4

    .line 1
    iget v0, p0, Lmc/g;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lmc/g;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lfc/e;

    .line 9
    .line 10
    iget-object v1, p0, Lmc/a;->a:Lec/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lfc/e;->a()Lec/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lmc/l;

    .line 17
    .line 18
    iget v3, p0, Lmc/g;->c:I

    .line 19
    .line 20
    invoke-direct {v2, p1, v0, v3}, Lmc/l;-><init>(Lec/e;Lec/i;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    sget-object v0, Lic/b;->a:Lic/b;

    .line 28
    .line 29
    iget-object v1, p0, Lmc/g;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lua/t6;

    .line 32
    .line 33
    iget-object v2, p0, Lmc/a;->a:Lec/b;

    .line 34
    .line 35
    instance-of v3, v2, Ljava/util/concurrent/Callable;

    .line 36
    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    :try_start_0
    check-cast v2, Ljava/util/concurrent/Callable;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    invoke-interface {p1, v0}, Lec/e;->b(Lgc/b;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Lec/e;->onComplete()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Lua/t6;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lec/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .line 60
    instance-of v2, v1, Ljava/util/concurrent/Callable;

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    :try_start_2
    check-cast v1, Ljava/util/concurrent/Callable;

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    invoke-interface {p1, v0}, Lec/e;->b(Lgc/b;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Lec/e;->onComplete()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Lmc/m;

    .line 80
    .line 81
    invoke-direct {v0, p1, v1}, Lmc/m;-><init>(Lec/e;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0}, Lec/e;->b(Lgc/b;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lmc/m;->run()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v1

    .line 92
    invoke-static {v1}, Lif/a;->K0(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p1, v0}, Lec/e;->b(Lgc/b;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v1}, Lec/e;->B(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v1, p1}, Lec/b;->b(Lec/e;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_1
    move-exception v1

    .line 107
    invoke-static {v1}, Lif/a;->K0(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v0}, Lec/e;->b(Lgc/b;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p1, v1}, Lec/e;->B(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catchall_2
    move-exception v1

    .line 118
    invoke-static {v1}, Lif/a;->K0(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, v0}, Lec/e;->b(Lgc/b;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p1, v1}, Lec/e;->B(Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    new-instance v0, Lmc/f;

    .line 129
    .line 130
    iget v3, p0, Lmc/g;->c:I

    .line 131
    .line 132
    invoke-direct {v0, p1, v1, v3}, Lmc/f;-><init>(Lec/e;Lua/t6;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v0}, Lec/b;->b(Lec/e;)V

    .line 136
    .line 137
    .line 138
    :goto_0
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
