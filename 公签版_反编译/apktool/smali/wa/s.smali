.class public final Lwa/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static O:Lwa/s;


# instance fields
.field public A:Lwa/p;

.field public B:Landroid/media/session/MediaController;

.field public final C:Landroid/media/AudioManager;

.field public D:Landroid/media/MediaPlayer;

.field public E:Landroid/media/AudioTrack;

.field public F:Z

.field public G:Lra/c;

.field public H:Lv8/a;

.field public I:I

.field public J:I

.field public K:Landroid/media/audiofx/LoudnessEnhancer;

.field public L:Ljava/util/ArrayList;

.field public M:Landroid/speech/tts/TextToSpeech;

.field public final N:Landroidx/activity/h;

.field public final a:Z

.field public b:Ljava/util/List;

.field public c:Lv8/a;

.field public d:Ljava/lang/String;

.field public e:Lcom/yunpan/appmanage/service/AccService;

.field public f:Lcom/yunpan/appmanage/service/StartService;

.field public g:I

.field public h:J

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/util/HashMap;

.field public final k:Ljava/util/HashSet;

.field public final l:Ljava/util/HashSet;

.field public m:Lag/c;

.field public final n:Ljava/util/HashSet;

.field public final o:Ljava/util/HashMap;

.field public p:Z

.field public q:Z

.field public final r:Ljava/util/ArrayList;

.field public final s:Ljava/util/HashMap;

.field public final t:Ljava/util/HashMap;

.field public final u:Ljava/util/HashMap;

.field public final v:Ljava/util/HashMap;

.field public w:Lz7/s;

.field public x:Landroid/media/AudioFocusRequest;

.field public y:Lwa/k;

