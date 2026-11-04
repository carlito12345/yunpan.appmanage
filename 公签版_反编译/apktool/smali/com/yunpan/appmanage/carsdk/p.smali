.class public final Lcom/yunpan/appmanage/carsdk/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/carsdk/r;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/carsdk/r;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/yunpan/appmanage/carsdk/p;->a:I

    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/carsdk/p;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/yunpan/appmanage/carsdk/r;->p(Lcom/yunpan/appmanage/carsdk/r;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 13
    .line 14
    iget-object v2, v1, Lcom/yunpan/appmanage/carsdk/r;->h:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/r;->h:Ljava/lang/Object;

    .line 20
    .line 21
    const-string v2, "clearListener"

    .line 22
    .line 23
    new-array v3, v0, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v1, v2, v3}, Lcom/yunpan/appmanage/carsdk/r;->r(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    :catch_0
    :catchall_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/r;->f:Ljava/lang/Object;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/r;->f:Ljava/lang/Object;

    .line 37
    .line 38
    const-string v2, "disconnect"

    .line 39
    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v1, v2, v0}, Lcom/yunpan/appmanage/carsdk/r;->r(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    .line 44
    .line 45
    :catchall_1
    :cond_1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/r;->x:Lj$/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/r;->y:Lj$/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/r;->z:Lj$/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/r;->A:Lj$/util/concurrent/ConcurrentHashMap;

    .line 69
    .line 70
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->g:Ljava/lang/Object;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 79
    .line 80
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->h:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 83
    .line 84
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->f:Ljava/lang/Object;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 87
    .line 88
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->i:Ljava/lang/Object;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 91
    .line 92
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->j:Ljava/lang/Object;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 95
    .line 96
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->k:Ljava/lang/Object;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 99
    .line 100
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->l:Ljava/lang/Object;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 103
    .line 104
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->m:Ljava/lang/Object;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 107
    .line 108
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->n:Ljava/lang/Object;

    .line 109
    .line 110
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 111
    .line 112
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->o:Ljava/lang/Object;

    .line 113
    .line 114
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 115
    .line 116
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->p:Ljava/lang/Object;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 119
    .line 120
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->q:Ljava/lang/Object;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 123
    .line 124
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->r:Ljava/lang/Object;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 127
    .line 128
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->s:Ljava/lang/Object;

    .line 129
    .line 130
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 131
    .line 132
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->t:Ljava/lang/Object;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 135
    .line 136
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->u:Ljava/lang/Object;

    .line 137
    .line 138
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 139
    .line 140
    iput-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->v:Ljava/lang/Object;

    .line 141
    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 143
    .line 144
    const/16 v1, 0x12

    .line 145
    .line 146
    if-lt v0, v1, :cond_2

    .line 147
    .line 148
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/r;->c:Landroid/os/HandlerThread;

    .line 151
    .line 152
    invoke-static {v0}, Lb1/o;->l(Landroid/os/HandlerThread;)V

    .line 153
    .line 154
    .line 155
    :cond_2
    return-void

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/p;->b:Lcom/yunpan/appmanage/carsdk/r;

    .line 157
    .line 158
    :try_start_3
    invoke-static {v0}, Lcom/yunpan/appmanage/carsdk/r;->b(Lcom/yunpan/appmanage/carsdk/r;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v0}, Lcom/yunpan/appmanage/carsdk/r;->a(Lcom/yunpan/appmanage/carsdk/r;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :catchall_2
    move-exception v1

    .line 166
    const-string v2, "start"

    .line 167
    .line 168
    invoke-virtual {v0, v2, v1}, Lcom/yunpan/appmanage/carsdk/r;->s(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    :goto_1
    return-void

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
