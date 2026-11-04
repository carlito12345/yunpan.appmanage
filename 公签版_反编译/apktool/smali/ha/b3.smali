.class public final synthetic Lha/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/j3;


# direct methods
.method public synthetic constructor <init>(Lha/j3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/b3;->a:I

    iput-object p1, p0, Lha/b3;->b:Lha/j3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lha/b3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/b3;->b:Lha/j3;

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
    iget-object v5, v0, Lha/j3;->h:Lx9/w3;

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
    iget-boolean v6, v0, Lha/j3;->q:Z

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v6, v0, Lha/j3;->r:Landroid/media/AudioTrack;

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
    iget-object v1, v0, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

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
    iput-object v4, v0, Lha/j3;->D:Landroid/media/audiofx/LoudnessEnhancer;

    .line 53
    .line 54
    :cond_2
    :try_start_2
    iget v1, v0, Lha/j3;->y:I

    .line 55
    .line 56
    if-ltz v1, :cond_4

    .line 57
    .line 58
    iget v5, v0, Lha/j3;->z:I

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
    :catchall_0
    move-exception v1

    .line 74
    goto :goto_4

    .line 75
    :cond_3
    iget-object v6, v0, Lha/j3;->A:Landroid/media/AudioManager;

    .line 76
    .line 77
    invoke-virtual {v6, v1, v5, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 78
    .line 79
    .line 80
    :goto_2
    iput v3, v0, Lha/j3;->y:I

    .line 81
    .line 82
    iput v3, v0, Lha/j3;->z:I

    .line 83
    .line 84
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    .line 86
    const/16 v2, 0x17

    .line 87
    .line 88
    if-lt v1, v2, :cond_5

    .line 89
    .line 90
    iget-object v1, v0, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 91
    .line 92
    invoke-static {v1}, Ld2/c;->p(Landroid/media/AudioTrack;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    iget-object v1, v0, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .line 104
    .line 105
    :try_start_3
    iget-object v1, v0, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 106
    .line 107
    :goto_3
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 108
    .line 109
    .line 110
    :catch_2
    iput-object v4, v0, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :goto_4
    :try_start_4
    iget-object v2, v0, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 116
    .line 117
    .line 118
    :catch_3
    iput-object v4, v0, Lha/j3;->r:Landroid/media/AudioTrack;

    .line 119
    .line 120
    throw v1

    .line 121
    :catch_4
    :try_start_5
    iget-object v1, v0, Lha/j3;->r:Landroid/media/AudioTrack;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :goto_5
    invoke-virtual {v0}, Lha/j3;->c()V

    .line 125
    .line 126
    .line 127
    iget-boolean v1, v0, Lha/j3;->q:Z

    .line 128
    .line 129
    if-nez v1, :cond_6

    .line 130
    .line 131
    iget-object v1, v0, Lha/j3;->l:Landroid/widget/TextView;

    .line 132
    .line 133
    new-instance v2, Lha/b3;

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    invoke-direct {v2, v0, v3}, Lha/b3;-><init>(Lha/j3;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 140
    .line 141
    .line 142
    :cond_6
    return-void

    .line 143
    :pswitch_0
    iget-object v0, p0, Lha/b3;->b:Lha/j3;

    .line 144
    .line 145
    iget-object v0, v0, Lha/j3;->l:Landroid/widget/TextView;

    .line 146
    .line 147
    const-string v1, "\u8bd5\u542c\u64ad\u653e"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
