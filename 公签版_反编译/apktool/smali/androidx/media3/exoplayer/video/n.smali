.class public final Landroidx/media3/exoplayer/video/n;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public a:Lu1/g;

.field public b:Landroid/os/Handler;

.field public c:Ljava/lang/Error;

.field public d:Ljava/lang/RuntimeException;

.field public e:Landroidx/media3/exoplayer/video/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "ExoPlayer:PlaceholderSurface"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    iget-object v6, v0, Landroidx/media3/exoplayer/video/n;->a:Lu1/g;

    .line 10
    .line 11
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v6, v0, Landroidx/media3/exoplayer/video/n;->a:Lu1/g;

    .line 15
    .line 16
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v5}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    if-eqz v7, :cond_0

    .line 24
    .line 25
    const/4 v8, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v8, 0x0

    .line 28
    :goto_0
    const-string v9, "eglGetDisplay failed"

    .line 29
    .line 30
    invoke-static {v9, v8}, Lu1/a;->c(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    new-array v8, v3, [I

    .line 34
    .line 35
    invoke-static {v7, v8, v5, v8, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    const-string v9, "eglInitialize failed"

    .line 40
    .line 41
    invoke-static {v9, v8}, Lu1/a;->c(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    iput-object v7, v6, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 45
    .line 46
    new-array v15, v4, [Landroid/opengl/EGLConfig;

    .line 47
    .line 48
    new-array v14, v4, [I

    .line 49
    .line 50
    sget-object v8, Lu1/g;->g:[I

    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v11, 0x0

    .line 54
    const/4 v12, 0x1

    .line 55
    const/16 v16, 0x0

    .line 56
    .line 57
    move-object v10, v15

    .line 58
    move-object v13, v14

    .line 59
    move-object/from16 v17, v14

    .line 60
    .line 61
    move/from16 v14, v16

    .line 62
    .line 63
    invoke-static/range {v7 .. v14}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_1

    .line 68
    .line 69
    aget v8, v17, v5

    .line 70
    .line 71
    if-lez v8, :cond_1

    .line 72
    .line 73
    aget-object v8, v15, v5

    .line 74
    .line 75
    if-eqz v8, :cond_1

    .line 76
    .line 77
    const/4 v8, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const/4 v8, 0x0

    .line 80
    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    aget v9, v17, v5

    .line 85
    .line 86
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    aget-object v10, v15, v5

    .line 91
    .line 92
    new-array v11, v2, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object v7, v11, v5

    .line 95
    .line 96
    aput-object v9, v11, v4

    .line 97
    .line 98
    aput-object v10, v11, v3

    .line 99
    .line 100
    sget-object v7, Lu1/f0;->a:Ljava/lang/String;

    .line 101
    .line 102
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 103
    .line 104
    const-string v9, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    .line 105
    .line 106
    invoke-static {v7, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-static {v7, v8}, Lu1/a;->c(Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    aget-object v7, v15, v5

    .line 114
    .line 115
    iget-object v8, v6, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 116
    .line 117
    const/4 v9, 0x4

    .line 118
    const/16 v10, 0x32c0

    .line 119
    .line 120
    const/4 v11, 0x5

    .line 121
    const/16 v12, 0x3038

    .line 122
    .line 123
    const/16 v13, 0x3098

    .line 124
    .line 125
    if-nez v1, :cond_2

    .line 126
    .line 127
    new-array v14, v2, [I

    .line 128
    .line 129
    aput v13, v14, v5

    .line 130
    .line 131
    aput v3, v14, v4

    .line 132
    .line 133
    aput v12, v14, v3

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_2
    new-array v14, v11, [I

    .line 137
    .line 138
    aput v13, v14, v5

    .line 139
    .line 140
    aput v3, v14, v4

    .line 141
    .line 142
    aput v10, v14, v3

    .line 143
    .line 144
    aput v4, v14, v2

    .line 145
    .line 146
    aput v12, v14, v9

    .line 147
    .line 148
    :goto_2
    sget-object v13, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 149
    .line 150
    invoke-static {v8, v7, v13, v14, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    if-eqz v8, :cond_3

    .line 155
    .line 156
    const/4 v13, 0x1

    .line 157
    goto :goto_3

    .line 158
    :cond_3
    const/4 v13, 0x0

    .line 159
    :goto_3
    const-string v14, "eglCreateContext failed"

    .line 160
    .line 161
    invoke-static {v14, v13}, Lu1/a;->c(Ljava/lang/String;Z)V

    .line 162
    .line 163
    .line 164
    iput-object v8, v6, Lu1/g;->d:Landroid/opengl/EGLContext;

    .line 165
    .line 166
    iget-object v13, v6, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 167
    .line 168
    if-ne v1, v4, :cond_4

    .line 169
    .line 170
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_4
    const/16 v14, 0x3056

    .line 174
    .line 175
    const/16 v15, 0x3057

    .line 176
    .line 177
    if-ne v1, v3, :cond_5

    .line 178
    .line 179
    const/4 v12, 0x7

    .line 180
    new-array v12, v12, [I

    .line 181
    .line 182
    aput v15, v12, v5

    .line 183
    .line 184
    aput v4, v12, v4

    .line 185
    .line 186
    aput v14, v12, v3

    .line 187
    .line 188
    aput v4, v12, v2

    .line 189
    .line 190
    aput v10, v12, v9

    .line 191
    .line 192
    aput v4, v12, v11

    .line 193
    .line 194
    const/4 v2, 0x6

    .line 195
    const/16 v10, 0x3038

    .line 196
    .line 197
    aput v10, v12, v2

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_5
    const/16 v10, 0x3038

    .line 201
    .line 202
    new-array v12, v11, [I

    .line 203
    .line 204
    aput v15, v12, v5

    .line 205
    .line 206
    aput v4, v12, v4

    .line 207
    .line 208
    aput v14, v12, v3

    .line 209
    .line 210
    aput v4, v12, v2

    .line 211
    .line 212
    aput v10, v12, v9

    .line 213
    .line 214
    :goto_4
    invoke-static {v13, v7, v12, v5}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    if-eqz v2, :cond_6

    .line 219
    .line 220
    const/4 v3, 0x1

    .line 221
    goto :goto_5

    .line 222
    :cond_6
    const/4 v3, 0x0

    .line 223
    :goto_5
    const-string v7, "eglCreatePbufferSurface failed"

    .line 224
    .line 225
    invoke-static {v7, v3}, Lu1/a;->c(Ljava/lang/String;Z)V

    .line 226
    .line 227
    .line 228
    :goto_6
    invoke-static {v13, v2, v2, v8}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    const-string v7, "eglMakeCurrent failed"

    .line 233
    .line 234
    invoke-static {v7, v3}, Lu1/a;->c(Ljava/lang/String;Z)V

    .line 235
    .line 236
    .line 237
    iput-object v2, v6, Lu1/g;->e:Landroid/opengl/EGLSurface;

    .line 238
    .line 239
    iget-object v2, v6, Lu1/g;->b:[I

    .line 240
    .line 241
    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 242
    .line 243
    .line 244
    invoke-static {}, Lu1/a;->b()V

    .line 245
    .line 246
    .line 247
    new-instance v3, Landroid/graphics/SurfaceTexture;

    .line 248
    .line 249
    aget v2, v2, v5

    .line 250
    .line 251
    invoke-direct {v3, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 252
    .line 253
    .line 254
    iput-object v3, v6, Lu1/g;->f:Landroid/graphics/SurfaceTexture;

    .line 255
    .line 256
    invoke-virtual {v3, v6}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 257
    .line 258
    .line 259
    new-instance v2, Landroidx/media3/exoplayer/video/o;

    .line 260
    .line 261
    iget-object v3, v0, Landroidx/media3/exoplayer/video/n;->a:Lu1/g;

    .line 262
    .line 263
    iget-object v3, v3, Lu1/g;->f:Landroid/graphics/SurfaceTexture;

    .line 264
    .line 265
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    if-eqz v1, :cond_7

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_7
    const/4 v4, 0x0

    .line 272
    :goto_7
    invoke-direct {v2, v0, v3, v4}, Landroidx/media3/exoplayer/video/o;-><init>(Landroidx/media3/exoplayer/video/n;Landroid/graphics/SurfaceTexture;Z)V

    .line 273
    .line 274
    .line 275
    iput-object v2, v0, Landroidx/media3/exoplayer/video/n;->e:Landroidx/media3/exoplayer/video/o;

    .line 276
    .line 277
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/n;->a:Lu1/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/video/n;->a:Lu1/g;

    .line 7
    .line 8
    iget-object v1, v0, Lu1/g;->a:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    iget-object v2, v0, Lu1/g;->f:Landroid/graphics/SurfaceTexture;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 19
    .line 20
    .line 21
    iget-object v2, v0, Lu1/g;->b:[I

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v2

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object v2, v0, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    iget-object v2, v0, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 44
    .line 45
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 46
    .line 47
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 48
    .line 49
    invoke-static {v2, v3, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v2, v0, Lu1/g;->e:Landroid/opengl/EGLSurface;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    iget-object v2, v0, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 65
    .line 66
    iget-object v3, v0, Lu1/g;->e:Landroid/opengl/EGLSurface;

    .line 67
    .line 68
    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v2, v0, Lu1/g;->d:Landroid/opengl/EGLContext;

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    iget-object v3, v0, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 76
    .line 77
    invoke-static {v3, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 81
    .line 82
    .line 83
    iget-object v2, v0, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 84
    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_4

    .line 94
    .line 95
    iget-object v2, v0, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 96
    .line 97
    invoke-static {v2}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 98
    .line 99
    .line 100
    :cond_4
    iput-object v1, v0, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 101
    .line 102
    iput-object v1, v0, Lu1/g;->d:Landroid/opengl/EGLContext;

    .line 103
    .line 104
    iput-object v1, v0, Lu1/g;->e:Landroid/opengl/EGLSurface;

    .line 105
    .line 106
    iput-object v1, v0, Lu1/g;->f:Landroid/graphics/SurfaceTexture;

    .line 107
    .line 108
    return-void

    .line 109
    :goto_1
    iget-object v3, v0, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 110
    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_5

    .line 120
    .line 121
    iget-object v3, v0, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 122
    .line 123
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 124
    .line 125
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 126
    .line 127
    invoke-static {v3, v4, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 128
    .line 129
    .line 130
    :cond_5
    iget-object v3, v0, Lu1/g;->e:Landroid/opengl/EGLSurface;

    .line 131
    .line 132
    if-eqz v3, :cond_6

    .line 133
    .line 134
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 135
    .line 136
    invoke-virtual {v3, v4}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_6

    .line 141
    .line 142
    iget-object v3, v0, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 143
    .line 144
    iget-object v4, v0, Lu1/g;->e:Landroid/opengl/EGLSurface;

    .line 145
    .line 146
    invoke-static {v3, v4}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 147
    .line 148
    .line 149
    :cond_6
    iget-object v3, v0, Lu1/g;->d:Landroid/opengl/EGLContext;

    .line 150
    .line 151
    if-eqz v3, :cond_7

    .line 152
    .line 153
    iget-object v4, v0, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 154
    .line 155
    invoke-static {v4, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 156
    .line 157
    .line 158
    :cond_7
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 159
    .line 160
    .line 161
    iget-object v3, v0, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 162
    .line 163
    if-eqz v3, :cond_8

    .line 164
    .line 165
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-nez v3, :cond_8

    .line 172
    .line 173
    iget-object v3, v0, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 174
    .line 175
    invoke-static {v3}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 176
    .line 177
    .line 178
    :cond_8
    iput-object v1, v0, Lu1/g;->c:Landroid/opengl/EGLDisplay;

    .line 179
    .line 180
    iput-object v1, v0, Lu1/g;->d:Landroid/opengl/EGLContext;

    .line 181
    .line 182
    iput-object v1, v0, Lu1/g;->e:Landroid/opengl/EGLSurface;

    .line 183
    .line 184
    iput-object v1, v0, Lu1/g;->f:Landroid/graphics/SurfaceTexture;

    .line 185
    .line 186
    throw v2
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/n;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    const-string v0, "Failed to release placeholder surface"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :goto_1
    return v1

    .line 25
    :catchall_1
    move-exception p1

    .line 26
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    :try_start_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/n;->a(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lu1/h; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 33
    .line 34
    .line 35
    monitor-enter p0

    .line 36
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    goto :goto_5

    .line 41
    :catchall_2
    move-exception p1

    .line 42
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 43
    throw p1

    .line 44
    :catchall_3
    move-exception p1

    .line 45
    goto :goto_6

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :catch_1
    move-exception p1

    .line 49
    goto :goto_3

    .line 50
    :catch_2
    move-exception p1

    .line 51
    goto :goto_4

    .line 52
    :goto_2
    :try_start_4
    const-string v0, "Failed to initialize placeholder surface"

    .line 53
    .line 54
    invoke-static {v0, p1}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Landroidx/media3/exoplayer/video/n;->c:Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 58
    .line 59
    monitor-enter p0

    .line 60
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 61
    .line 62
    .line 63
    monitor-exit p0

    .line 64
    goto :goto_5

    .line 65
    :catchall_4
    move-exception p1

    .line 66
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 67
    throw p1

    .line 68
    :goto_3
    :try_start_6
    const-string v0, "Failed to initialize placeholder surface"

    .line 69
    .line 70
    invoke-static {v0, p1}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Landroidx/media3/exoplayer/video/n;->d:Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 79
    .line 80
    monitor-enter p0

    .line 81
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 82
    .line 83
    .line 84
    monitor-exit p0

    .line 85
    goto :goto_5

    .line 86
    :catchall_5
    move-exception p1

    .line 87
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 88
    throw p1

    .line 89
    :goto_4
    :try_start_8
    const-string v0, "Failed to initialize placeholder surface"

    .line 90
    .line 91
    invoke-static {v0, p1}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Landroidx/media3/exoplayer/video/n;->d:Ljava/lang/RuntimeException;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 95
    .line 96
    monitor-enter p0

    .line 97
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 98
    .line 99
    .line 100
    monitor-exit p0

    .line 101
    :goto_5
    return v1

    .line 102
    :catchall_6
    move-exception p1

    .line 103
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 104
    throw p1

    .line 105
    :goto_6
    monitor-enter p0

    .line 106
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 107
    .line 108
    .line 109
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 110
    throw p1

    .line 111
    :catchall_7
    move-exception p1

    .line 112
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 113
    goto :goto_8

    .line 114
    :goto_7
    throw p1

    .line 115
    :goto_8
    goto :goto_7
.end method
