.class public final synthetic Lcom/yunpan/appmanage/carsdk/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/carsdk/f;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/carsdk/f;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/yunpan/appmanage/carsdk/i0;->a:I

    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/i0;->b:Lcom/yunpan/appmanage/carsdk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget v3, p0, Lcom/yunpan/appmanage/carsdk/i0;->a:I

    .line 5
    .line 6
    packed-switch v3, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string v2, "getCarManager"

    .line 10
    .line 11
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/i0;->b:Lcom/yunpan/appmanage/carsdk/f;

    .line 12
    .line 13
    iget-object v3, v3, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Lcom/yunpan/appmanage/carsdk/k0;

    .line 16
    .line 17
    :try_start_0
    iget-object v4, v3, Lcom/yunpan/appmanage/carsdk/k0;->b:Ljava/lang/Object;

    .line 18
    .line 19
    new-array v5, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v6, "property"

    .line 22
    .line 23
    aput-object v6, v5, v0

    .line 24
    .line 25
    invoke-static {v4, v2, v5}, Lcom/yunpan/appmanage/carsdk/k0;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iput-object v4, v3, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v4, v3, Lcom/yunpan/appmanage/carsdk/k0;->b:Ljava/lang/Object;

    .line 32
    .line 33
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string v5, "audio"

    .line 36
    .line 37
    aput-object v5, v1, v0

    .line 38
    .line 39
    invoke-static {v4, v2, v1}, Lcom/yunpan/appmanage/carsdk/k0;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, v3, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 44
    .line 45
    iget-object v0, v3, Lcom/yunpan/appmanage/carsdk/k0;->h:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lcom/yunpan/appmanage/carsdk/s;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget v1, v0, Lcom/yunpan/appmanage/carsdk/s;->a:I

    .line 52
    .line 53
    packed-switch v1, :pswitch_data_1

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/s;->b:Lcom/yunpan/appmanage/carsdk/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    :try_start_1
    invoke-virtual {v0}, Lcom/yunpan/appmanage/carsdk/x;->k()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/yunpan/appmanage/carsdk/x;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_0
    :try_start_2
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/s;->b:Lcom/yunpan/appmanage/carsdk/x;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    :try_start_3
    invoke-virtual {v0}, Lcom/yunpan/appmanage/carsdk/x;->k()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/yunpan/appmanage/carsdk/x;->j()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :catchall_1
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/i0;->b:Lcom/yunpan/appmanage/carsdk/f;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/f;->b:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lcom/yunpan/appmanage/carsdk/k0;

    .line 84
    .line 85
    iput-object v2, v0, Lcom/yunpan/appmanage/carsdk/k0;->c:Ljava/lang/Object;

    .line 86
    .line 87
    iput-object v2, v0, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/k0;->h:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Lcom/yunpan/appmanage/carsdk/s;

    .line 92
    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    iget v1, v0, Lcom/yunpan/appmanage/carsdk/s;->a:I

    .line 96
    .line 97
    packed-switch v1, :pswitch_data_2

    .line 98
    .line 99
    .line 100
    :try_start_4
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/s;->b:Lcom/yunpan/appmanage/carsdk/x;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/yunpan/appmanage/carsdk/x;->o()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 103
    .line 104
    .line 105
    :catchall_2
    :try_start_5
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/s;->b:Lcom/yunpan/appmanage/carsdk/x;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/yunpan/appmanage/carsdk/x;->n()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 108
    .line 109
    .line 110
    :catchall_3
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/s;->b:Lcom/yunpan/appmanage/carsdk/x;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/x;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 113
    .line 114
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/s;->b:Lcom/yunpan/appmanage/carsdk/x;

    .line 118
    .line 119
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/x;->h:Lj$/util/concurrent/ConcurrentHashMap;

    .line 120
    .line 121
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/s;->b:Lcom/yunpan/appmanage/carsdk/x;

    .line 125
    .line 126
    iput-object v2, v1, Lcom/yunpan/appmanage/carsdk/x;->e:Ljava/lang/Object;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/s;->b:Lcom/yunpan/appmanage/carsdk/x;

    .line 129
    .line 130
    iput-object v2, v0, Lcom/yunpan/appmanage/carsdk/x;->f:Ljava/lang/Object;

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :pswitch_2
    :try_start_6
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/s;->b:Lcom/yunpan/appmanage/carsdk/x;

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/yunpan/appmanage/carsdk/x;->o()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 136
    .line 137
    .line 138
    :catchall_4
    :try_start_7
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/s;->b:Lcom/yunpan/appmanage/carsdk/x;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/yunpan/appmanage/carsdk/x;->n()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 141
    .line 142
    .line 143
    :catchall_5
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/s;->b:Lcom/yunpan/appmanage/carsdk/x;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/x;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 146
    .line 147
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/s;->b:Lcom/yunpan/appmanage/carsdk/x;

    .line 151
    .line 152
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/x;->h:Lj$/util/concurrent/ConcurrentHashMap;

    .line 153
    .line 154
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/s;->b:Lcom/yunpan/appmanage/carsdk/x;

    .line 158
    .line 159
    iput-object v2, v1, Lcom/yunpan/appmanage/carsdk/x;->e:Ljava/lang/Object;

    .line 160
    .line 161
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/s;->b:Lcom/yunpan/appmanage/carsdk/x;

    .line 162
    .line 163
    iput-object v2, v0, Lcom/yunpan/appmanage/carsdk/x;->f:Ljava/lang/Object;

    .line 164
    .line 165
    :cond_1
    :goto_1
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
