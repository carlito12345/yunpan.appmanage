.class public final Lo5/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lf5/h;

.field public static final g:Lf5/h;

.field public static final h:Lf5/h;

.field public static final i:Lf5/h;

.field public static final j:Ljava/util/Set;

.field public static final k:Lha/l2;

.field public static final l:Ljava/util/Set;

.field public static final m:Ljava/util/ArrayDeque;


# instance fields
.field public final a:Li5/c;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:La2/k1;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lo5/v;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lf5/b;->c:Lf5/b;

    .line 3
    .line 4
    const-string v2, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 5
    .line 6
    invoke-static {v1, v2}, Lf5/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lf5/h;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sput-object v1, Lo5/p;->f:Lf5/h;

    .line 11
    .line 12
    new-instance v1, Lf5/h;

    .line 13
    .line 14
    sget-object v2, Lf5/h;->e:Lm7/e;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    .line 18
    .line 19
    invoke-direct {v1, v4, v3, v2}, Lf5/h;-><init>(Ljava/lang/String;Ljava/lang/Object;Lf5/g;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lo5/p;->g:Lf5/h;

    .line 23
    .line 24
    sget-object v1, Lo5/n;->b:Lo5/n;

    .line 25
    .line 26
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    const-string v2, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lf5/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lf5/h;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sput-object v2, Lo5/p;->h:Lf5/h;

    .line 35
    .line 36
    const-string v2, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 37
    .line 38
    invoke-static {v1, v2}, Lf5/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lf5/h;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sput-object v1, Lo5/p;->i:Lf5/h;

    .line 43
    .line 44
    new-instance v1, Ljava/util/HashSet;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    new-array v2, v2, [Ljava/lang/String;

    .line 48
    .line 49
    const-string v3, "image/vnd.wap.wbmp"

    .line 50
    .line 51
    aput-object v3, v2, v0

    .line 52
    .line 53
    const-string v3, "image/x-ico"

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    aput-object v3, v2, v4

    .line 57
    .line 58
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    sput-object v1, Lo5/p;->j:Ljava/util/Set;

    .line 70
    .line 71
    new-instance v1, Lha/l2;

    .line 72
    .line 73
    const/16 v2, 0x17

    .line 74
    .line 75
    invoke-direct {v1, v2}, Lha/l2;-><init>(I)V

    .line 76
    .line 77
    .line 78
    sput-object v1, Lo5/p;->k:Lha/l2;

    .line 79
    .line 80
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 81
    .line 82
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 83
    .line 84
    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 85
    .line 86
    invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sput-object v1, Lo5/p;->l:Ljava/util/Set;

    .line 95
    .line 96
    sget-object v1, La6/q;->a:[C

    .line 97
    .line 98
    new-instance v1, Ljava/util/ArrayDeque;

    .line 99
    .line 100
    invoke-direct {v1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 101
    .line 102
    .line 103
    sput-object v1, Lo5/p;->m:Ljava/util/ArrayDeque;

    .line 104
    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Li5/c;La2/k1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lo5/v;->a()Lo5/v;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lo5/p;->e:Lo5/v;

    .line 9
    .line 10
    iput-object p1, p0, Lo5/p;->d:Ljava/util/ArrayList;

    .line 11
    .line 12
    const-string p1, "Argument must not be null"

    .line 13
    .line 14
    invoke-static {p2, p1}, La6/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lo5/p;->b:Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    invoke-static {p3, p1}, La6/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, Lo5/p;->a:Li5/c;

    .line 23
    .line 24
    invoke-static {p4, p1}, La6/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p4, p0, Lo5/p;->c:La2/k1;

    .line 28
    .line 29
    return-void
.end method

.method public static c(Lv3/f;Landroid/graphics/BitmapFactory$Options;Lo5/o;Li5/c;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p2}, Lo5/o;->p()V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lv3/f;->a:I

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    iget-object v0, p0, Lv3/f;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcom/bumptech/glide/load/data/i;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/bumptech/glide/load/data/i;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lo5/w;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, v0, Lo5/w;->a:[B

    .line 24
    .line 25
    array-length v1, v1

    .line 26
    iput v1, v0, Lo5/w;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_0
    :goto_0
    :pswitch_1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 34
    .line 35
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 36
    .line 37
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 38
    .line 39
    sget-object v3, Lo5/z;->b:Ljava/util/concurrent/locks/Lock;

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 42
    .line 43
    .line 44
    :try_start_2
    invoke-virtual {p0, p1}, Lv3/f;->u(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 45
    .line 46
    .line 47
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v3

    .line 55
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    .line 56
    .line 57
    const-string v5, "Exception decoding bitmap, outWidth: "

    .line 58
    .line 59
    const-string v6, ", outHeight: "

    .line 60
    .line 61
    const-string v7, ", outMimeType: "

    .line 62
    .line 63
    invoke-static {v0, v1, v5, v6, v7}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", inBitmap: "

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 76
    .line 77
    invoke-static {v1}, Lo5/p;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {v4, v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    :try_start_4
    invoke-interface {p3, v0}, Li5/c;->c(Landroid/graphics/Bitmap;)V

    .line 96
    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    invoke-static {p0, p1, p2, p3}, Lo5/p;->c(Lv3/f;Landroid/graphics/BitmapFactory$Options;Lo5/o;Li5/c;)Landroid/graphics/Bitmap;

    .line 102
    .line 103
    .line 104
    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 105
    sget-object p1, Lo5/z;->b:Ljava/util/concurrent/locks/Lock;

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :catch_1
    :try_start_5
    throw v4

    .line 112
    :cond_1
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 113
    :goto_1
    sget-object p1, Lo5/z;->b:Ljava/util/concurrent/locks/Lock;

    .line 114
    .line 115
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x13

    .line 8
    .line 9
    if-lt v0, v1, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, " ("

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lm0/h;->c(Landroid/graphics/Bitmap;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ")"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v0, ""

    .line 36
    .line 37
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "["

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, "x"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, "] "

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method

.method public static e(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lo5/p;->f(Landroid/graphics/BitmapFactory$Options;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lo5/p;->m:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public static f(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11
    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    .line 16
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 17
    .line 18
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 19
    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v4, 0x1a

    .line 23
    .line 24
    if-lt v3, v4, :cond_0

    .line 25
    .line 26
    invoke-static {p0}, Ln5/a;->o(Landroid/graphics/BitmapFactory$Options;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Ln5/a;->A(Landroid/graphics/BitmapFactory$Options;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Ln5/a;->C(Landroid/graphics/BitmapFactory$Options;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 36
    .line 37
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 38
    .line 39
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lv3/f;IILf5/i;Lo5/o;)Lo5/d;
    .locals 15

    .line 1
    move-object v12, p0

    .line 2
    move-object/from16 v0, p4

    .line 3
    .line 4
    iget-object v1, v12, Lo5/p;->c:La2/k1;

    .line 5
    .line 6
    const/high16 v2, 0x10000

    .line 7
    .line 8
    const-class v3, [B

    .line 9
    .line 10
    invoke-virtual {v1, v3, v2}, La2/k1;->e(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    move-object v13, v1

    .line 15
    check-cast v13, [B

    .line 16
    .line 17
    const-class v1, Lo5/p;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v2, Lo5/p;->m:Ljava/util/ArrayDeque;

    .line 21
    .line 22
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/graphics/BitmapFactory$Options;

    .line 28
    .line 29
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .line 33
    .line 34
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lo5/p;->f(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    .line 40
    :cond_0
    move-object v14, v3

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_2

    .line 44
    :goto_0
    monitor-exit v1

    .line 45
    iput-object v13, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 46
    .line 47
    sget-object v1, Lo5/p;->f:Lf5/h;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v5, v1

    .line 54
    check-cast v5, Lf5/b;

    .line 55
    .line 56
    sget-object v1, Lo5/p;->g:Lf5/h;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v6, v1

    .line 63
    check-cast v6, Lf5/j;

    .line 64
    .line 65
    sget-object v1, Lo5/n;->g:Lf5/h;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move-object v4, v1

    .line 72
    check-cast v4, Lo5/n;

    .line 73
    .line 74
    sget-object v1, Lo5/p;->h:Lf5/h;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    sget-object v1, Lo5/p;->i:Lf5/h;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lf5/i;->c(Lf5/h;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    const/4 v7, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 110
    const/4 v7, 0x0

    .line 111
    :goto_1
    move-object v1, p0

    .line 112
    move-object/from16 v2, p1

    .line 113
    .line 114
    move-object v3, v14

    .line 115
    move/from16 v8, p2

    .line 116
    .line 117
    move/from16 v9, p3

    .line 118
    .line 119
    move-object/from16 v11, p5

    .line 120
    .line 121
    :try_start_3
    invoke-virtual/range {v1 .. v11}, Lo5/p;->b(Lv3/f;Landroid/graphics/BitmapFactory$Options;Lo5/n;Lf5/b;Lf5/j;ZIIZLo5/o;)Landroid/graphics/Bitmap;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v1, v12, Lo5/p;->a:Li5/c;

    .line 126
    .line 127
    invoke-static {v0, v1}, Lo5/d;->b(Landroid/graphics/Bitmap;Li5/c;)Lo5/d;

    .line 128
    .line 129
    .line 130
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    invoke-static {v14}, Lo5/p;->e(Landroid/graphics/BitmapFactory$Options;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v12, Lo5/p;->c:La2/k1;

    .line 135
    .line 136
    invoke-virtual {v1, v13}, La2/k1;->i(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return-object v0

    .line 140
    :catchall_1
    move-exception v0

    .line 141
    invoke-static {v14}, Lo5/p;->e(Landroid/graphics/BitmapFactory$Options;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v12, Lo5/p;->c:La2/k1;

    .line 145
    .line 146
    invoke-virtual {v1, v13}, La2/k1;->i(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :catchall_2
    move-exception v0

    .line 151
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 152
    :try_start_5
    throw v0

    .line 153
    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    throw v0
.end method

.method public final b(Lv3/f;Landroid/graphics/BitmapFactory$Options;Lo5/n;Lf5/b;Lf5/j;ZIIZLo5/o;)Landroid/graphics/Bitmap;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p10

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1
    sget v11, La6/k;->a:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 3
    iput-boolean v10, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    iget-object v11, v1, Lo5/p;->a:Li5/c;

    invoke-static {v0, v2, v6, v11}, Lo5/p;->c(Lv3/f;Landroid/graphics/BitmapFactory$Options;Lo5/o;Li5/c;)Landroid/graphics/Bitmap;

    .line 5
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v13, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v12, v13}, [I

    move-result-object v12

    .line 7
    aget v13, v12, v9

    .line 8
    aget v12, v12, v10

    if-eq v13, v8, :cond_1

    if-ne v12, v8, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v14, p6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v14, 0x0

    .line 9
    :goto_1
    iget v15, v0, Lv3/f;->a:I

    packed-switch v15, :pswitch_data_0

    .line 10
    iget-object v15, v0, Lv3/f;->d:Ljava/lang/Object;

    check-cast v15, Lcom/bumptech/glide/load/data/i;

    iget-object v7, v0, Lv3/f;->b:Ljava/lang/Object;

    check-cast v7, La2/k1;

    iget-object v9, v0, Lv3/f;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v10, :cond_4

    .line 12
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p6, v9

    move-object/from16 v9, v17

    check-cast v9, Lf5/e;

    move/from16 v17, v10

    .line 13
    :try_start_0
    new-instance v10, Lo5/w;

    new-instance v5, Ljava/io/FileInputStream;

    .line 14
    invoke-virtual {v15}, Lcom/bumptech/glide/load/data/i;->f()Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v10, v5, v7}, Lo5/w;-><init>(Ljava/io/InputStream;La2/k1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    invoke-interface {v9, v10, v7}, Lf5/e;->d(Ljava/io/InputStream;La2/k1;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-virtual {v10}, Lo5/w;->A()V

    .line 17
    invoke-virtual {v15}, Lcom/bumptech/glide/load/data/i;->f()Landroid/os/ParcelFileDescriptor;

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move v8, v4

    goto/16 :goto_6

    :cond_2
    const/4 v4, 0x1

    add-int/2addr v8, v4

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v9, p6

    move/from16 v10, v17

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v10

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_3

    .line 18
    invoke-virtual {v7}, Lo5/w;->A()V

    .line 19
    :cond_3
    invoke-virtual {v15}, Lcom/bumptech/glide/load/data/i;->f()Landroid/os/ParcelFileDescriptor;

    .line 20
    throw v0

    :cond_4
    :goto_4
    const/4 v8, -0x1

    goto :goto_6

    .line 21
    :pswitch_0
    iget-object v4, v0, Lv3/f;->b:Ljava/lang/Object;

    check-cast v4, Lcom/bumptech/glide/load/data/i;

    iget-object v4, v4, Lcom/bumptech/glide/load/data/i;->b:Ljava/lang/Object;

    check-cast v4, Lo5/w;

    .line 22
    invoke-virtual {v4}, Lo5/w;->reset()V

    .line 23
    iget-object v5, v0, Lv3/f;->d:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    iget-object v7, v0, Lv3/f;->c:Ljava/lang/Object;

    check-cast v7, La2/k1;

    invoke-static {v5, v4, v7}, Landroid/support/v4/media/session/b;->l(Ljava/util/ArrayList;Ljava/io/InputStream;La2/k1;)I

    move-result v8

    goto :goto_6

    .line 24
    :pswitch_1
    iget-object v4, v0, Lv3/f;->b:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 25
    invoke-static {v4}, La6/c;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, v0, Lv3/f;->d:Ljava/lang/Object;

    check-cast v5, La2/k1;

    if-nez v4, :cond_5

    goto :goto_4

    .line 26
    :cond_5
    iget-object v7, v0, Lv3/f;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_7

    .line 27
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lf5/e;

    .line 28
    :try_start_2
    invoke-interface {v10, v4, v5}, Lf5/e;->b(Ljava/nio/ByteBuffer;La2/k1;)I

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v15, 0x0

    .line 29
    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v16

    check-cast v16, Ljava/nio/ByteBuffer;

    const/4 v15, -0x1

    if-eq v10, v15, :cond_6

    move v8, v10

    goto :goto_6

    :cond_6
    const/4 v10, 0x1

    add-int/2addr v9, v10

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 30
    throw v2

    :cond_7
    const/4 v15, -0x1

    goto :goto_4

    :goto_6
    const/16 v4, 0x5a

    const/16 v5, 0x10e

    packed-switch v8, :pswitch_data_1

    const/4 v7, 0x0

    goto :goto_7

    :pswitch_2
    const/16 v7, 0x10e

    goto :goto_7

    :pswitch_3
    const/16 v7, 0x5a

    goto :goto_7

    :pswitch_4
    const/16 v7, 0xb4

    :goto_7
    packed-switch v8, :pswitch_data_2

    const/4 v9, 0x0

    goto :goto_8

    :pswitch_5
    const/4 v9, 0x1

    :goto_8
    const/high16 v10, -0x80000000

    move/from16 v15, p7

    if-ne v15, v10, :cond_a

    if-eq v7, v4, :cond_9

    if-ne v7, v5, :cond_8

    goto :goto_9

    :cond_8
    move/from16 v5, p8

    move v15, v13

    goto :goto_a

    :cond_9
    :goto_9
    move/from16 v5, p8

    move v15, v12

    goto :goto_a

    :cond_a
    move/from16 v5, p8

    :goto_a
    if-ne v5, v10, :cond_d

    if-eq v7, v4, :cond_c

    const/16 v5, 0x10e

    if-ne v7, v5, :cond_b

    goto :goto_b

    :cond_b
    move v5, v12

    goto :goto_c

    :cond_c
    :goto_b
    move v5, v13

    .line 31
    :cond_d
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lv3/f;->z()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v10

    .line 32
    const-string v4, "Downsampler"

    move/from16 v17, v8

    if-lez v13, :cond_22

    if-gtz v12, :cond_e

    move/from16 p6, v9

    move v3, v13

    move/from16 v19, v14

    const/4 v1, 0x3

    move/from16 v27, v5

    move-object v5, v4

    move v4, v12

    move/from16 v12, v27

    goto/16 :goto_19

    :cond_e
    const/16 v8, 0x5a

    if-eq v7, v8, :cond_10

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_f

    goto :goto_d

    :cond_f
    move/from16 p6, v9

    move v8, v12

    move v7, v13

    goto :goto_e

    :cond_10
    :goto_d
    move/from16 p6, v9

    move v7, v12

    move v8, v13

    .line 33
    :goto_e
    invoke-virtual {v3, v7, v8, v15, v5}, Lo5/n;->b(IIII)F

    move-result v9

    const/16 v19, 0x0

    cmpg-float v20, v9, v19

    if-lez v20, :cond_21

    move/from16 v19, v14

    .line 34
    invoke-virtual {v3, v7, v8, v15, v5}, Lo5/n;->a(IIII)I

    move-result v14

    if-eqz v14, :cond_20

    int-to-float v1, v7

    move-object/from16 v20, v4

    mul-float v4, v9, v1

    move/from16 v22, v12

    move/from16 v21, v13

    float-to-double v12, v4

    const-wide/high16 v23, 0x3fe0000000000000L    # 0.5

    .line 35
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double v12, v12, v23

    double-to-int v4, v12

    int-to-float v12, v8

    mul-float v13, v9, v12

    move/from16 v25, v5

    float-to-double v5, v13

    .line 36
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double v5, v5, v23

    double-to-int v5, v5

    .line 37
    div-int v4, v7, v4

    .line 38
    div-int v5, v8, v5

    const/4 v6, 0x1

    if-ne v14, v6, :cond_11

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_f

    .line 40
    :cond_11
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 41
    :goto_f
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v5, v6, :cond_12

    sget-object v6, Lo5/p;->j:Ljava/util/Set;

    iget-object v13, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 42
    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v4, 0x1

    goto :goto_10

    .line 43
    :cond_12
    invoke-static {v4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    const/4 v6, 0x1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ne v14, v6, :cond_13

    int-to-float v13, v4

    const/high16 v14, 0x3f800000    # 1.0f

    div-float v9, v14, v9

    cmpg-float v9, v13, v9

    if-gez v9, :cond_13

    shl-int/2addr v4, v6

    .line 44
    :cond_13
    :goto_10
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 45
    sget-object v6, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v10, v6, :cond_15

    const/16 v6, 0x8

    .line 46
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v1, v7

    float-to-double v8, v1

    .line 47
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    div-float/2addr v12, v7

    float-to-double v7, v12

    .line 48
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 49
    div-int/2addr v4, v6

    if-lez v4, :cond_14

    .line 50
    div-int/2addr v1, v4

    .line 51
    div-int/2addr v7, v4

    :cond_14
    :goto_11
    move-object/from16 v6, p10

    :goto_12
    move/from16 v12, v25

    goto/16 :goto_15

    .line 52
    :cond_15
    sget-object v6, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v10, v6, :cond_16

    sget-object v6, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v10, v6, :cond_17

    :cond_16
    move-object/from16 v6, p10

    goto :goto_14

    .line 53
    :cond_17
    invoke-virtual {v10}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->isWebp()Z

    move-result v6

    if-eqz v6, :cond_19

    const/16 v6, 0x18

    if-lt v5, v6, :cond_18

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 54
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    div-float/2addr v12, v4

    .line 55
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_11

    :cond_18
    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v6, v1

    .line 56
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    div-float/2addr v12, v4

    float-to-double v6, v12

    .line 57
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v7, v6

    goto :goto_11

    .line 58
    :cond_19
    rem-int v1, v7, v4

    if-nez v1, :cond_1a

    rem-int v1, v8, v4

    if-eqz v1, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    goto :goto_13

    .line 59
    :cond_1b
    div-int v1, v7, v4

    .line 60
    div-int v7, v8, v4

    goto :goto_11

    .line 61
    :goto_13
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v6, p10

    .line 62
    invoke-static {v0, v2, v6, v11}, Lo5/p;->c(Lv3/f;Landroid/graphics/BitmapFactory$Options;Lo5/o;Li5/c;)Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    .line 63
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 64
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v7, v8}, [I

    move-result-object v7

    .line 65
    aget v8, v7, v4

    .line 66
    aget v7, v7, v1

    move v1, v8

    goto :goto_12

    :goto_14
    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v7, v1

    .line 67
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v1, v7

    div-float/2addr v12, v4

    float-to-double v7, v12

    .line 68
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    goto :goto_12

    .line 69
    :goto_15
    invoke-virtual {v3, v1, v7, v15, v12}, Lo5/n;->b(IIII)F

    move-result v1

    float-to-double v3, v1

    const/16 v1, 0x13

    if-lt v5, v1, :cond_1e

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v3, v7

    if-gtz v1, :cond_1c

    move-wide v13, v3

    goto :goto_16

    .line 70
    :cond_1c
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v13, v7, v3

    :goto_16
    const-wide v25, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v13, v13, v25

    .line 71
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v1, v13

    int-to-double v13, v1

    .line 72
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v3

    add-double v13, v13, v23

    double-to-int v5, v13

    int-to-float v9, v5

    int-to-float v1, v1

    div-float/2addr v9, v1

    float-to-double v13, v9

    .line 73
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double v13, v3, v13

    int-to-double v7, v5

    .line 74
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v7

    add-double v13, v13, v23

    double-to-int v1, v13

    .line 75
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v3, v7

    if-gtz v1, :cond_1d

    goto :goto_17

    .line 76
    :cond_1d
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, v7, v3

    :goto_17
    mul-double v3, v3, v25

    .line 77
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v1, v3

    .line 78
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 79
    :cond_1e
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v1, :cond_1f

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v3, :cond_1f

    if-eq v1, v3, :cond_1f

    const/4 v1, 0x1

    .line 80
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_18

    :cond_1f
    const/4 v1, 0x0

    .line 81
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :goto_18
    move-object/from16 v1, p0

    move-object/from16 v5, v20

    move/from16 v3, v21

    move/from16 v4, v22

    goto :goto_1a

    .line 82
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    move/from16 v22, v12

    move/from16 v21, v13

    move v12, v5

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot scale with factor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", source: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v21

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v22

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], target: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    move-object/from16 v20, v4

    move/from16 p6, v9

    move v4, v12

    move v3, v13

    move/from16 v19, v14

    move v12, v5

    move-object/from16 v5, v20

    const/4 v1, 0x3

    .line 84
    :goto_19
    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_23

    if-eqz v10, :cond_23

    .line 85
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_23
    move-object/from16 v1, p0

    .line 86
    :goto_1a
    iget-object v7, v1, Lo5/p;->e:Lo5/v;

    move/from16 v8, p6

    move/from16 v9, v19

    invoke-virtual {v7, v15, v12, v9, v8}, Lo5/v;->c(IIZZ)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 87
    invoke-static {}, Leg/a;->b()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    iput-object v8, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    .line 88
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_1b

    :cond_24
    const/4 v8, 0x0

    :goto_1b
    if-eqz v7, :cond_25

    goto :goto_1e

    .line 89
    :cond_25
    sget-object v7, Lf5/b;->a:Lf5/b;

    move-object/from16 v9, p4

    if-eq v9, v7, :cond_28

    .line 90
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lv3/f;->z()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1c

    :catch_0
    nop

    const/4 v7, 0x3

    .line 91
    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_26

    if-eqz v9, :cond_26

    .line 92
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_26
    const/4 v7, 0x0

    :goto_1c
    if-eqz v7, :cond_27

    .line 93
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1d

    :cond_27
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_1d
    iput-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 94
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v7, v9, :cond_29

    const/4 v7, 0x1

    .line 95
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_1e

    .line 96
    :cond_28
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 97
    :cond_29
    :goto_1e
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v7, v9, :cond_2a

    const/4 v13, 0x1

    goto :goto_1f

    :cond_2a
    const/4 v13, 0x0

    .line 98
    :goto_1f
    iget v14, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v8, 0x1

    if-eq v14, v8, :cond_2c

    if-eqz v13, :cond_2b

    goto :goto_21

    :cond_2b
    :goto_20
    move-object/from16 v3, p5

    goto/16 :goto_27

    :cond_2c
    :goto_21
    if-lt v7, v9, :cond_2d

    const/4 v9, 0x1

    goto :goto_22

    .line 99
    :cond_2d
    sget-object v9, Lo5/p;->l:Ljava/util/Set;

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    :goto_22
    if-eqz v9, :cond_2b

    if-ltz v3, :cond_2e

    if-ltz v4, :cond_2e

    if-eqz p9, :cond_2e

    if-eqz v13, :cond_2e

    goto :goto_25

    .line 100
    :cond_2e
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v9, :cond_2f

    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v10, :cond_2f

    if-eq v9, v10, :cond_2f

    const/4 v10, 0x1

    goto :goto_23

    :cond_2f
    const/4 v10, 0x0

    :goto_23
    if-eqz v10, :cond_30

    int-to-float v9, v9

    .line 101
    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v10, v10

    div-float v14, v9, v10

    goto :goto_24

    :cond_30
    const/high16 v14, 0x3f800000    # 1.0f

    .line 102
    :goto_24
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v3, v3

    int-to-float v9, v9

    div-float/2addr v3, v9

    float-to-double v12, v3

    .line 103
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v3, v12

    int-to-float v4, v4

    div-float/2addr v4, v9

    float-to-double v9, v4

    .line 104
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v4, v9

    int-to-float v3, v3

    mul-float v3, v3, v14

    .line 105
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v3, v4

    mul-float v3, v3, v14

    .line 106
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v12, v3

    :goto_25
    if-lez v15, :cond_2b

    if-lez v12, :cond_2b

    const/16 v3, 0x1a

    if-lt v7, v3, :cond_32

    .line 107
    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {}, Leg/a;->b()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-ne v3, v4, :cond_31

    goto :goto_20

    .line 108
    :cond_31
    invoke-static/range {p2 .. p2}, Ln5/a;->e(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$Config;

    move-result-object v3

    goto :goto_26

    :cond_32
    const/4 v3, 0x0

    :goto_26
    if-nez v3, :cond_33

    .line 109
    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 110
    :cond_33
    invoke-interface {v11, v15, v12, v3}, Li5/c;->h(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_20

    :goto_27
    if-eqz v3, :cond_37

    const/16 v4, 0x1c

    if-lt v7, v4, :cond_36

    .line 111
    sget-object v4, Lf5/j;->a:Lf5/j;

    if-ne v3, v4, :cond_34

    invoke-static/range {p2 .. p2}, Ln5/a;->g(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/ColorSpace;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-static/range {p2 .. p2}, Ln5/a;->g(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/ColorSpace;

    move-result-object v3

    .line 112
    invoke-static {v3}, Leg/a;->s(Landroid/graphics/ColorSpace;)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v9, 0x1

    goto :goto_28

    :cond_34
    const/4 v9, 0x0

    :goto_28
    if-eqz v9, :cond_35

    .line 113
    invoke-static {}, Ln5/a;->f()Landroid/graphics/ColorSpace$Named;

    move-result-object v3

    goto :goto_29

    :cond_35
    invoke-static {}, Ln5/a;->y()Landroid/graphics/ColorSpace$Named;

    move-result-object v3

    :goto_29
    invoke-static {v3}, Ln5/a;->h(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-static {v2, v3}, Ln5/a;->p(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    goto :goto_2a

    :cond_36
    const/16 v3, 0x1a

    if-lt v7, v3, :cond_37

    .line 114
    invoke-static {}, Ln5/a;->y()Landroid/graphics/ColorSpace$Named;

    move-result-object v3

    invoke-static {v3}, Ln5/a;->h(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-static {v2, v3}, Ln5/a;->p(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 115
    :cond_37
    :goto_2a
    invoke-static {v0, v2, v6, v11}, Lo5/p;->c(Lv3/f;Landroid/graphics/BitmapFactory$Options;Lo5/o;Li5/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    invoke-interface {v6, v0, v11}, Lo5/o;->l(Landroid/graphics/Bitmap;Li5/c;)V

    const/4 v3, 0x2

    .line 117
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 118
    invoke-static {v0}, Lo5/p;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 119
    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lo5/p;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 120
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    :cond_38
    if-eqz v0, :cond_3a

    .line 122
    iget-object v2, v1, Lo5/p;->b:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    packed-switch v17, :pswitch_data_3

    move-object v7, v0

    goto/16 :goto_2d

    .line 123
    :pswitch_6
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/high16 v6, -0x40800000    # -1.0f

    packed-switch v17, :pswitch_data_4

    goto :goto_2b

    .line 124
    :pswitch_7
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_2b

    .line 125
    :pswitch_8
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 126
    invoke-virtual {v2, v6, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2b

    .line 127
    :pswitch_9
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_2b

    :pswitch_a
    const/high16 v5, 0x3f800000    # 1.0f

    .line 128
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 129
    invoke-virtual {v2, v6, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2b

    :pswitch_b
    const/high16 v5, 0x3f800000    # 1.0f

    .line 130
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 131
    invoke-virtual {v2, v6, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2b

    .line 132
    :pswitch_c
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_2b

    :pswitch_d
    const/high16 v5, 0x3f800000    # 1.0f

    .line 133
    invoke-virtual {v2, v6, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 134
    :goto_2b
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 135
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 136
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 137
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    if-eqz v6, :cond_39

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    goto :goto_2c

    :cond_39
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 139
    :goto_2c
    invoke-interface {v11, v4, v5, v6}, Li5/c;->f(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 140
    iget v5, v3, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 142
    invoke-static {v0, v4, v2}, Lo5/z;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    move-object v7, v4

    .line 143
    :goto_2d
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 144
    invoke-interface {v11, v0}, Li5/c;->c(Landroid/graphics/Bitmap;)V

    goto :goto_2e

    :cond_3a
    const/4 v7, 0x0

    :cond_3b
    :goto_2e
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
