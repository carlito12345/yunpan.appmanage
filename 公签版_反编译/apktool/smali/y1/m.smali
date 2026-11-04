.class public final Ly1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final B:I

.field public static final C:Z


# instance fields
.field public final A:Z

.field public final a:Landroid/content/ContextWrapper;

.field public final b:Lu1/z;

.field public final c:Ly1/l;

.field public final d:Ly1/l;

.field public final e:Ly1/l;

.field public final f:Ly1/l;

.field public final g:Landroid/os/Looper;

.field public final h:I

.field public final i:Lr1/d;

.field public final j:I

.field public final k:Z

.field public final l:Ly1/e1;

.field public final m:Ly1/d1;

.field public final n:J

.field public final o:J

.field public final p:J

.field public final q:Ly1/e;

.field public final r:J

.field public final s:J

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:Z

.field public y:Z

.field public final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lu1/f0;->a:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lqf/c;->b0(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "emulator"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string v1, "emu64a"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string v1, "emu64x"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    const-string v1, "generic"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/16 v0, 0x2710

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    const/16 v0, 0x7530

    .line 46
    .line 47
    :goto_1
    sput v0, Ly1/m;->B:I

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    sput-boolean v0, Ly1/m;->C:Z

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Ly1/l;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p1, v2}, Ly1/l;-><init>(Landroid/content/ContextWrapper;I)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ly1/l;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {v2, p1, v3}, Ly1/l;-><init>(Landroid/content/ContextWrapper;I)V

    .line 12
    .line 13
    .line 14
    new-instance v4, Ly1/l;

    .line 15
    .line 16
    invoke-direct {v4, p1, v0}, Ly1/l;-><init>(Landroid/content/ContextWrapper;I)V

    .line 17
    .line 18
    .line 19
    new-instance v5, Landroidx/media3/exoplayer/video/r;

    .line 20
    .line 21
    invoke-direct {v5, v0}, Landroidx/media3/exoplayer/video/r;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Ly1/l;

    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    invoke-direct {v0, p1, v5}, Ly1/l;-><init>(Landroid/content/ContextWrapper;I)V

    .line 28
    .line 29
    .line 30
    new-instance v5, Lua/t6;

    .line 31
    .line 32
    const/16 v6, 0xb

    .line 33
    .line 34
    invoke-direct {v5, v6}, Lua/t6;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Ly1/m;->a:Landroid/content/ContextWrapper;

    .line 44
    .line 45
    iput-object v1, p0, Ly1/m;->c:Ly1/l;

    .line 46
    .line 47
    iput-object v2, p0, Ly1/m;->d:Ly1/l;

    .line 48
    .line 49
    iput-object v4, p0, Ly1/m;->e:Ly1/l;

    .line 50
    .line 51
    iput-object v0, p0, Ly1/m;->f:Ly1/l;

    .line 52
    .line 53
    sget-object p1, Lu1/f0;->a:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_0
    iput-object p1, p0, Ly1/m;->g:Landroid/os/Looper;

    .line 67
    .line 68
    sget-object p1, Lr1/d;->d:Lr1/d;

    .line 69
    .line 70
    iput-object p1, p0, Ly1/m;->i:Lr1/d;

    .line 71
    .line 72
    iput v3, p0, Ly1/m;->j:I

    .line 73
    .line 74
    iput-boolean v3, p0, Ly1/m;->k:Z

    .line 75
    .line 76
    sget-object p1, Ly1/e1;->d:Ly1/e1;

    .line 77
    .line 78
    iput-object p1, p0, Ly1/m;->l:Ly1/e1;

    .line 79
    .line 80
    const-wide/16 v0, 0x1388

    .line 81
    .line 82
    iput-wide v0, p0, Ly1/m;->n:J

    .line 83
    .line 84
    const-wide/16 v0, 0x3a98

    .line 85
    .line 86
    iput-wide v0, p0, Ly1/m;->o:J

    .line 87
    .line 88
    const-wide/16 v0, 0xbb8

    .line 89
    .line 90
    iput-wide v0, p0, Ly1/m;->p:J

    .line 91
    .line 92
    sget-object p1, Ly1/d1;->g:Ly1/d1;

    .line 93
    .line 94
    iput-object p1, p0, Ly1/m;->m:Ly1/d1;

    .line 95
    .line 96
    const-wide/16 v0, 0x14

    .line 97
    .line 98
    invoke-static {v0, v1}, Lu1/f0;->G(J)J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    const-wide/16 v4, 0x1f4

    .line 103
    .line 104
    invoke-static {v4, v5}, Lu1/f0;->G(J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v6

    .line 108
    new-instance p1, Ly1/e;

    .line 109
    .line 110
    invoke-direct {p1, v0, v1, v6, v7}, Ly1/e;-><init>(JJ)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Ly1/m;->q:Ly1/e;

    .line 114
    .line 115
    sget-object p1, Lu1/z;->a:Lu1/z;

    .line 116
    .line 117
    iput-object p1, p0, Ly1/m;->b:Lu1/z;

    .line 118
    .line 119
    iput-wide v4, p0, Ly1/m;->r:J

    .line 120
    .line 121
    const-wide/16 v0, 0x7d0

    .line 122
    .line 123
    iput-wide v0, p0, Ly1/m;->s:J

    .line 124
    .line 125
    const p1, 0x927c0

    .line 126
    .line 127
    .line 128
    iput p1, p0, Ly1/m;->t:I

    .line 129
    .line 130
    sget-boolean v0, Ly1/m;->C:Z

    .line 131
    .line 132
    const v1, 0x7fffffff

    .line 133
    .line 134
    .line 135
    if-eqz v0, :cond_1

    .line 136
    .line 137
    sget v2, Ly1/m;->B:I

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_1
    const v2, 0x7fffffff

    .line 141
    .line 142
    .line 143
    :goto_1
    iput v2, p0, Ly1/m;->u:I

    .line 144
    .line 145
    if-eqz v0, :cond_2

    .line 146
    .line 147
    const v1, 0xea60

    .line 148
    .line 149
    .line 150
    :cond_2
    iput v1, p0, Ly1/m;->v:I

    .line 151
    .line 152
    iput p1, p0, Ly1/m;->w:I

    .line 153
    .line 154
    iput-boolean v3, p0, Ly1/m;->x:Z

    .line 155
    .line 156
    const-string p1, ""

    .line 157
    .line 158
    iput-object p1, p0, Ly1/m;->z:Ljava/lang/String;

    .line 159
    .line 160
    const/16 p1, -0x3e8

    .line 161
    .line 162
    iput p1, p0, Ly1/m;->h:I

    .line 163
    .line 164
    new-instance p1, Ls9/a;

    .line 165
    .line 166
    const/16 v0, 0x1a

    .line 167
    .line 168
    invoke-direct {p1, v0}, Ls9/a;-><init>(I)V

    .line 169
    .line 170
    .line 171
    iput-boolean v3, p0, Ly1/m;->A:Z

    .line 172
    .line 173
    return-void
.end method
