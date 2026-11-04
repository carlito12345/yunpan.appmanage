.class public final synthetic Lha/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/r3;


# direct methods
.method public synthetic constructor <init>(Lha/r3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/n3;->a:I

    iput-object p1, p0, Lha/n3;->b:Lha/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lha/n3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/n3;->b:Lha/r3;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x400

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, -0x1

    .line 15
    :try_start_0
    new-array v1, v1, [B

    .line 16
    .line 17
    new-instance v4, Ljava/io/FileInputStream;

    .line 18
    .line 19
    iget-object v5, v0, Lha/r3;->C:Lx9/w3;

    .line 20
    .line 21
    iget-object v5, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eq v5, v3, :cond_1

    .line 31
    .line 32
    iget-boolean v6, v0, Lha/r3;->l:Z

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v6, v0, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 38
    .line 39
    invoke-virtual {v6, v1, v2, v5}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    nop

    .line 44
    :cond_1
    :goto_1
    iget-object v1, v0, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    :try_start_1
    invoke-static {v1}, Lcom/hierynomus/security/jce/a;->r(Landroid/media/audiofx/LoudnessEnhancer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    .line 51
    .line 52
    :catch_1
    iput-object v4, v0, Lha/r3;->B:Landroid/media/audiofx/LoudnessEnhancer;

    .line 53
    .line 54
    :cond_2
    :try_start_2
    iget v1, v0, Lha/r3;->t:I

    .line 55
    .line 56
    if-ltz v1, :cond_4

    .line 57
    .line 58
    iget v5, v0, Lha/r3;->v:I

    .line 59
    .line 60
    if-ltz v5, :cond_4

    .line 61
    .line 62
    const/16 v6, 0x64

    .line 63
    .line 64
    if-lt v1, v6, :cond_3

    .line 65
    .line 66
    sget-object v2, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 67
    .line 68
    sub-int/2addr v1, v6

    .line 69
    invoke-virtual {v2, v1, v5}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget-object v6, v0, Lha/r3;->y:Landroid/media/AudioManager;

    .line 74
    .line 75
    invoke-virtual {v6, v1, v5, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 76
    .line 77
    .line 78
    :goto_2
    iput v3, v0, Lha/r3;->t:I

    .line 79
    .line 80
    iput v3, v0, Lha/r3;->v:I

    .line 81
    .line 82
    :cond_4
    iget-object v1, v0, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 85
    .line 86
    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    .line 89
    const/16 v2, 0x17

    .line 90
    .line 91
    if-lt v1, v2, :cond_5

    .line 92
    .line 93
    iget-object v1, v0, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 94
    .line 95
    invoke-static {v1}, Ld2/c;->p(Landroid/media/AudioTrack;)V

    .line 96
    .line 97
    .line 98
    :cond_5
    iget-object v1, v0, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    .line 102
    .line 103
    :catch_2
    :try_start_3
    iget-object v1, v0, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    .line 107
    .line 108
    :catch_3
    iput-object v4, v0, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :catchall_0
    move-exception v1

    .line 112
    iput-object v4, v0, Lha/r3;->m:Landroid/media/AudioTrack;

    .line 113
    .line 114
    throw v1

    .line 115
    :goto_3
    invoke-virtual {v0}, Lha/r3;->c()V

    .line 116
    .line 117
    .line 118
    iget-boolean v1, v0, Lha/r3;->l:Z

    .line 119
    .line 120
    if-nez v1, :cond_6

    .line 121
    .line 122
    iget-object v1, v0, Lha/r3;->h:Landroid/widget/TextView;

    .line 123
    .line 124
    new-instance v2, Lha/n3;

    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    invoke-direct {v2, v0, v3}, Lha/n3;-><init>(Lha/r3;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 131
    .line 132
    .line 133
    :cond_6
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lha/n3;->b:Lha/r3;

    .line 135
    .line 136
    iget-object v0, v0, Lha/r3;->h:Landroid/widget/TextView;

    .line 137
    .line 138
    const-string v1, "\u8bd5\u542c"

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