.field public z:Landroid/media/AudioFocusRequest;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lwa/s;->a:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lwa/s;->b:Ljava/util/List;

    .line 9
    .line 10
    iput-object v1, p0, Lwa/s;->c:Lv8/a;

    .line 11
    .line 12
    const-string v2, ""

    .line 13
    .line 14
    iput-object v2, p0, Lwa/s;->d:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 17
    .line 18
    iput-object v1, p0, Lwa/s;->f:Lcom/yunpan/appmanage/service/StartService;

    .line 19
    .line 20
    iput v0, p0, Lwa/s;->g:I

    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    iput-wide v2, p0, Lwa/s;->h:J

    .line 25
    .line 26
    new-instance v2, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lwa/s;->i:Ljava/util/HashMap;

    .line 32
    .line 33
    new-instance v2, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lwa/s;->j:Ljava/util/HashMap;

    .line 39
    .line 40
    new-instance v2, Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lwa/s;->k:Ljava/util/HashSet;

    .line 46
    .line 47
    new-instance v2, Ljava/util/HashSet;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lwa/s;->l:Ljava/util/HashSet;

    .line 53
    .line 54
    iput-object v1, p0, Lwa/s;->m:Lag/c;

    .line 55
    .line 56
    new-instance v2, Ljava/util/HashSet;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lwa/s;->n:Ljava/util/HashSet;

    .line 62
    .line 63
    new-instance v2, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lwa/s;->o:Ljava/util/HashMap;

    .line 69
    .line 70
    iput-boolean v0, p0, Lwa/s;->p:Z

    .line 71
    .line 72
    iput-boolean v0, p0, Lwa/s;->q:Z

    .line 73
    .line 74
    new-instance v2, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v2, p0, Lwa/s;->r:Ljava/util/ArrayList;

    .line 80
    .line 81
    new-instance v2, Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v2, p0, Lwa/s;->s:Ljava/util/HashMap;

    .line 87
    .line 88
    new-instance v2, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v2, p0, Lwa/s;->t:Ljava/util/HashMap;

    .line 94
    .line 95
    new-instance v2, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v2, p0, Lwa/s;->u:Ljava/util/HashMap;

    .line 101
    .line 102
    new-instance v2, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v2, p0, Lwa/s;->v:Ljava/util/HashMap;

    .line 108
    .line 109
    iput-object v1, p0, Lwa/s;->w:Lz7/s;

    .line 110
    .line 111
    iput-object v1, p0, Lwa/s;->B:Landroid/media/session/MediaController;

    .line 112
    .line 113
    iput-object v1, p0, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 114
    .line 115
    iput-boolean v0, p0, Lwa/s;->F:Z

    .line 116
    .line 117
    iput-object v1, p0, Lwa/s;->G:Lra/c;

    .line 118
    .line 119
    iput-object v1, p0, Lwa/s;->H:Lv8/a;

    .line 120
    .line 121
    const/4 v2, -0x1

    .line 122
    iput v2, p0, Lwa/s;->I:I

    .line 123
    .line 124
    iput v2, p0, Lwa/s;->J:I

    .line 125
    .line 126
    iput-object v1, p0, Lwa/s;->K:Landroid/media/audiofx/LoudnessEnhancer;

    .line 127
    .line 128
    new-instance v1, Landroidx/activity/h;

    .line 129
    .line 130
    const/16 v2, 0x14

    .line 131
    .line 132
    invoke-direct {v1, v2, p0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iput-object v1, p0, Lwa/s;->N:Landroidx/activity/h;

    .line 136
    .line 137
    :try_start_0
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 138
    .line 139
    iget-object v2, v1, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 140
    .line 141
    const-string v3, "android.permission.DEVICE_POWER"

    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-nez v1, :cond_0

    .line 152
    .line 153
    const/4 v0, 0x1

    .line 154
    :cond_0
    iput-boolean v0, p0, Lwa/s;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    :catch_0
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 157
    .line 158
    const-string v1, "audio"

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Landroid/media/AudioManager;

    .line 165
    .line 166
    iput-object v0, p0, Lwa/s;->C:Landroid/media/AudioManager;

    .line 167
    .line 168
    return-void
.end method

.method public static a(Lwa/s;IILandroid/media/AudioManager;ILjava/io/File;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x64

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-ltz p1, :cond_1

    .line 10
    .line 11
    if-ltz p2, :cond_1

    .line 12
    .line 13
    if-lt p1, v0, :cond_0

    .line 14
    .line 15
    sget-object v2, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lcom/yunpan/appmanage/carsdk/k0;->f(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iput v3, p0, Lwa/s;->J:I

    .line 22
    .line 23
    add-int/lit8 v3, p1, -0x64

    .line 24
    .line 25
    invoke-virtual {v2, v3, p2}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p3, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, p0, Lwa/s;->J:I

    .line 34
    .line 35
    invoke-virtual {p3, p1, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iput p1, p0, Lwa/s;->I:I

    .line 39
    .line 40
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 p2, 0x13

    .line 43
    .line 44
    if-lt p1, p2, :cond_2

    .line 45
    .line 46
    if-lez p4, :cond_2

    .line 47
    .line 48
    new-instance p1, Landroid/media/audiofx/LoudnessEnhancer;

    .line 49
    .line 50
    iget-object p2, p0, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-direct {p1, p2}, Landroid/media/audiofx/LoudnessEnhancer;-><init>(I)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lwa/s;->K:Landroid/media/audiofx/LoudnessEnhancer;

    .line 60
    .line 61
    invoke-virtual {p1, p4}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lwa/s;->K:Landroid/media/audiofx/LoudnessEnhancer;

    .line 65
    .line 66
    const/4 p2, 0x1

    .line 67
    invoke-virtual {p1, p2}, Landroid/media/audiofx/LoudnessEnhancer;->setEnabled(Z)I

    .line 68
    .line 69
    .line 70
    :cond_2
    iput-boolean v1, p0, Lwa/s;->F:Z

    .line 71
    .line 72
    const/16 p1, 0x400

    .line 73
    .line 74
    const/4 p2, -0x1

    .line 75
    :try_start_0
    new-array p1, p1, [B

    .line 76
    .line 77
    new-instance p4, Ljava/io/FileInputStream;

    .line 78
    .line 79
    invoke-direct {p4, p5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {p4, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 83
    .line 84
    .line 85
    move-result p5

    .line 86
    if-eq p5, p2, :cond_4

    .line 87
    .line 88
    iget-boolean v2, p0, Lwa/s;->F:Z

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    iget-object v2, p0, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 94
    .line 95
    invoke-virtual {v2, p1, v1, p5}, Landroid/media/AudioTrack;->write([BII)I

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    :goto_2
    iget-object p1, p0, Lwa/s;->K:Landroid/media/audiofx/LoudnessEnhancer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    .line 101
    const/4 p4, 0x0

    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    :try_start_1
    invoke-virtual {p1}, Landroid/media/audiofx/LoudnessEnhancer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .line 106
    .line 107
    :catch_0
    :try_start_2
    iput-object p4, p0, Lwa/s;->K:Landroid/media/audiofx/LoudnessEnhancer;

    .line 108
    .line 109
    :cond_5
    iget p1, p0, Lwa/s;->J:I

    .line 110
    .line 111
    if-ltz p1, :cond_7

    .line 112
    .line 113
    iget p5, p0, Lwa/s;->I:I

    .line 114
    .line 115
    if-ltz p5, :cond_7

    .line 116
    .line 117
    if-lt p5, v0, :cond_6

    .line 118
    .line 119
    sget-object p3, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 120
    .line 121
    sub-int/2addr p5, v0

    .line 122
    invoke-virtual {p3, p5, p1}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    invoke-virtual {p3, p5, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 127
    .line 128
    .line 129
    :goto_3
    iput p2, p0, Lwa/s;->I:I

    .line 130
    .line 131
    iput p2, p0, Lwa/s;->J:I

    .line 132
    .line 133
    :cond_7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 134
    .line 135
    const/16 p3, 0x15

    .line 136
    .line 137
    if-lt p1, p3, :cond_8

    .line 138
    .line 139
    iget-object p1, p0, Lwa/s;->B:Landroid/media/session/MediaController;

    .line 140
    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    invoke-static {p1}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p1}, Lt0/e;->D(Landroid/media/session/MediaController$TransportControls;)V

    .line 148
    .line 149
    .line 150
    iput-object p4, p0, Lwa/s;->B:Landroid/media/session/MediaController;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    .line 152
    :catch_1
    :cond_8
    :try_start_3
    iget-object p1, p0, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    .line 155
    .line 156
    .line 157
    if-eq p6, p2, :cond_9

    .line 158
    .line 159
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 160
    .line 161
    const/16 p2, 0x17

    .line 162
    .line 163
    if-lt p1, p2, :cond_9

    .line 164
    .line 165
    iget-object p1, p0, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 166
    .line 167
    invoke-static {p1}, Ld2/c;->p(Landroid/media/AudioTrack;)V

    .line 168
    .line 169
    .line 170
    :cond_9
    iget-object p1, p0, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 173
    .line 174
    .line 175
    :catch_2
    invoke-virtual {p0}, Lwa/s;->e()V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public static b(Lwa/s;IIILandroid/media/AudioManager;Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x13

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/media/audiofx/LoudnessEnhancer;

    .line 13
    .line 14
    iget-object v1, p0, Lwa/s;->D:Landroid/media/MediaPlayer;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Landroid/media/audiofx/LoudnessEnhancer;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lwa/s;->K:Landroid/media/audiofx/LoudnessEnhancer;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lwa/s;->K:Landroid/media/audiofx/LoudnessEnhancer;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Landroid/media/audiofx/LoudnessEnhancer;->setEnabled(Z)I

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p5}, Landroid/media/MediaPlayer;->start()V

    .line 35
    .line 36
    .line 37
    if-ltz p2, :cond_2

    .line 38
    .line 39
    if-ltz p3, :cond_2

    .line 40
    .line 41
    const/16 p1, 0x64

    .line 42
    .line 43
    if-lt p2, p1, :cond_1

    .line 44
    .line 45
    sget-object p1, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/carsdk/k0;->f(I)I

    .line 48
    .line 49
    .line 50
    move-result p4

    .line 51
    iput p4, p0, Lwa/s;->J:I

    .line 52
    .line 53
    add-int/lit8 p4, p2, -0x64

    .line 54
    .line 55
    invoke-virtual {p1, p4, p3}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p4, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput p1, p0, Lwa/s;->J:I

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-virtual {p4, p2, p3, p1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iput p2, p0, Lwa/s;->I:I

    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method public static declared-synchronized c()Lwa/s;
    .locals 2

    .line 1
    const-class v0, Lwa/s;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lwa/s;->O:Lwa/s;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lwa/s;

    .line 9
    .line 10
    invoke-direct {v1}, Lwa/s;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lwa/s;->O:Lwa/s;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lwa/s;->O:Lwa/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method

.method public static h(Landroid/media/session/MediaController;)Z
    .locals 6

    .line 1
    invoke-static {p0}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p0}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lua/t7;->e(Landroid/media/session/PlaybackState;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v0, v2, v4

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 25
    .line 26
    invoke-static {p0}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lua/t7;->p(Landroid/media/session/PlaybackState;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lwa/h;->p(Landroid/media/session/PlaybackState;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Lwa/h;->x(Landroid/media/session/PlaybackState;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    packed-switch p0, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    :pswitch_0
    return v1

    .line 62
    :pswitch_1
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final d(I)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_8

    .line 7
    .line 8
    const/16 v1, 0x64

    .line 9
    .line 10
    if-lt p1, v1, :cond_8

    .line 11
    .line 12
    iget-object p1, p0, Lwa/s;->B:Landroid/media/session/MediaController;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-static {p1}, Lwa/s;->h(Landroid/media/session/MediaController;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lwa/s;->B:Landroid/media/session/MediaController;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :cond_1
    iget-boolean p1, p0, Lwa/s;->a:Z

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    sget-object p1, Lwa/t;->a:Lwa/u;

    .line 37
    .line 38
    iget-object p1, p1, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 39
    .line 40
    const-string v0, "media_session"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/media/session/MediaSessionManager;

    .line 47
    .line 48
    invoke-virtual {p1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/media/session/MediaController;

    .line 74
    .line 75
    invoke-static {v0}, Lwa/s;->h(Landroid/media/session/MediaController;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    iput-object v0, p0, Lwa/s;->B:Landroid/media/session/MediaController;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-object p1, p0, Lwa/s;->b:Ljava/util/List;

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_6

    .line 93
    .line 94
    iget-object p1, p0, Lwa/s;->b:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroid/media/session/MediaController;

    .line 111
    .line 112
    invoke-static {v0}, Lwa/s;->h(Landroid/media/session/MediaController;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    iput-object v0, p0, Lwa/s;->B:Landroid/media/session/MediaController;

    .line 119
    .line 120
    :cond_6
    :goto_0
    iget-object p1, p0, Lwa/s;->B:Landroid/media/session/MediaController;

    .line 121
    .line 122
    if-eqz p1, :cond_7

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 129
    .line 130
    .line 131
    :cond_7
    return-void

    .line 132
    :cond_8
    const/4 v1, -0x1

    .line 133
    if-eq p1, v1, :cond_b

    .line 134
    .line 135
    const/16 v1, 0x32

    .line 136
    .line 137
    if-le p1, v1, :cond_9

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_9
    iget-object v1, p0, Lwa/s;->C:Landroid/media/AudioManager;

    .line 141
    .line 142
    const/16 v3, 0x1a

    .line 143
    .line 144
    const/4 v4, 0x1

    .line 145
    if-lt v0, v3, :cond_a

    .line 146
    .line 147
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    .line 148
    .line 149
    invoke-direct {v0, p1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 150
    .line 151
    .line 152
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    .line 153
    .line 154
    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 155
    .line 156
    .line 157
    const/16 v3, 0xc

    .line 158
    .line 159
    invoke-virtual {p1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v0, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 168
    .line 169
    .line 170
    new-instance p1, Lwa/p;

    .line 171
    .line 172
    const/4 v3, 0x0

    .line 173
    invoke-direct {p1, p0, v3}, Lwa/p;-><init>(Lwa/s;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iput-object p1, p0, Lwa/s;->z:Landroid/media/AudioFocusRequest;

    .line 184
    .line 185
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eq p1, v4, :cond_b

    .line 190
    .line 191
    iput-object v2, p0, Lwa/s;->z:Landroid/media/AudioFocusRequest;

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_a
    new-instance v0, Lwa/p;

    .line 195
    .line 196
    const/4 v3, 0x1

    .line 197
    invoke-direct {v0, p0, v3}, Lwa/p;-><init>(Lwa/s;I)V

    .line 198
    .line 199
    .line 200
    iput-object v0, p0, Lwa/s;->A:Lwa/p;

    .line 201
    .line 202
    const/4 v3, 0x5

    .line 203
    invoke-virtual {v1, v0, v3, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eq p1, v4, :cond_b

    .line 208
    .line 209
    iput-object v2, p0, Lwa/s;->A:Lwa/p;

    .line 210
    .line 211
    :cond_b
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget v0, p0, Lwa/s;->J:I

    .line 2
    .line 3
    iget-object v1, p0, Lwa/s;->C:Landroid/media/AudioManager;

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    iget v2, p0, Lwa/s;->I:I

    .line 8
    .line 9
    if-ltz v2, :cond_1

    .line 10
    .line 11
    const/16 v3, 0x64

    .line 12
    .line 13
    if-lt v2, v3, :cond_0

    .line 14
    .line 15
    sget-object v4, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 16
    .line 17
    sub-int/2addr v2, v3

    .line 18
    invoke-virtual {v4, v2, v0}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lwa/s;->I:I

    .line 28
    .line 29
    iput v0, p0, Lwa/s;->J:I

    .line 30
    .line 31
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v2, 0x1a

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-lt v0, v2, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lwa/s;->z:Landroid/media/AudioFocusRequest;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-static {v1, v0}, Leg/a;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Lwa/s;->z:Landroid/media/AudioFocusRequest;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object v0, p0, Lwa/s;->A:Lwa/p;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 53
    .line 54
    .line 55
    iput-object v3, p0, Lwa/s;->A:Lwa/p;

    .line 56
    .line 57
    :cond_3
    :goto_1
    return-void
.end method

.method public final f(Lcom/yunpan/appmanage/service/AccService;I)V
    .locals 5

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p2, v1, :cond_1

    .line 5
    .line 6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    if-lt p2, v0, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lwa/s;->x:Landroid/media/AudioFocusRequest;

    .line 11
    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p2, p0, Lwa/s;->y:Lwa/k;

    .line 16
    .line 17
    if-eqz p2, :cond_3

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/4 v2, 0x2

    .line 21
    if-ne p2, v2, :cond_3

    .line 22
    .line 23
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    if-lt p2, v0, :cond_2

    .line 26
    .line 27
    iget-object p2, p0, Lwa/s;->x:Landroid/media/AudioFocusRequest;

    .line 28
    .line 29
    if-nez p2, :cond_3

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget-object p2, p0, Lwa/s;->y:Lwa/k;

    .line 33
    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    const/4 v3, 0x0

    .line 41
    if-lt p2, v0, :cond_5

    .line 42
    .line 43
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget-object v0, p2, Lwa/s;->x:Landroid/media/AudioFocusRequest;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    .line 54
    .line 55
    .line 56
    iput-object v3, p2, Lwa/s;->x:Landroid/media/AudioFocusRequest;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    .line 60
    .line 61
    invoke-direct {v0, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Lwa/k;

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    invoke-direct {v2, p2, p1, v4}, Lwa/k;-><init>(Lwa/s;Lcom/yunpan/appmanage/service/AccService;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p2, Lwa/s;->x:Landroid/media/AudioFocusRequest;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eq p1, v1, :cond_7

    .line 86
    .line 87
    iput-object v3, p2, Lwa/s;->x:Landroid/media/AudioFocusRequest;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iget-object v0, p2, Lwa/s;->y:Lwa/k;

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 101
    .line 102
    .line 103
    iput-object v3, p2, Lwa/s;->y:Lwa/k;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_6
    new-instance v0, Lwa/k;

    .line 107
    .line 108
    const/4 v4, 0x0

    .line 109
    invoke-direct {v0, p2, p1, v4}, Lwa/k;-><init>(Lwa/s;Lcom/yunpan/appmanage/service/AccService;I)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p2, Lwa/s;->y:Lwa/k;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    .line 115
    .line 116
    const/4 v4, 0x3

    .line 117
    invoke-virtual {p1, v0, v4, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eq p1, v1, :cond_7

    .line 122
    .line 123
    iput-object v3, p2, Lwa/s;->y:Lwa/k;

    .line 124
    .line 125
    :cond_7
    :goto_0
    return-void
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lwa/s;->L:Ljava/util/ArrayList;

    .line 18
    .line 19
    const-string v2, "."

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    sget-object v4, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/yunpan/appmanage/util/w;->B0:Ljava/lang/String;

    .line 29
    .line 30
    const-string v5, "\\|"

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lwa/s;->L:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    sub-int/2addr v4, v3

    .line 50
    :goto_0
    if-ltz v4, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_1

    .line 63
    .line 64
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v0, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p0, Lwa/s;->L:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_5

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Ljava/lang/String;

    .line 100
    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_4

    .line 118
    .line 119
    return v3

    .line 120
    :cond_5
    return v1
.end method

.method public final i(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwa/s;->w:Lz7/s;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "keys"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lwa/q;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1}, Lwa/q;-><init>(Lwa/s;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final j(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lwa/s;->w:Lz7/s;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    const-string v1, "keys"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lwa/r;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1, p2}, Lwa/r;-><init>(Lwa/s;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final k(Lz7/s;)V
    .locals 11

    .line 1
    const-string v0, "microphoneGain"

    .line 2
    .line 3
    const-string v1, "microphoneId"

    .line 4
    .line 5
    const-string v2, "noiseType"

    .line 6
    .line 7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v4, 0x15

    .line 10
    .line 11
    if-ge v3, v4, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v3, p0, Lwa/s;->G:Lra/c;

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    const-string p1, "\u5df2\u505c\u6b62\u558a\u9ea6"

    .line 19
    .line 20
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lwa/s;->r(Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :try_start_0
    iget-object v3, p1, Lz7/s;->a:Lb8/n;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    move v10, v2

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto :goto_3

    .line 48
    :cond_2
    const/4 v2, 0x0

    .line 49
    const/4 v10, 0x0

    .line 50
    :goto_0
    new-instance v2, Lra/c;

    .line 51
    .line 52
    iget-object v5, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    move v6, v1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const/4 v1, -0x1

    .line 71
    const/4 v6, -0x1

    .line 72
    :goto_1
    invoke-virtual {v3, v0}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    move v7, v0

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    const/16 v0, 0x32

    .line 89
    .line 90
    const/16 v7, 0x32

    .line 91
    .line 92
    :goto_2
    const-string v0, "tdType"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    const-string v0, "speakerId"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    move-object v4, v2

    .line 113
    invoke-direct/range {v4 .. v10}, Lra/c;-><init>(Landroid/content/Context;IIIII)V

    .line 114
    .line 115
    .line 116
    iput-object v2, p0, Lwa/s;->G:Lra/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    new-instance v0, Lua/g6;

    .line 119
    .line 120
    const/16 v1, 0x9

    .line 121
    .line 122
    invoke-direct {v0, p0, v1, p1}, Lua/g6;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v0}, Lra/c;->d(Lea/b;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v1, "\u65e0\u6cd5\u558a\u9ea6\uff1a"

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public final l(Ljava/io/File;IIIII)V
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v7, p5

    .line 6
    .line 7
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 8
    .line 9
    const-string v2, "audio"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v9, v0

    .line 16
    check-cast v9, Landroid/media/AudioManager;

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, ".pcm"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v11, -0x1

    .line 34
    const/16 v2, 0x15

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    const v4, 0xac44

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x4

    .line 43
    invoke-static {v4, v0, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 44
    .line 45
    .line 46
    move-result v15

    .line 47
    iget-object v5, v8, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 48
    .line 49
    if-nez v5, :cond_1

    .line 50
    .line 51
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    if-lt v5, v2, :cond_0

    .line 54
    .line 55
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    .line 56
    .line 57
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    new-instance v1, Landroid/media/AudioFormat$Builder;

    .line 73
    .line 74
    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    new-instance v0, Landroid/media/AudioTrack;

    .line 94
    .line 95
    const/16 v16, 0x1

    .line 96
    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    move-object v12, v0

    .line 100
    invoke-direct/range {v12 .. v17}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 101
    .line 102
    .line 103
    iput-object v0, v8, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    new-instance v12, Landroid/media/AudioTrack;

    .line 107
    .line 108
    const/4 v6, 0x1

    .line 109
    const/4 v3, 0x4

    .line 110
    const/4 v5, 0x2

    .line 111
    move-object v0, v12

    .line 112
    move/from16 v1, p2

    .line 113
    .line 114
    move v2, v4

    .line 115
    move v4, v5

    .line 116
    move v5, v15

    .line 117
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 118
    .line 119
    .line 120
    iput-object v12, v8, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 121
    .line 122
    :cond_1
    :goto_0
    if-eq v7, v11, :cond_3

    .line 123
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .line 126
    const/16 v1, 0x17

    .line 127
    .line 128
    if-lt v0, v1, :cond_3

    .line 129
    .line 130
    invoke-static {v9}, La2/a;->y(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    array-length v1, v0

    .line 135
    :goto_1
    if-ge v10, v1, :cond_3

    .line 136
    .line 137
    aget-object v2, v0, v10

    .line 138
    .line 139
    invoke-static {v2}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-ne v3, v7, :cond_2

    .line 144
    .line 145
    iget-object v0, v8, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 146
    .line 147
    invoke-static {v0, v2}, La2/a;->p(Landroid/media/AudioTrack;Landroid/media/AudioDeviceInfo;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    :goto_2
    new-instance v10, Lfg/b;

    .line 155
    .line 156
    new-instance v11, Lwa/m;

    .line 157
    .line 158
    move-object v0, v11

    .line 159
    move-object/from16 v1, p0

    .line 160
    .line 161
    move/from16 v2, p3

    .line 162
    .line 163
    move/from16 v3, p4

    .line 164
    .line 165
    move-object v4, v9

    .line 166
    move/from16 v5, p6

    .line 167
    .line 168
    move-object/from16 v6, p1

    .line 169
    .line 170
    move/from16 v7, p5

    .line 171
    .line 172
    invoke-direct/range {v0 .. v7}, Lwa/m;-><init>(Lwa/s;IILandroid/media/AudioManager;ILjava/io/File;I)V

    .line 173
    .line 174
    .line 175
    const/4 v0, 0x1

    .line 176
    invoke-direct {v10, v11, v0}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_7

    .line 183
    .line 184
    :cond_4
    new-instance v0, Landroid/media/MediaPlayer;

    .line 185
    .line 186
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 187
    .line 188
    .line 189
    iput-object v0, v8, Lwa/s;->D:Landroid/media/MediaPlayer;

    .line 190
    .line 191
    :try_start_0
    sget-object v4, Lwa/t;->a:Lwa/u;

    .line 192
    .line 193
    iget-object v4, v4, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 194
    .line 195
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :catch_0
    iget-object v0, v8, Lwa/s;->D:Landroid/media/MediaPlayer;

    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 206
    .line 207
    .line 208
    const/4 v0, 0x0

    .line 209
    iput-object v0, v8, Lwa/s;->D:Landroid/media/MediaPlayer;

    .line 210
    .line 211
    invoke-virtual/range {p0 .. p0}, Lwa/s;->e()V

    .line 212
    .line 213
    .line 214
    :goto_3
    iget-object v0, v8, Lwa/s;->D:Landroid/media/MediaPlayer;

    .line 215
    .line 216
    if-eqz v0, :cond_8

    .line 217
    .line 218
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 219
    .line 220
    if-lt v4, v2, :cond_5

    .line 221
    .line 222
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 223
    .line 224
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-object v1, v8, Lwa/s;->D:Landroid/media/MediaPlayer;

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_5
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 246
    .line 247
    .line 248
    :goto_4
    if-eq v7, v11, :cond_7

    .line 249
    .line 250
    const/16 v0, 0x1c

    .line 251
    .line 252
    if-lt v4, v0, :cond_7

    .line 253
    .line 254
    invoke-static {v9}, La2/a;->y(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    array-length v1, v0

    .line 259
    :goto_5
    if-ge v10, v1, :cond_7

    .line 260
    .line 261
    aget-object v2, v0, v10

    .line 262
    .line 263
    invoke-static {v2}, Ld2/c;->c(Landroid/media/AudioDeviceInfo;)I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-ne v3, v7, :cond_6

    .line 268
    .line 269
    iget-object v0, v8, Lwa/s;->D:Landroid/media/MediaPlayer;

    .line 270
    .line 271
    invoke-static {v0, v2}, Landroidx/emoji2/text/b;->w(Landroid/media/MediaPlayer;Landroid/media/AudioDeviceInfo;)V

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_7
    :goto_6
    iget-object v6, v8, Lwa/s;->D:Landroid/media/MediaPlayer;

    .line 279
    .line 280
    new-instance v7, Lwa/n;

    .line 281
    .line 282
    move-object v0, v7

    .line 283
    move-object/from16 v1, p0

    .line 284
    .line 285
    move/from16 v2, p6

    .line 286
    .line 287
    move/from16 v3, p3

    .line 288
    .line 289
    move/from16 v4, p4

    .line 290
    .line 291
    move-object v5, v9

    .line 292
    invoke-direct/range {v0 .. v5}, Lwa/n;-><init>(Lwa/s;IIILandroid/media/AudioManager;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 296
    .line 297
    .line 298
    iget-object v0, v8, Lwa/s;->D:Landroid/media/MediaPlayer;

    .line 299
    .line 300
    new-instance v1, Lwa/o;

    .line 301
    .line 302
    invoke-direct {v1, v8, v9}, Lwa/o;-><init>(Lwa/s;Landroid/media/AudioManager;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 306
    .line 307
    .line 308
    iget-object v0, v8, Lwa/s;->D:Landroid/media/MediaPlayer;

    .line 309
    .line 310
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 311
    .line 312
    .line 313
    :cond_8
    :goto_7
    return-void
.end method

.method public final m(Lz7/s;)V
    .locals 12

    .line 1
    new-instance v2, Ljava/io/File;

    .line 2
    .line 3
    const-string v0, "str1"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v0, -0x1

    .line 24
    :try_start_0
    const-string v1, "volumeType"

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 31
    .line 32
    .line 33
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    move v4, v1

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    const/4 v4, -0x1

    .line 37
    :goto_0
    const-string v1, "int1"

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    iget-object v1, p1, Lz7/s;->a:Lb8/n;

    .line 48
    .line 49
    const-string v3, "tdType"

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const/4 v7, 0x1

    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v6, 0x15

    .line 70
    .line 71
    if-lt v3, v6, :cond_2

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v3, 0x3

    .line 76
    :goto_1
    :try_start_1
    const-string v6, "focusType"

    .line 77
    .line 78
    invoke-virtual {p1, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6}, Lz7/p;->e()I

    .line 83
    .line 84
    .line 85
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    goto :goto_2

    .line 87
    :catch_1
    const/4 v6, 0x2

    .line 88
    :goto_2
    :try_start_2
    const-string v8, "speakerId"

    .line 89
    .line 90
    invoke-virtual {p1, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-virtual {v8}, Lz7/p;->e()I

    .line 95
    .line 96
    .line 97
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 98
    move v8, v0

    .line 99
    goto :goto_3

    .line 100
    :catch_2
    const/4 v8, -0x1

    .line 101
    :goto_3
    const-string v0, "volumeGain"

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    goto :goto_4

    .line 118
    :cond_3
    const/4 p1, 0x0

    .line 119
    :goto_4
    invoke-virtual {p0, v7}, Lwa/s;->r(Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v6}, Lwa/s;->d(I)V

    .line 123
    .line 124
    .line 125
    if-ltz v4, :cond_4

    .line 126
    .line 127
    if-ltz v5, :cond_4

    .line 128
    .line 129
    if-lez v6, :cond_4

    .line 130
    .line 131
    iget-object v0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 132
    .line 133
    iget-object v9, v0, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 134
    .line 135
    new-instance v10, Lwa/j;

    .line 136
    .line 137
    const/4 v11, 0x0

    .line 138
    move-object v0, v10

    .line 139
    move-object v1, p0

    .line 140
    move v6, v8

    .line 141
    move v7, p1

    .line 142
    move v8, v11

    .line 143
    invoke-direct/range {v0 .. v8}, Lwa/j;-><init>(Lwa/s;Ljava/io/File;IIIIII)V

    .line 144
    .line 145
    .line 146
    const-wide/16 v0, 0x50

    .line 147
    .line 148
    invoke-virtual {v9, v10, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_4
    move-object v0, p0

    .line 153
    move-object v1, v2

    .line 154
    move v2, v3

    .line 155
    move v3, v4

    .line 156
    move v4, v5

    .line 157
    move v5, v8

    .line 158
    move v6, p1

    .line 159
    :try_start_3
    invoke-virtual/range {v0 .. v6}, Lwa/s;->l(Ljava/io/File;IIIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 160
    .line 161
    .line 162
    :catch_3
    :goto_5
    return-void
.end method

.method public final n(Lz7/s;)V
    .locals 12

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lz7/p;->f()Lz7/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v2, v4, v3}, Lj$/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0, v2}, Lz7/o;->l(I)Lz7/p;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v2, 0x1

    .line 51
    if-nez v0, :cond_6

    .line 52
    .line 53
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    array-length v1, v0

    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .line 80
    .line 81
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    sub-int/2addr v0, v2

    .line 94
    :goto_0
    if-ltz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Ljava/io/File;

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_2

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Ljava/io/File;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {p0, v3}, Lwa/s;->g(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_0
    move-exception p1

    .line 126
    goto :goto_3

    .line 127
    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_5
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-virtual {v0, v4, v3}, Lj$/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    move-object v1, v0

    .line 162
    check-cast v1, Ljava/io/File;

    .line 163
    .line 164
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    :cond_6
    move-object v3, v1

    .line 173
    goto :goto_4

    .line 174
    :cond_7
    :goto_2
    return-void

    .line 175
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :goto_4
    const/4 v0, -0x1

    .line 180
    :try_start_1
    const-string v1, "volumeType"

    .line 181
    .line 182
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 187
    .line 188
    .line 189
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    move v5, v1

    .line 191
    goto :goto_5

    .line 192
    :catch_1
    const/4 v5, -0x1

    .line 193
    :goto_5
    const-string v1, "int1"

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    iget-object v1, p1, Lz7/s;->a:Lb8/n;

    .line 204
    .line 205
    const-string v7, "tdType"

    .line 206
    .line 207
    invoke-virtual {v1, v7}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-eqz v8, :cond_8

    .line 212
    .line 213
    invoke-virtual {p1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-virtual {v7}, Lz7/p;->e()I

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    goto :goto_6

    .line 222
    :cond_8
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 223
    .line 224
    const/16 v8, 0x15

    .line 225
    .line 226
    if-lt v7, v8, :cond_9

    .line 227
    .line 228
    const/4 v7, 0x1

    .line 229
    goto :goto_6

    .line 230
    :cond_9
    const/4 v7, 0x3

    .line 231
    :goto_6
    :try_start_2
    const-string v8, "focusType"

    .line 232
    .line 233
    invoke-virtual {p1, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    invoke-virtual {v8}, Lz7/p;->e()I

    .line 238
    .line 239
    .line 240
    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 241
    goto :goto_7

    .line 242
    :catch_2
    const/4 v8, 0x2

    .line 243
    :goto_7
    :try_start_3
    const-string v9, "speakerId"

    .line 244
    .line 245
    invoke-virtual {p1, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    invoke-virtual {v9}, Lz7/p;->e()I

    .line 250
    .line 251
    .line 252
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 253
    move v9, v0

    .line 254
    goto :goto_8

    .line 255
    :catch_3
    const/4 v9, -0x1

    .line 256
    :goto_8
    const-string v0, "volumeGain"

    .line 257
    .line 258
    invoke-virtual {v1, v0}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_a

    .line 263
    .line 264
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    move p1, v4

    .line 273
    goto :goto_9

    .line 274
    :cond_a
    const/4 p1, 0x0

    .line 275
    :goto_9
    invoke-virtual {p0, v2}, Lwa/s;->r(Z)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v8}, Lwa/s;->d(I)V

    .line 279
    .line 280
    .line 281
    if-ltz v5, :cond_b

    .line 282
    .line 283
    if-ltz v6, :cond_b

    .line 284
    .line 285
    if-lez v8, :cond_b

    .line 286
    .line 287
    iget-object v0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 288
    .line 289
    iget-object v10, v0, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 290
    .line 291
    new-instance v11, Lwa/j;

    .line 292
    .line 293
    const/4 v8, 0x1

    .line 294
    move-object v0, v11

    .line 295
    move-object v1, p0

    .line 296
    move-object v2, v3

    .line 297
    move v3, v7

    .line 298
    move v4, v5

    .line 299
    move v5, v6

    .line 300
    move v6, v9

    .line 301
    move v7, p1

    .line 302
    invoke-direct/range {v0 .. v8}, Lwa/j;-><init>(Lwa/s;Ljava/io/File;IIIIII)V

    .line 303
    .line 304
    .line 305
    const-wide/16 v0, 0x50

    .line 306
    .line 307
    invoke-virtual {v10, v11, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    .line 309
    .line 310
    goto :goto_a

    .line 311
    :cond_b
    move-object v0, p0

    .line 312
    move-object v1, v3

    .line 313
    move v2, v7

    .line 314
    move v3, v5

    .line 315
    move v4, v6

    .line 316
    move v5, v9

    .line 317
    move v6, p1

    .line 318
    :try_start_4
    invoke-virtual/range {v0 .. v6}, Lwa/s;->l(Ljava/io/File;IIIII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 319
    .line 320
    .line 321
    :catch_4
    :goto_a
    return-void
.end method

.method public final o(Lz7/s;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lwa/s;->r(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 6
    .line 7
    const-string v1, "ttsEngine"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    :try_start_1
    iget-object v0, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    .line 42
    .line 43
    :catch_1
    iput-object v2, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 44
    .line 45
    :cond_0
    :goto_0
    iget-object v0, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    :try_start_2
    invoke-virtual {p0, p1}, Lwa/s;->s(Lz7/s;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 50
    .line 51
    .line 52
    :catch_2
    return-void

    .line 53
    :cond_1
    :try_start_3
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    .line 54
    .line 55
    iget-object v3, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 56
    .line 57
    new-instance v4, Lwa/i;

    .line 58
    .line 59
    invoke-direct {v4, p0, p1}, Lwa/i;-><init>(Lwa/s;Lz7/s;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {v0, v3, v4, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_3
    const-string p1, "TTS\u5f15\u64ce\u4e0d\u53ef\u7528"

    .line 77
    .line 78
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    iput-object v2, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 82
    .line 83
    :goto_1
    return-void
.end method

.method public final p(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "KeyMapEvent.json"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lq4/a;->I(Ljava/io/File;)Lz7/s;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lwa/s;->w:Lz7/s;

    .line 23
    .line 24
    iget-object v0, p0, Lwa/s;->i:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lwa/s;->w:Lz7/s;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p1, Lcom/yunpan/appmanage/service/AccService;->l:Lta/e;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lwa/s;->j:Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lwa/s;->l:Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lwa/s;->r:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lwa/s;->w:Lz7/s;

    .line 62
    .line 63
    const-string v2, "keys"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v1, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    new-instance v2, Lwa/l;

    .line 76
    .line 77
    const/4 v3, 0x1

    .line 78
    invoke-direct {v2, p0, p1, v0, v3}, Lwa/l;-><init>(Lwa/s;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v2}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x15

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lwa/s;->B:Landroid/media/session/MediaController;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lt0/e;->D(Landroid/media/session/MediaController$TransportControls;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lwa/s;->B:Landroid/media/session/MediaController;

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lwa/s;->e()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final r(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 4
    .line 5
    iget-object v1, p0, Lwa/s;->N:Landroidx/activity/h;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lwa/s;->K:Landroid/media/audiofx/LoudnessEnhancer;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static {v0}, Lcom/hierynomus/security/jce/a;->r(Landroid/media/audiofx/LoudnessEnhancer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    iput-object v1, p0, Lwa/s;->K:Landroid/media/audiofx/LoudnessEnhancer;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lwa/s;->H:Lv8/a;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    :try_start_1
    invoke-virtual {v0, v2, v3}, Lv8/a;->c(J)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lwa/s;->H:Lv8/a;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    sget-object v4, Lv8/i;->a:Landroid/os/Handler;

    .line 35
    .line 36
    iget-object v5, v0, Lv8/a;->p:Ljava/lang/Runnable;

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v5, v2, v3}, Lv8/a;->i(Ljava/lang/Runnable;J)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lwa/s;->H:Lv8/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_1
    nop

    .line 48
    :cond_1
    :goto_0
    iget-object v0, p0, Lwa/s;->G:Lra/c;

    .line 49
    .line 50
    const/16 v2, 0x15

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    if-lt v3, v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Lra/c;->e()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iput-object v1, p0, Lwa/s;->G:Lra/c;

    .line 62
    .line 63
    :cond_3
    iget-object v0, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iget-object v0, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 76
    .line 77
    .line 78
    :cond_4
    iget v0, p0, Lwa/s;->J:I

    .line 79
    .line 80
    if-ltz v0, :cond_6

    .line 81
    .line 82
    iget v3, p0, Lwa/s;->I:I

    .line 83
    .line 84
    if-ltz v3, :cond_6

    .line 85
    .line 86
    const/16 v4, 0x64

    .line 87
    .line 88
    if-lt v3, v4, :cond_5

    .line 89
    .line 90
    sget-object v5, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 91
    .line 92
    sub-int/2addr v3, v4

    .line 93
    invoke-virtual {v5, v3, v0}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    iget-object v4, p0, Lwa/s;->C:Landroid/media/AudioManager;

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    invoke-virtual {v4, v3, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 101
    .line 102
    .line 103
    :goto_1
    const/4 v0, -0x1

    .line 104
    iput v0, p0, Lwa/s;->I:I

    .line 105
    .line 106
    iput v0, p0, Lwa/s;->J:I

    .line 107
    .line 108
    :cond_6
    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lwa/s;->F:Z

    .line 110
    .line 111
    iget-object v0, p0, Lwa/s;->D:Landroid/media/MediaPlayer;

    .line 112
    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lwa/s;->D:Landroid/media/MediaPlayer;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    .line 122
    .line 123
    :catch_2
    iput-object v1, p0, Lwa/s;->D:Landroid/media/MediaPlayer;

    .line 124
    .line 125
    :cond_7
    iget-object v0, p0, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 126
    .line 127
    if-eqz v0, :cond_b

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    const/4 v3, 0x3

    .line 134
    if-eq v0, v3, :cond_8

    .line 135
    .line 136
    iget-object v0, p0, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    const/4 v3, 0x2

    .line 143
    if-ne v0, v3, :cond_9

    .line 144
    .line 145
    :cond_8
    :try_start_3
    iget-object v0, p0, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catch_3
    nop

    .line 157
    :cond_9
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 158
    .line 159
    const/16 v3, 0x17

    .line 160
    .line 161
    if-lt v0, v3, :cond_a

    .line 162
    .line 163
    iget-object v0, p0, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 164
    .line 165
    invoke-static {v0}, Ld2/c;->p(Landroid/media/AudioTrack;)V

    .line 166
    .line 167
    .line 168
    :cond_a
    iget-object v0, p0, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 171
    .line 172
    .line 173
    iput-object v1, p0, Lwa/s;->E:Landroid/media/AudioTrack;

    .line 174
    .line 175
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 176
    .line 177
    if-lt v0, v2, :cond_d

    .line 178
    .line 179
    iget-object v0, p0, Lwa/s;->B:Landroid/media/session/MediaController;

    .line 180
    .line 181
    if-eqz v0, :cond_d

    .line 182
    .line 183
    if-nez p1, :cond_c

    .line 184
    .line 185
    invoke-static {v0}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {p1}, Lt0/e;->D(Landroid/media/session/MediaController$TransportControls;)V

    .line 190
    .line 191
    .line 192
    iput-object v1, p0, Lwa/s;->B:Landroid/media/session/MediaController;

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_c
    invoke-static {v0}, Lwa/s;->h(Landroid/media/session/MediaController;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_d

    .line 200
    .line 201
    iget-object p1, p0, Lwa/s;->B:Landroid/media/session/MediaController;

    .line 202
    .line 203
    invoke-static {p1}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-static {p1}, Lt0/e;->x(Landroid/media/session/MediaController$TransportControls;)V

    .line 208
    .line 209
    .line 210
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lwa/s;->e()V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public final s(Lz7/s;)V
    .locals 4

    .line 1
    const-string v0, "volumeType"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "int1"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v2, "focusType"

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p0, v2}, Lwa/s;->d(I)V

    .line 32
    .line 33
    .line 34
    if-ltz v0, :cond_0

    .line 35
    .line 36
    if-ltz v1, :cond_0

    .line 37
    .line 38
    if-lez v2, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 43
    .line 44
    new-instance v1, Ls1/f;

    .line 45
    .line 46
    const/16 v2, 0xe

    .line 47
    .line 48
    invoke-direct {v1, p0, v2, p1}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v2, 0x50

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lwa/s;->t(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    invoke-virtual {p0}, Lwa/s;->q()V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public final t(Lz7/s;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/speech/tts/Voice;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "ttsVoice"

    .line 34
    .line 35
    invoke-virtual {p1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    iget-object v2, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getAvailableLanguages()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/util/Locale;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string v3, "ttsLocale"

    .line 88
    .line 89
    invoke-virtual {p1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_2

    .line 102
    .line 103
    iget-object v2, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 104
    .line 105
    invoke-virtual {v2, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 110
    .line 111
    const-string v1, "ttsSpeechRate"

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    int-to-float v1, v1

    .line 122
    const/high16 v2, 0x42480000    # 50.0f

    .line 123
    .line 124
    div-float/2addr v1, v2

    .line 125
    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 126
    .line 127
    .line 128
    :try_start_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 129
    .line 130
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v1, "tdType"

    .line 134
    .line 135
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const/4 v1, 0x1

    .line 148
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v1, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    :catch_0
    iget-object v0, p0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 162
    .line 163
    const-string v1, "tts"

    .line 164
    .line 165
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const/4 v2, 0x0

    .line 174
    const-string v3, "gj_TTS"

    .line 175
    .line 176
    const/4 v4, 0x0

    .line 177
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    const/4 v1, -0x1

    .line 182
    if-ne v0, v1, :cond_4

    .line 183
    .line 184
    const-string p1, "tts\u64ad\u62a5\u5931\u8d25"

    .line 185
    .line 186
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lwa/s;->q()V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_4
    const-string v0, "volumeType"

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    const-string v1, "int1"

    .line 204
    .line 205
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-ltz v0, :cond_6

    .line 214
    .line 215
    if-ltz p1, :cond_6

    .line 216
    .line 217
    const/16 v1, 0x64

    .line 218
    .line 219
    if-lt v0, v1, :cond_5

    .line 220
    .line 221
    sget-object v1, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 222
    .line 223
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/carsdk/k0;->f(I)I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    iput v2, p0, Lwa/s;->J:I

    .line 228
    .line 229
    add-int/lit8 v2, v0, -0x64

    .line 230
    .line 231
    invoke-virtual {v1, v2, p1}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_5
    iget-object v1, p0, Lwa/s;->C:Landroid/media/AudioManager;

    .line 236
    .line 237
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    iput v2, p0, Lwa/s;->J:I

    .line 242
    .line 243
    invoke-virtual {v1, v0, p1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 244
    .line 245
    .line 246
    :goto_2
    iput v0, p0, Lwa/s;->I:I

    .line 247
    .line 248
    :cond_6
    iget-object p1, p0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 249
    .line 250
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 251
    .line 252
    iget-object v0, p0, Lwa/s;->N:Landroidx/activity/h;

    .line 253
    .line 254
    const-wide/16 v1, 0x3e8

    .line 255
    .line 256
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    .line 258
    .line 259
    :goto_3
    return-void
.end method
