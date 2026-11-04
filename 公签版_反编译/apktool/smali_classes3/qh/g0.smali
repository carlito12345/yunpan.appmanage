.class public final synthetic Lqh/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lqh/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    const-string v1, "/storage/usbotg"

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x0

    .line 7
    iget v4, p0, Lqh/g0;->a:I

    .line 8
    .line 9
    packed-switch v4, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 21
    .line 22
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/db/MyDb;->deleteDir_thread(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 38
    .line 39
    sget v0, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 40
    .line 41
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 42
    .line 43
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 44
    .line 45
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/k;->w:Z

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :try_start_0
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 51
    .line 52
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/w;->q0:Z

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->k(Ljava/lang/String;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->j(Ljava/lang/String;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    sub-long/2addr v1, v3

    .line 65
    const-wide v3, 0x1900000000L

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    cmp-long v5, v1, v3

    .line 71
    .line 72
    if-lez v5, :cond_2

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    iput-boolean v1, v0, Lcom/yunpan/appmanage/util/k;->w:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    :cond_2
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    .line 81
    .line 82
    new-instance v1, Lcom/yunpan/appmanage/util/z;

    .line 83
    .line 84
    new-instance v2, Ljava/io/File;

    .line 85
    .line 86
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v1, v2}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void

    .line 96
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 97
    .line 98
    sget v0, Lcom/yunpan/appmanage/ui/ActivityHome;->O:I

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 107
    .line 108
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :cond_3
    return-void

    .line 116
    :pswitch_2
    check-cast p1, Lqh/f0;

    .line 117
    .line 118
    const/16 v0, 0x80

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lqh/f0;->e(I)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_3
    check-cast p1, Lqh/f0;

    .line 125
    .line 126
    const/16 v0, 0x40

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Lqh/f0;->e(I)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_4
    check-cast p1, Lqh/f0;

    .line 133
    .line 134
    const/4 v0, 0x2

    .line 135
    invoke-virtual {p1, v0}, Lqh/f0;->e(I)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_5
    check-cast p1, Lqh/f0;

    .line 140
    .line 141
    const/16 v0, 0x8

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Lqh/f0;->e(I)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_6
    check-cast p1, Lqh/f0;

    .line 148
    .line 149
    invoke-virtual {p1, v3}, Lqh/f0;->e(I)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_7
    check-cast p1, Lqh/f0;

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lqh/f0;->e(I)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_8
    check-cast p1, Lqh/f0;

    .line 160
    .line 161
    invoke-virtual {p1, v3}, Lqh/f0;->e(I)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_9
    check-cast p1, Lqh/f0;

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Lqh/f0;->e(I)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_a
    check-cast p1, Lqh/f0;

    .line 172
    .line 173
    invoke-virtual {p1, v2}, Lqh/f0;->e(I)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_b
    check-cast p1, Lqh/f0;

    .line 178
    .line 179
    invoke-virtual {p1, v3}, Lqh/f0;->e(I)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :pswitch_c
    check-cast p1, Lqh/f0;

    .line 184
    .line 185
    invoke-virtual {p1, v2}, Lqh/f0;->e(I)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_d
    check-cast p1, Lqh/f0;

    .line 190
    .line 191
    const/16 v0, 0x200

    .line 192
    .line 193
    invoke-virtual {p1, v0}, Lqh/f0;->e(I)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :pswitch_e
    check-cast p1, Lqh/f0;

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Lqh/f0;->e(I)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lqh/g0;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
