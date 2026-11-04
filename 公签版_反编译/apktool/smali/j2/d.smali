.class public final Lj2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/media/Spatializer;

.field public final b:Z

.field public final c:Landroid/os/Handler;

.field public final d:Lj2/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    move-object p1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Ls1/g;->v(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {p1}, Lj2/b;->b(Landroid/media/AudioManager;)Landroid/media/Spatializer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lj2/d;->a:Landroid/media/Spatializer;

    .line 30
    .line 31
    invoke-static {p1}, Lj2/b;->a(Landroid/media/Spatializer;)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_2
    iput-boolean v1, p0, Lj2/d;->b:Z

    .line 39
    .line 40
    new-instance p3, Landroid/os/Handler;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    .line 51
    .line 52
    iput-object p3, p0, Lj2/d;->c:Landroid/os/Handler;

    .line 53
    .line 54
    new-instance v0, Lj2/c;

    .line 55
    .line 56
    invoke-direct {v0, p2}, Lj2/c;-><init>(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lj2/d;->d:Lj2/c;

    .line 60
    .line 61
    new-instance p2, La2/y0;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {p2, v1, p3}, La2/y0;-><init>(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p2, v0}, Lj2/b;->f(Landroid/media/Spatializer;La2/y0;Lj2/c;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    :goto_1
    iput-object v0, p0, Lj2/d;->a:Landroid/media/Spatializer;

    .line 72
    .line 73
    iput-boolean v1, p0, Lj2/d;->b:Z

    .line 74
    .line 75
    iput-object v0, p0, Lj2/d;->c:Landroid/os/Handler;

    .line 76
    .line 77
    iput-object v0, p0, Lj2/d;->d:Lj2/c;

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final a(Lr1/d;Lr1/p;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lj2/d;->a:Landroid/media/Spatializer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v2, p0, Lj2/d;->b:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lj2/b;->h(Landroid/media/Spatializer;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lj2/d;->a:Landroid/media/Spatializer;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Lj2/b;->l(Landroid/media/Spatializer;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    iget-object v0, p2, Lr1/p;->o:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "audio/eac3-joc"

    .line 35
    .line 36
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v2, -0x1

    .line 41
    iget v3, p2, Lr1/p;->G:I

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const/16 v0, 0x10

    .line 46
    .line 47
    if-ne v3, v0, :cond_5

    .line 48
    .line 49
    const/16 v3, 0xc

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v0, p2, Lr1/p;->o:Ljava/lang/String;

    .line 53
    .line 54
    const-string v4, "audio/iamf"

    .line 55
    .line 56
    invoke-static {v0, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    if-ne v3, v2, :cond_5

    .line 63
    .line 64
    const/4 v3, 0x6

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const-string v4, "audio/ac4"

    .line 67
    .line 68
    invoke-static {v0, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    const/16 v0, 0x12

    .line 75
    .line 76
    if-eq v3, v0, :cond_4

    .line 77
    .line 78
    const/16 v0, 0x15

    .line 79
    .line 80
    if-ne v3, v0, :cond_5

    .line 81
    .line 82
    :cond_4
    const/16 v3, 0x18

    .line 83
    .line 84
    :cond_5
    :goto_1
    invoke-static {v3}, Lu1/f0;->n(I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_6

    .line 89
    .line 90
    return v1

    .line 91
    :cond_6
    new-instance v1, Landroid/media/AudioFormat$Builder;

    .line 92
    .line 93
    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 94
    .line 95
    .line 96
    const/4 v3, 0x2

    .line 97
    invoke-virtual {v1, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget p2, p2, Lr1/p;->H:I

    .line 106
    .line 107
    if-eq p2, v2, :cond_7

    .line 108
    .line 109
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 110
    .line 111
    .line 112
    :cond_7
    iget-object p2, p0, Lj2/d;->a:Landroid/media/Spatializer;

    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {p2}, Lj2/b;->c(Ljava/lang/Object;)Landroid/media/Spatializer;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p1}, Lr1/d;->a()Landroid/media/AudioAttributes;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {p2, p1, v0}, Lj2/b;->i(Landroid/media/Spatializer;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    return p1
.end method

.method public final b()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lj2/d;->a:Landroid/media/Spatializer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lj2/d;->b:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-static {v0}, Lj2/b;->h(Landroid/media/Spatializer;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lj2/d;->a:Landroid/media/Spatializer;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {v0}, Lj2/b;->l(Landroid/media/Spatializer;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v1, 0x24

    .line 28
    .line 29
    if-lt v0, v1, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lj2/d;->a:Landroid/media/Spatializer;

    .line 32
    .line 33
    invoke-static {v0}, La9/o;->n(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lj2/b;->c(Ljava/lang/Object;)Landroid/media/Spatializer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/media/Spatializer;->getSpatializedChannelMasks()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_0
    const/16 v0, 0xfc

    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    :cond_1
    invoke-static {}, Lu7/g0;->p()Lu7/y0;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
