.class public final Lha/g1;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final A:Ljava/util/ArrayList;

.field public B:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public C:Landroid/media/AudioFocusRequest;

.field public D:Lha/e1;

.field public final g:Lha/f8;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public k:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public l:Lra/c;

.field public m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public n:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public q:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public t:I

.field public v:I

.field public w:Landroid/media/AudioManager;

.field public final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final y:Ljava/util/ArrayList;

.field public z:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/f8;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0084

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lha/g1;->l:Lra/c;

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lha/g1;->t:I

    .line 12
    .line 13
    iput p1, p0, Lha/g1;->v:I

    .line 14
    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lha/g1;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lha/g1;->y:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lha/g1;->A:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object p3, p0, Lha/g1;->g:Lha/f8;

    .line 38
    .line 39
    return-void
.end method

.method public static a(Lha/g1;Z)V
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x64

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    iget-object p1, p0, Lha/g1;->h:Landroid/widget/TextView;

    .line 8
    .line 9
    new-instance v3, Lha/d1;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v3, p0, v4}, Lha/d1;-><init>(Lha/g1;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lha/g1;->p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 19
    .line 20
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 21
    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    const/16 v0, 0x32

    .line 25
    .line 26
    if-le p1, v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v3, 0x1a

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x1

    .line 35
    if-lt v0, v3, :cond_1

    .line 36
    .line 37
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    .line 43
    .line 44
    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 45
    .line 46
    .line 47
    const/16 v3, 0xc

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 58
    .line 59
    .line 60
    new-instance p1, Lha/e1;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-direct {p1, v3, p0}, Lha/e1;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lha/g1;->C:Landroid/media/AudioFocusRequest;

    .line 74
    .line 75
    iget-object v0, p0, Lha/g1;->w:Landroid/media/AudioManager;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eq p1, v5, :cond_2

    .line 82
    .line 83
    iput-object v4, p0, Lha/g1;->C:Landroid/media/AudioFocusRequest;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Lha/e1;

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    invoke-direct {v0, v3, p0}, Lha/e1;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lha/g1;->D:Lha/e1;

    .line 93
    .line 94
    iget-object v3, p0, Lha/g1;->w:Landroid/media/AudioManager;

    .line 95
    .line 96
    const/4 v6, 0x5

    .line 97
    invoke-virtual {v3, v0, v6, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eq p1, v5, :cond_2

    .line 102
    .line 103
    iput-object v4, p0, Lha/g1;->D:Lha/e1;

    .line 104
    .line 105
    :cond_2
    :goto_0
    iget-object p1, p0, Lha/g1;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 106
    .line 107
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 108
    .line 109
    if-ltz p1, :cond_7

    .line 110
    .line 111
    iput p1, p0, Lha/g1;->t:I

    .line 112
    .line 113
    if-lt p1, v2, :cond_3

    .line 114
    .line 115
    sget-object v0, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 116
    .line 117
    sub-int/2addr p1, v2

    .line 118
    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/carsdk/k0;->f(I)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iput p1, p0, Lha/g1;->v:I

    .line 123
    .line 124
    iget-object p1, p0, Lha/g1;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 125
    .line 126
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 127
    .line 128
    sub-int/2addr p1, v2

    .line 129
    iget-object p0, p0, Lha/g1;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    invoke-virtual {v0, p1, p0}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_3
    iget-object v0, p0, Lha/g1;->w:Landroid/media/AudioManager;

    .line 140
    .line 141
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iput p1, p0, Lha/g1;->v:I

    .line 146
    .line 147
    iget-object p1, p0, Lha/g1;->w:Landroid/media/AudioManager;

    .line 148
    .line 149
    iget-object v0, p0, Lha/g1;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 150
    .line 151
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 152
    .line 153
    iget-object p0, p0, Lha/g1;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    invoke-virtual {p1, v0, p0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    iget p1, p0, Lha/g1;->t:I

    .line 164
    .line 165
    if-ltz p1, :cond_6

    .line 166
    .line 167
    iget v3, p0, Lha/g1;->v:I

    .line 168
    .line 169
    if-ltz v3, :cond_6

    .line 170
    .line 171
    if-lt p1, v2, :cond_5

    .line 172
    .line 173
    sget-object v1, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 174
    .line 175
    sub-int/2addr p1, v2

    .line 176
    invoke-virtual {v1, p1, v3}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_5
    iget-object v2, p0, Lha/g1;->w:Landroid/media/AudioManager;

    .line 181
    .line 182
    invoke-virtual {v2, p1, v3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 183
    .line 184
    .line 185
    :goto_1
    iput v0, p0, Lha/g1;->t:I

    .line 186
    .line 187
    iput v0, p0, Lha/g1;->v:I

    .line 188
    .line 189
    :cond_6
    invoke-virtual {p0}, Lha/g1;->b()V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lha/g1;->h:Landroid/widget/TextView;

    .line 193
    .line 194
    new-instance v0, Lha/d1;

    .line 195
    .line 196
    const/4 v1, 0x1

    .line 197
    invoke-direct {v0, p0, v1}, Lha/d1;-><init>(Lha/g1;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 201
    .line 202
    .line 203
    :cond_7
    :goto_2
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 13

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    const-string v1, "\u97f3\u54cd\uff1a"

    .line 4
    .line 5
    const-string v2, "audio"

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/media/AudioManager;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    array-length v5, p0

    .line 21
    if-gt v4, v5, :cond_8

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    goto/16 :goto_9

    .line 30
    .line 31
    :cond_0
    const/4 v5, 0x0

    .line 32
    :goto_1
    const/16 v6, 0x64

    .line 33
    .line 34
    if-gt v5, v6, :cond_7

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_1
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    invoke-direct {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 47
    .line 48
    .line 49
    const/4 v7, 0x1

    .line 50
    const/4 v8, 0x0

    .line 51
    :try_start_0
    new-instance v9, Landroid/media/AudioAttributes$Builder;

    .line 52
    .line 53
    invoke-direct {v9}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-virtual {v9, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 61
    .line 62
    .line 63
    new-instance v10, Landroid/media/AudioFormat$Builder;

    .line 64
    .line 65
    invoke-direct {v10}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    const v11, 0xbb80

    .line 73
    .line 74
    .line 75
    invoke-virtual {v10, v11}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    const/4 v12, 0x4

    .line 80
    invoke-virtual {v10, v12}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-virtual {v10}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-static {v11, v12, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    new-instance v12, Landroid/media/AudioTrack$Builder;

    .line 93
    .line 94
    invoke-direct {v12}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v12, v9}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-virtual {v9, v10}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    const/16 v10, 0x1000

    .line 110
    .line 111
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    invoke-virtual {v9, v10}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    invoke-virtual {v9, v7}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-virtual {v9}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    if-lez v4, :cond_2

    .line 128
    .line 129
    add-int/lit8 v9, v4, -0x1

    .line 130
    .line 131
    aget-object v10, p0, v9

    .line 132
    .line 133
    invoke-virtual {v8, v10}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 134
    .line 135
    .line 136
    new-instance v10, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    aget-object v11, p0, v9

    .line 145
    .line 146
    invoke-virtual {v11}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    aget-object v9, p0, v9

    .line 157
    .line 158
    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getId()I

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v9, ")\n\u901a\u9053\uff1a"

    .line 166
    .line 167
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-static {v9}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :catchall_0
    move-exception v9

    .line 182
    goto :goto_4

    .line 183
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v10, "\u97f3\u54cd\uff1a\u9ed8\u8ba4\n\u901a\u9053\uff1a"

    .line 189
    .line 190
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    invoke-static {v9}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :goto_2
    invoke-virtual {v8}, Landroid/media/AudioTrack;->play()V

    .line 204
    .line 205
    .line 206
    invoke-static {v8, v6}, Lha/g1;->d(Landroid/media/AudioTrack;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 207
    .line 208
    .line 209
    const-wide/16 v9, 0xc8

    .line 210
    .line 211
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    .line 216
    .line 217
    :goto_3
    :try_start_1
    invoke-virtual {v8}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    .line 219
    .line 220
    :catchall_1
    invoke-virtual {v8}, Landroid/media/AudioTrack;->release()V

    .line 221
    .line 222
    .line 223
    goto :goto_6

    .line 224
    :goto_4
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    const-string v11, "\u6b64\u97f3\u54cd\u5199\u5165\u592a\u6162"

    .line 233
    .line 234
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    if-eqz v10, :cond_4

    .line 239
    .line 240
    if-lez v4, :cond_3

    .line 241
    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    add-int/lit8 v9, v4, -0x1

    .line 251
    .line 252
    aget-object v10, p0, v9

    .line 253
    .line 254
    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    aget-object v9, p0, v9

    .line 265
    .line 266
    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getId()I

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v9, ")\n\u6b64\u97f3\u54cd\u4e0d\u9002\u5408\u4f7f\u7528\uff0c\u5199\u5165\u6162"

    .line 274
    .line 275
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 283
    .line 284
    .line 285
    goto :goto_5

    .line 286
    :catchall_2
    move-exception p0

    .line 287
    goto :goto_7

    .line 288
    :cond_3
    :goto_5
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 289
    .line 290
    .line 291
    if-eqz v8, :cond_7

    .line 292
    .line 293
    :try_start_3
    invoke-virtual {v8}, Landroid/media/AudioTrack;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 294
    .line 295
    .line 296
    :catchall_3
    invoke-virtual {v8}, Landroid/media/AudioTrack;->release()V

    .line 297
    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_4
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 301
    .line 302
    .line 303
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 304
    .line 305
    .line 306
    if-eqz v8, :cond_5

    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_5
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 310
    .line 311
    goto/16 :goto_1

    .line 312
    .line 313
    :goto_7
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 314
    .line 315
    .line 316
    if-eqz v8, :cond_6

    .line 317
    .line 318
    :try_start_5
    invoke-virtual {v8}, Landroid/media/AudioTrack;->stop()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 319
    .line 320
    .line 321
    :catchall_4
    invoke-virtual {v8}, Landroid/media/AudioTrack;->release()V

    .line 322
    .line 323
    .line 324
    :cond_6
    throw p0

    .line 325
    :cond_7
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_8
    :goto_9
    return-void
.end method

.method public static d(Landroid/media/AudioTrack;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 13

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0x400

    .line 6
    .line 7
    new-array v3, v2, [S

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    :goto_0
    const/16 v7, 0x12c0

    .line 13
    .line 14
    if-ge v5, v7, :cond_6

    .line 15
    .line 16
    rsub-int v7, v5, 0x12c0

    .line 17
    .line 18
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    const/4 v8, 0x0

    .line 23
    :goto_1
    if-ge v8, v7, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    if-eqz v9, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    add-int v9, v5, v8

    .line 33
    .line 34
    int-to-double v9, v9

    .line 35
    const-wide v11, 0x40a59933fc6a96c1L    # 2764.601535159018

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    .line 41
    .line 42
    .line 43
    mul-double v9, v9, v11

    .line 44
    .line 45
    const v11, 0xbb80

    .line 46
    .line 47
    .line 48
    int-to-double v11, v11

    .line 49
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    .line 50
    .line 51
    .line 52
    div-double/2addr v9, v11

    .line 53
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v9

    .line 57
    const-wide v11, 0x40dfffc000000000L    # 32767.0

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    mul-double v9, v9, v11

    .line 63
    .line 64
    const-wide v11, 0x3fd3333333333333L    # 0.3

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    mul-double v9, v9, v11

    .line 70
    .line 71
    double-to-int v9, v9

    .line 72
    int-to-short v9, v9

    .line 73
    aput-short v9, v3, v8

    .line 74
    .line 75
    add-int/lit8 v8, v8, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {p0, v3, v4, v7}, Landroid/media/AudioTrack;->write([SII)I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    sub-long/2addr v8, v0

    .line 87
    const-wide/16 v10, 0x1f4

    .line 88
    .line 89
    cmp-long v12, v8, v10

    .line 90
    .line 91
    if-gtz v12, :cond_5

    .line 92
    .line 93
    const-string v8, "AudioTrack write failed: "

    .line 94
    .line 95
    if-ltz v7, :cond_4

    .line 96
    .line 97
    if-nez v7, :cond_3

    .line 98
    .line 99
    add-int/lit8 v6, v6, 0x1

    .line 100
    .line 101
    const/4 v9, 0x2

    .line 102
    if-gt v6, v9, :cond_2

    .line 103
    .line 104
    const-wide/16 v7, 0x32

    .line 105
    .line 106
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catch_0
    nop

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 113
    .line 114
    invoke-static {v7, v8}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_3
    add-int/2addr v5, v7

    .line 123
    goto :goto_0

    .line 124
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    .line 125
    .line 126
    invoke-static {v7, v8}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_5
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 135
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    new-instance p0, Ljava/lang/RuntimeException;

    .line 143
    .line 144
    const-string p1, "\u6b64\u97f3\u54cd\u5199\u5165\u592a\u6162\uff0c\u4e0d\u9002\u5408\u4f7f\u7528"

    .line 145
    .line 146
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0

    .line 150
    :cond_6
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/a4;->b:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "audio"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/media/AudioManager;

    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1a

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-lt v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lha/g1;->C:Landroid/media/AudioFocusRequest;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {v0, v1}, Leg/a;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lha/g1;->C:Landroid/media/AudioFocusRequest;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lha/g1;->D:Lha/e1;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 33
    .line 34
    .line 35
    iput-object v3, p0, Lha/g1;->D:Lha/e1;

    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/g1;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lha/g1;->v:I

    .line 8
    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget v2, p0, Lha/g1;->t:I

    .line 12
    .line 13
    if-ltz v2, :cond_1

    .line 14
    .line 15
    const/16 v3, 0x64

    .line 16
    .line 17
    if-lt v2, v3, :cond_0

    .line 18
    .line 19
    sget-object v1, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 20
    .line 21
    sub-int/2addr v2, v3

    .line 22
    invoke-virtual {v1, v2, v0}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v3, p0, Lha/g1;->w:Landroid/media/AudioManager;

    .line 27
    .line 28
    invoke-virtual {v3, v2, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lha/g1;->l:Lra/c;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-virtual {v0}, Lra/c;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :catch_0
    iput-object v1, p0, Lha/g1;->l:Lra/c;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    iput-object v1, p0, Lha/g1;->l:Lra/c;

    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lha/g1;->b()V

    .line 47
    .line 48
    .line 49
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/16 v2, 0x64

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    invoke-super/range {p0 .. p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    iget-object v6, v0, Lha/a4;->b:Landroid/content/Context;

    .line 13
    .line 14
    const-string v7, "audio"

    .line 15
    .line 16
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v8

    .line 20
    check-cast v8, Landroid/media/AudioManager;

    .line 21
    .line 22
    iput-object v8, v0, Lha/g1;->w:Landroid/media/AudioManager;

    .line 23
    .line 24
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v9, 0x15

    .line 27
    .line 28
    const/16 v10, 0x17

    .line 29
    .line 30
    if-ge v8, v10, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    check-cast v7, Landroid/media/AudioManager;

    .line 38
    .line 39
    invoke-static {v7}, La2/a;->y(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    array-length v8, v7

    .line 44
    const/4 v11, 0x0

    .line 45
    :goto_0
    if-ge v11, v8, :cond_2

    .line 46
    .line 47
    aget-object v12, v7, v11

    .line 48
    .line 49
    invoke-static {v12}, La2/a;->c(Landroid/media/AudioDeviceInfo;)I

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    if-ne v12, v9, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/2addr v11, v5

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    :goto_1
    new-instance v7, Landroid/media/AudioAttributes$Builder;

    .line 59
    .line 60
    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    new-instance v8, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    :goto_2
    const/16 v12, 0x65

    .line 74
    .line 75
    if-ge v11, v12, :cond_3

    .line 76
    .line 77
    :try_start_0
    invoke-virtual {v7, v11}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    new-instance v12, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 81
    .line 82
    const-string v13, "\u901a\u9053"

    .line 83
    .line 84
    invoke-static {v11, v13}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    invoke-direct {v12, v13, v11}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :catch_0
    add-int/2addr v11, v5

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .line 98
    if-lt v7, v9, :cond_4

    .line 99
    .line 100
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 101
    .line 102
    const-string v12, "\u901a\u90531"

    .line 103
    .line 104
    invoke-direct {v11, v12, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    iput-object v11, v0, Lha/g1;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 111
    .line 112
    const-string v12, "\u901a\u90533"

    .line 113
    .line 114
    invoke-direct {v11, v12, v1}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    iput-object v11, v0, Lha/g1;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 118
    .line 119
    :goto_3
    const v11, 0x7f0b05f9

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    check-cast v11, Landroid/widget/TextView;

    .line 127
    .line 128
    iget-object v12, v0, Lha/g1;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 129
    .line 130
    iget-object v12, v12, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    const v12, 0x7f0b05f8

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    new-instance v13, Lha/a1;

    .line 143
    .line 144
    invoke-direct {v13, v0, v8, v11, v5}, Lha/a1;-><init>(Lha/g1;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    new-instance v8, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 156
    .line 157
    const-string v12, "\u65b9\u6848\u4e00\uff1a\u7cfb\u7edf\u964d\u566a+\u8f6f\u4ef6\u964d\u566a"

    .line 158
    .line 159
    invoke-direct {v11, v12, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    iput-object v11, v0, Lha/g1;->n:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 163
    .line 164
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 168
    .line 169
    const-string v12, "\u65b9\u6848\u4e8c\uff1a\u7cfb\u7edf\u964d\u566a"

    .line 170
    .line 171
    invoke-direct {v11, v12, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 178
    .line 179
    const-string v12, "\u65b9\u6848\u4e09\uff1a\u8f6f\u4ef6\u964d\u566a"

    .line 180
    .line 181
    invoke-direct {v11, v12, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    const v11, 0x7f0b061b

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    check-cast v11, Landroid/widget/TextView;

    .line 195
    .line 196
    iget-object v12, v0, Lha/g1;->n:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 197
    .line 198
    iget-object v12, v12, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    const v12, 0x7f0b061a

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    new-instance v13, Lha/a1;

    .line 211
    .line 212
    invoke-direct {v13, v0, v8, v11, v1}, Lha/a1;-><init>(Lha/g1;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    .line 217
    .line 218
    new-instance v8, Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .line 222
    .line 223
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 224
    .line 225
    const-string v12, "\u65e0"

    .line 226
    .line 227
    const/4 v13, -0x1

    .line 228
    invoke-direct {v11, v12, v13}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 235
    .line 236
    const-string v12, "\u64ad\u653e\u65f6\u964d\u4f4e\u5176\u5b83\u97f3\u91cf"

    .line 237
    .line 238
    invoke-direct {v11, v12, v1}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 245
    .line 246
    const-string v12, "\u64ad\u653e\u65f6\u6682\u505c\u5176\u5b83\u97f3\u9891"

    .line 247
    .line 248
    invoke-direct {v11, v12, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    iput-object v11, v0, Lha/g1;->p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 252
    .line 253
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    if-lt v7, v9, :cond_6

    .line 257
    .line 258
    sget-object v9, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 259
    .line 260
    sget-object v9, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 261
    .line 262
    iget-boolean v9, v9, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 263
    .line 264
    if-nez v9, :cond_5

    .line 265
    .line 266
    const-class v9, Lcom/yunpan/appmanage/service/StartService;

    .line 267
    .line 268
    invoke-static {v6, v9}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-eqz v6, :cond_6

    .line 273
    .line 274
    :cond_5
    const-string v6, "\u64ad\u653e\u65f6\u6682\u505c\u5176\u5b83\u97f3\u4e50app\u97f3\u9891(\u667a)"

    .line 275
    .line 276
    const/16 v9, 0xc8

    .line 277
    .line 278
    invoke-static {v6, v9, v8}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 279
    .line 280
    .line 281
    :cond_6
    const v6, 0x7f0b0619

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    check-cast v6, Landroid/widget/TextView;

    .line 289
    .line 290
    iget-object v9, v0, Lha/g1;->p:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 291
    .line 292
    iget-object v9, v9, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    .line 296
    .line 297
    const v9, 0x7f0b0618

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    new-instance v11, Lha/a1;

    .line 305
    .line 306
    invoke-direct {v11, v0, v8, v6, v3}, Lha/a1;-><init>(Lha/g1;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v9, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    .line 311
    .line 312
    new-instance v6, Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .line 316
    .line 317
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 318
    .line 319
    const-string v9, "\u4e0d\u4fee\u6539\u7cfb\u7edf\u97f3\u91cf"

    .line 320
    .line 321
    invoke-direct {v8, v9, v13}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    iput-object v8, v0, Lha/g1;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 325
    .line 326
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 330
    .line 331
    const-string v9, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u901a\u8bdd\u97f3\u91cf)"

    .line 332
    .line 333
    invoke-direct {v8, v9, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 340
    .line 341
    const-string v9, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u7cfb\u7edf\u97f3\u91cf)"

    .line 342
    .line 343
    invoke-direct {v8, v9, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 350
    .line 351
    const-string v9, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u94c3\u58f0\u97f3\u91cf)"

    .line 352
    .line 353
    invoke-direct {v8, v9, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 360
    .line 361
    const-string v9, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u5a92\u4f53\u97f3\u91cf)"

    .line 362
    .line 363
    invoke-direct {v8, v9, v1}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 370
    .line 371
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u95f9\u949f\u97f3\u91cf)"

    .line 372
    .line 373
    const/4 v9, 0x4

    .line 374
    invoke-direct {v1, v8, v9}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 381
    .line 382
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(\u901a\u77e5\u97f3\u91cf)"

    .line 383
    .line 384
    const/4 v9, 0x5

    .line 385
    invoke-direct {v1, v8, v9}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 392
    .line 393
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(MF\u97f3\u91cf)"

    .line 394
    .line 395
    const/16 v9, 0x8

    .line 396
    .line 397
    invoke-direct {v1, v8, v9}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    const/16 v1, 0x1a

    .line 404
    .line 405
    if-lt v7, v1, :cond_7

    .line 406
    .line 407
    const-string v8, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(ACC\u97f3\u91cf)"

    .line 408
    .line 409
    const/16 v9, 0xa

    .line 410
    .line 411
    invoke-static {v8, v9, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 412
    .line 413
    .line 414
    :cond_7
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 415
    .line 416
    const-string v9, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(6)"

    .line 417
    .line 418
    const/4 v11, 0x6

    .line 419
    invoke-direct {v8, v9, v11}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 426
    .line 427
    const-string v9, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(7)"

    .line 428
    .line 429
    const/4 v11, 0x7

    .line 430
    invoke-direct {v8, v9, v11}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 437
    .line 438
    const-string v9, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(9)"

    .line 439
    .line 440
    const/16 v11, 0x9

    .line 441
    .line 442
    invoke-direct {v8, v9, v11}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 449
    .line 450
    const-string v9, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(11)"

    .line 451
    .line 452
    const/16 v11, 0xb

    .line 453
    .line 454
    invoke-direct {v8, v9, v11}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    if-lt v7, v1, :cond_9

    .line 461
    .line 462
    sget-object v1, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 463
    .line 464
    iget-object v1, v1, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 465
    .line 466
    if-eqz v1, :cond_9

    .line 467
    .line 468
    const/4 v1, 0x0

    .line 469
    :goto_4
    const/16 v7, 0x20

    .line 470
    .line 471
    if-ge v1, v7, :cond_9

    .line 472
    .line 473
    sget-object v7, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 474
    .line 475
    add-int/lit8 v8, v1, -0x64

    .line 476
    .line 477
    invoke-virtual {v7, v8}, Lcom/yunpan/appmanage/carsdk/k0;->d(I)I

    .line 478
    .line 479
    .line 480
    move-result v7

    .line 481
    if-lez v7, :cond_8

    .line 482
    .line 483
    new-instance v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 484
    .line 485
    add-int/lit8 v8, v1, 0x64

    .line 486
    .line 487
    const-string v9, "\u64ad\u653e\u65f6\u4fee\u6539\u97f3\u91cf(Car\u901a\u90530)"

    .line 488
    .line 489
    invoke-direct {v7, v9, v8}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    :cond_8
    add-int/2addr v1, v5

    .line 496
    goto :goto_4

    .line 497
    :cond_9
    const v1, 0x7f0b05fc

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    check-cast v1, Landroid/widget/TextView;

    .line 505
    .line 506
    iget-object v7, v0, Lha/g1;->s:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 507
    .line 508
    iget-object v7, v7, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 509
    .line 510
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    .line 512
    .line 513
    const v7, 0x7f0b05fb

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 517
    .line 518
    .line 519
    move-result-object v7

    .line 520
    new-instance v8, Lha/a1;

    .line 521
    .line 522
    invoke-direct {v8, v0, v6, v1, v4}, Lha/a1;-><init>(Lha/g1;Ljava/util/ArrayList;Landroid/widget/TextView;I)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    .line 527
    .line 528
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 529
    .line 530
    const-string v6, "\u7cfb\u7edf\u9ed8\u8ba4"

    .line 531
    .line 532
    invoke-direct {v1, v6, v13}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 533
    .line 534
    .line 535
    iput-object v1, v0, Lha/g1;->q:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 536
    .line 537
    iget-object v6, v0, Lha/g1;->y:Ljava/util/ArrayList;

    .line 538
    .line 539
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 543
    .line 544
    const-string v7, ")"

    .line 545
    .line 546
    const-string v8, "("

    .line 547
    .line 548
    if-lt v1, v10, :cond_a

    .line 549
    .line 550
    :try_start_1
    iget-object v1, v0, Lha/g1;->w:Landroid/media/AudioManager;

    .line 551
    .line 552
    invoke-static {v1}, La2/a;->y(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    array-length v9, v1

    .line 557
    const/4 v11, 0x0

    .line 558
    :goto_5
    if-ge v11, v9, :cond_a

    .line 559
    .line 560
    aget-object v12, v1, v11

    .line 561
    .line 562
    new-instance v14, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 563
    .line 564
    new-instance v15, Ljava/lang/StringBuilder;

    .line 565
    .line 566
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .line 568
    .line 569
    invoke-static {v12}, Ld2/c;->j(Landroid/media/AudioDeviceInfo;)Ljava/lang/CharSequence;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-static {v12}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    invoke-static {v12}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 594
    .line 595
    .line 596
    move-result v12

    .line 597
    invoke-direct {v14, v3, v12}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 601
    .line 602
    .line 603
    add-int/2addr v11, v5

    .line 604
    const/4 v3, 0x2

    .line 605
    goto :goto_5

    .line 606
    :catch_1
    :cond_a
    const v1, 0x7f0b0571

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 614
    .line 615
    iput-object v1, v0, Lha/g1;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 616
    .line 617
    const v1, 0x7f0b0572

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    check-cast v1, Landroid/widget/TextView;

    .line 625
    .line 626
    iget-object v3, v0, Lha/g1;->q:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 627
    .line 628
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 629
    .line 630
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    .line 632
    .line 633
    iget-object v3, v0, Lha/g1;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 634
    .line 635
    new-instance v6, Lha/z0;

    .line 636
    .line 637
    invoke-direct {v6, v0, v1, v4}, Lha/z0;-><init>(Lha/g1;Landroid/widget/TextView;I)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    .line 642
    .line 643
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 644
    .line 645
    const-string v3, "\u9ed8\u8ba4"

    .line 646
    .line 647
    invoke-direct {v1, v3, v13}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 648
    .line 649
    .line 650
    iput-object v1, v0, Lha/g1;->r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 651
    .line 652
    iget-object v3, v0, Lha/g1;->A:Ljava/util/ArrayList;

    .line 653
    .line 654
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 658
    .line 659
    if-lt v1, v10, :cond_b

    .line 660
    .line 661
    :try_start_2
    iget-object v1, v0, Lha/g1;->w:Landroid/media/AudioManager;

    .line 662
    .line 663
    invoke-static {v1}, Ld2/c;->C(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    array-length v6, v1

    .line 668
    const/4 v9, 0x0

    .line 669
    :goto_6
    if-ge v9, v6, :cond_b

    .line 670
    .line 671
    aget-object v10, v1, v9

    .line 672
    .line 673
    new-instance v11, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 674
    .line 675
    new-instance v12, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    .line 679
    .line 680
    invoke-static {v10}, Ld2/c;->j(Landroid/media/AudioDeviceInfo;)Ljava/lang/CharSequence;

    .line 681
    .line 682
    .line 683
    move-result-object v13

    .line 684
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-static {v10}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 691
    .line 692
    .line 693
    move-result v13

    .line 694
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v12

    .line 704
    invoke-static {v10}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 705
    .line 706
    .line 707
    move-result v10

    .line 708
    invoke-direct {v11, v12, v10}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 712
    .line 713
    .line 714
    add-int/2addr v9, v5

    .line 715
    goto :goto_6

    .line 716
    :catch_2
    :cond_b
    const v1, 0x7f0b051f

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 724
    .line 725
    iput-object v1, v0, Lha/g1;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 726
    .line 727
    const v1, 0x7f0b0520

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    check-cast v1, Landroid/widget/TextView;

    .line 735
    .line 736
    iget-object v3, v0, Lha/g1;->r:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 737
    .line 738
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 739
    .line 740
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    .line 742
    .line 743
    iget-object v3, v0, Lha/g1;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 744
    .line 745
    new-instance v6, Lha/z0;

    .line 746
    .line 747
    invoke-direct {v6, v0, v1, v5}, Lha/z0;-><init>(Lha/g1;Landroid/widget/TextView;I)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    .line 752
    .line 753
    const v1, 0x7f0b03e4

    .line 754
    .line 755
    .line 756
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    check-cast v1, Landroid/widget/TextView;

    .line 761
    .line 762
    iput-object v1, v0, Lha/g1;->i:Landroid/widget/TextView;

    .line 763
    .line 764
    new-instance v3, Lha/f1;

    .line 765
    .line 766
    invoke-direct {v3, v0, v4}, Lha/f1;-><init>(Lha/g1;I)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    .line 771
    .line 772
    const v1, 0x7f0b0566

    .line 773
    .line 774
    .line 775
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    check-cast v1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 780
    .line 781
    iput-object v1, v0, Lha/g1;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 782
    .line 783
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 784
    .line 785
    .line 786
    iget-object v1, v0, Lha/g1;->j:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 787
    .line 788
    const/16 v3, 0x50

    .line 789
    .line 790
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 791
    .line 792
    .line 793
    const v1, 0x7f0b0562

    .line 794
    .line 795
    .line 796
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    check-cast v1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 801
    .line 802
    iput-object v1, v0, Lha/g1;->k:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 803
    .line 804
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 805
    .line 806
    .line 807
    iget-object v1, v0, Lha/g1;->k:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 808
    .line 809
    const/16 v2, 0x1e

    .line 810
    .line 811
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 812
    .line 813
    .line 814
    const v1, 0x7f0b0359

    .line 815
    .line 816
    .line 817
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    check-cast v1, Landroid/widget/TextView;

    .line 822
    .line 823
    iput-object v1, v0, Lha/g1;->h:Landroid/widget/TextView;

    .line 824
    .line 825
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 826
    .line 827
    .line 828
    iget-object v1, v0, Lha/g1;->h:Landroid/widget/TextView;

    .line 829
    .line 830
    new-instance v2, Lha/f1;

    .line 831
    .line 832
    invoke-direct {v2, v0, v5}, Lha/f1;-><init>(Lha/g1;I)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    .line 837
    .line 838
    const v1, 0x7f0b03f3

    .line 839
    .line 840
    .line 841
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    check-cast v1, Landroid/widget/TextView;

    .line 846
    .line 847
    new-instance v2, Lha/f1;

    .line 848
    .line 849
    const/4 v3, 0x2

    .line 850
    invoke-direct {v2, v0, v3}, Lha/f1;-><init>(Lha/g1;I)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 854
    .line 855
    .line 856
    return-void
.end method
