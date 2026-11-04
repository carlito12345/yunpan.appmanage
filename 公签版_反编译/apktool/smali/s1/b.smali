.class public final Ls1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt7/n;

.field public final b:Landroid/os/Handler;

.field public c:Ly1/f0;

.field public d:Lr1/d;

.field public e:I

.field public f:I

.field public g:F

.field public h:Ls1/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ly1/f0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Ls1/b;->g:F

    .line 7
    .line 8
    new-instance v0, Lf2/o;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1, p1}, Lf2/o;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    instance-of p1, v0, Ljava/io/Serializable;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Lt7/o;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Lt7/o;-><init>(Lt7/n;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lt7/p;

    .line 25
    .line 26
    invoke-direct {p1, v0}, Lt7/p;-><init>(Lt7/n;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iput-object p1, p0, Ls1/b;->a:Lt7/n;

    .line 30
    .line 31
    iput-object p3, p0, Ls1/b;->c:Ly1/f0;

    .line 32
    .line 33
    new-instance p1, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Ls1/b;->b:Landroid/os/Handler;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput p1, p0, Ls1/b;->e:I

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Ls1/b;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Ls1/b;->h:Ls1/e;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Ls1/b;->a:Lt7/n;

    .line 14
    .line 15
    invoke-interface {v0}, Lt7/n;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/media/AudioManager;

    .line 20
    .line 21
    iget-object v1, p0, Ls1/b;->h:Ls1/e;

    .line 22
    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v3, 0x1a

    .line 26
    .line 27
    if-lt v2, v3, :cond_1

    .line 28
    .line 29
    iget-object v1, v1, Ls1/e;->f:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ln5/a;->i(Ljava/lang/Object;)Landroid/media/AudioFocusRequest;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Ln5/a;->x(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, v1, Ls1/e;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/b;->c:Ly1/f0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Ly1/f0;->h:Lu1/b0;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lu1/b0;->c()Lu1/a0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v0, v0, Lu1/b0;->a:Landroid/os/Handler;

    .line 15
    .line 16
    const/16 v2, 0x21

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, v1, Lu1/a0;->a:Landroid/os/Message;

    .line 24
    .line 25
    invoke-virtual {v1}, Lu1/a0;->b()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget v0, p0, Ls1/b;->e:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Ls1/b;->e:I

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    const p1, 0x3e4ccccd    # 0.2f

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    :goto_0
    iget v0, p0, Ls1/b;->g:F

    .line 18
    .line 19
    cmpl-float v0, v0, p1

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iput p1, p0, Ls1/b;->g:F

    .line 25
    .line 26
    iget-object p1, p0, Ls1/b;->c:Ly1/f0;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-object p1, p1, Ly1/f0;->h:Lu1/b0;

    .line 31
    .line 32
    const/16 v0, 0x22

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lu1/b0;->f(I)Z

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method public final d(IZ)I
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_c

    .line 4
    .line 5
    iget p1, p0, Ls1/b;->f:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_c

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, -0x1

    .line 11
    if-eqz p2, :cond_9

    .line 12
    .line 13
    iget p2, p0, Ls1/b;->e:I

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-ne p2, v4, :cond_0

    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    iget-object p2, p0, Ls1/b;->h:Ls1/e;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    if-nez p2, :cond_2

    .line 26
    .line 27
    new-instance p2, Ls1/c;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Ls1/c;-><init>(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    new-instance p1, Ls1/c;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ls1/c;-><init>(Ls1/e;)V

    .line 36
    .line 37
    .line 38
    move-object p2, p1

    .line 39
    :goto_0
    iget-object p1, p0, Ls1/b;->d:Lr1/d;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget v5, p1, Lr1/d;->a:I

    .line 44
    .line 45
    if-ne v5, v0, :cond_3

    .line 46
    .line 47
    const/4 v5, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v5, 0x0

    .line 50
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iput-object p1, p2, Ls1/c;->b:Lr1/d;

    .line 54
    .line 55
    iput-boolean v5, p2, Ls1/c;->c:Z

    .line 56
    .line 57
    iput-boolean v0, p2, Ls1/c;->d:Z

    .line 58
    .line 59
    new-instance v8, Lha/e1;

    .line 60
    .line 61
    const/4 p1, 0x2

    .line 62
    invoke-direct {v8, p1, p0}, Lha/e1;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v9, p0, Ls1/b;->b:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    new-instance p1, Ls1/e;

    .line 71
    .line 72
    iget-object v10, p2, Ls1/c;->b:Lr1/d;

    .line 73
    .line 74
    iget-boolean v11, p2, Ls1/c;->c:Z

    .line 75
    .line 76
    iget-boolean v12, p2, Ls1/c;->d:Z

    .line 77
    .line 78
    iget v7, p2, Ls1/c;->a:I

    .line 79
    .line 80
    move-object v6, p1

    .line 81
    invoke-direct/range {v6 .. v12}, Ls1/e;-><init>(ILandroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Lr1/d;ZZ)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Ls1/b;->h:Ls1/e;

    .line 85
    .line 86
    :goto_2
    iget-object p1, p0, Ls1/b;->a:Lt7/n;

    .line 87
    .line 88
    invoke-interface {p1}, Lt7/n;->get()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Landroid/media/AudioManager;

    .line 93
    .line 94
    iget-object p2, p0, Ls1/b;->h:Ls1/e;

    .line 95
    .line 96
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .line 98
    const/16 v6, 0x1a

    .line 99
    .line 100
    if-lt v5, v6, :cond_4

    .line 101
    .line 102
    iget-object p2, p2, Ls1/e;->f:Ljava/lang/Object;

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {p2}, Ln5/a;->i(Ljava/lang/Object;)Landroid/media/AudioFocusRequest;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {p1, p2}, Ln5/a;->d(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    goto :goto_5

    .line 116
    :cond_4
    iget-object v7, p2, Ls1/e;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 117
    .line 118
    iget-object v8, p2, Ls1/e;->d:Lr1/d;

    .line 119
    .line 120
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    if-lt v5, v6, :cond_5

    .line 124
    .line 125
    :try_start_0
    invoke-virtual {v8}, Lr1/d;->a()Landroid/media/AudioAttributes;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v1}, Ln5/a;->c(Landroid/media/AudioAttributes;)I

    .line 130
    .line 131
    .line 132
    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    const/high16 v5, -0x80000000

    .line 134
    .line 135
    if-ne v1, v5, :cond_6

    .line 136
    .line 137
    :catch_0
    :goto_3
    const/4 v1, 0x3

    .line 138
    goto :goto_4

    .line 139
    :cond_5
    iget v5, v8, Lr1/d;->b:I

    .line 140
    .line 141
    packed-switch v5, :pswitch_data_0

    .line 142
    .line 143
    .line 144
    :pswitch_0
    goto :goto_3

    .line 145
    :pswitch_1
    const/4 v1, 0x1

    .line 146
    goto :goto_4

    .line 147
    :pswitch_2
    const/16 v1, 0xa

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :pswitch_3
    const/4 v1, 0x2

    .line 151
    goto :goto_4

    .line 152
    :pswitch_4
    const/4 v1, 0x5

    .line 153
    goto :goto_4

    .line 154
    :pswitch_5
    const/4 v1, 0x4

    .line 155
    goto :goto_4

    .line 156
    :pswitch_6
    const/16 v1, 0x8

    .line 157
    .line 158
    :cond_6
    :goto_4
    :pswitch_7
    iget p2, p2, Ls1/e;->a:I

    .line 159
    .line 160
    invoke-virtual {p1, v7, v1, p2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    :goto_5
    if-eq p1, v0, :cond_8

    .line 165
    .line 166
    if-ne p1, v4, :cond_7

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_7
    invoke-virtual {p0, v0}, Ls1/b;->c(I)V

    .line 170
    .line 171
    .line 172
    const/4 v0, -0x1

    .line 173
    goto :goto_7

    .line 174
    :cond_8
    :goto_6
    invoke-virtual {p0, v4}, Ls1/b;->c(I)V

    .line 175
    .line 176
    .line 177
    :goto_7
    return v0

    .line 178
    :cond_9
    iget p1, p0, Ls1/b;->e:I

    .line 179
    .line 180
    if-eq p1, v0, :cond_b

    .line 181
    .line 182
    if-eq p1, v2, :cond_a

    .line 183
    .line 184
    return v0

    .line 185
    :cond_a
    return v1

    .line 186
    :cond_b
    return v3

    .line 187
    :cond_c
    invoke-virtual {p0}, Ls1/b;->a()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v1}, Ls1/b;->c(I)V

    .line 191
    .line 192
    .line 193
    return v0

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
