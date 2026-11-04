.class public final La2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lu7/y0;

.field public static final f:La2/g;

.field public static final g:Lu7/y0;

.field public static final h:Lu7/d1;


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:I

.field public final c:Lu7/g0;

.field public final d:Lu7/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/16 v3, 0xc

    .line 5
    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    invoke-static {v4}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    sput-object v4, La2/g;->e:Lu7/y0;

    .line 15
    .line 16
    sget-object v5, Lu7/y0;->e:Lu7/y0;

    .line 17
    .line 18
    new-instance v6, La2/g;

    .line 19
    .line 20
    sget-object v7, La2/f;->d:La2/f;

    .line 21
    .line 22
    invoke-static {v7}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-direct {v6, v7, v4, v5}, La2/g;-><init>(Lu7/y0;Lu7/g0;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    sput-object v6, La2/g;->f:La2/g;

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v5, 0x5

    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const/4 v7, 0x6

    .line 41
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    new-array v9, v1, [Ljava/lang/Object;

    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    aput-object v4, v9, v10

    .line 49
    .line 50
    aput-object v6, v9, v0

    .line 51
    .line 52
    aput-object v8, v9, v2

    .line 53
    .line 54
    invoke-static {v1, v9}, Lu7/q;->b(I[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v9}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sput-object v1, La2/g;->g:Lu7/y0;

    .line 62
    .line 63
    new-instance v1, Landroidx/room/s;

    .line 64
    .line 65
    const/4 v2, 0x4

    .line 66
    invoke-direct {v1, v2, v3}, Landroidx/room/s;-><init>(II)V

    .line 67
    .line 68
    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v1, v2, v3}, Landroidx/room/s;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const/16 v2, 0x11

    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1, v2, v3}, Landroidx/room/s;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x7

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v1, v2, v3}, Landroidx/room/s;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const/16 v2, 0x1e

    .line 106
    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const/16 v3, 0xa

    .line 112
    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v1, v2, v3}, Landroidx/room/s;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    const/16 v2, 0x12

    .line 121
    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v1, v2, v3}, Landroidx/room/s;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const/16 v3, 0x8

    .line 138
    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v1, v2, v4}, Landroidx/room/s;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v1, v2, v4}, Landroidx/room/s;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    const/16 v2, 0xe

    .line 158
    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v1, v2, v3}, Landroidx/room/s;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v0}, Landroidx/room/s;->b(Z)Lu7/d1;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    sput-object v0, La2/g;->h:Lu7/d1;

    .line 175
    .line 176
    return-void
.end method

.method public constructor <init>(Lu7/y0;Lu7/g0;Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, La2/g;->a:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget v2, p1, Lu7/y0;->d:I

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lu7/y0;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, La2/f;

    .line 22
    .line 23
    iget-object v3, p0, La2/g;->a:Landroid/util/SparseArray;

    .line 24
    .line 25
    iget v4, v2, La2/f;->a:I

    .line 26
    .line 27
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_1
    iget-object v1, p0, La2/g;->a:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ge v0, v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, La2/g;->a:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, La2/f;

    .line 49
    .line 50
    iget v1, v1, La2/f;->b:I

    .line 51
    .line 52
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iput p1, p0, La2/g;->b:I

    .line 60
    .line 61
    invoke-static {p2}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, La2/g;->c:Lu7/g0;

    .line 66
    .line 67
    invoke-static {p3}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, La2/g;->d:Lu7/g0;

    .line 72
    .line 73
    return-void
.end method

.method public static a(I[I)Lu7/y0;
    .locals 7

    .line 1
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    const-string v1, "initialCapacity"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lu7/q;->c(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    new-array p1, v1, [I

    .line 15
    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    array-length v3, p1

    .line 18
    if-ge v1, v3, :cond_2

    .line 19
    .line 20
    aget v3, p1, v1

    .line 21
    .line 22
    new-instance v4, La2/f;

    .line 23
    .line 24
    invoke-direct {v4, v3, p0}, La2/f;-><init>(II)V

    .line 25
    .line 26
    .line 27
    array-length v3, v0

    .line 28
    add-int/lit8 v5, v2, 0x1

    .line 29
    .line 30
    invoke-static {v3, v5}, Lu7/a0;->f(II)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    array-length v6, v0

    .line 35
    if-gt v3, v6, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_1
    aput-object v4, v0, v2

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    move v2, v5

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {v2, v0}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;Lr1/d;Landroid/media/AudioDeviceInfo;Ljava/util/List;)La2/g;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0}, Ls1/g;->v(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/16 v2, 0x21

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-lt p3, v2, :cond_2

    .line 16
    .line 17
    invoke-virtual {p2}, Lr1/d;->a()Landroid/media/AudioAttributes;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-static {v1, p3}, La2/e;->m(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-static {p3}, La2/a;->f(Ljava/lang/Object;)Landroid/media/AudioDeviceInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    move-object p3, v4

    .line 42
    :goto_1
    if-eqz p3, :cond_3

    .line 43
    .line 44
    invoke-static {p3}, La2/t1;->b(Landroid/media/AudioDeviceInfo;)Lu7/g0;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    sget-object v4, La2/g;->e:Lu7/y0;

    .line 50
    .line 51
    :goto_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const-string v6, "android.hardware.type.automotive"

    .line 54
    .line 55
    const/4 v7, 0x2

    .line 56
    if-lt v5, v2, :cond_b

    .line 57
    .line 58
    invoke-static {p0}, Lu1/f0;->F(Landroid/content/Context;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_b

    .line 73
    .line 74
    :cond_4
    invoke-virtual {p2}, Lr1/d;->a()Landroid/media/AudioAttributes;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v1, p0}, La2/e;->t(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance p1, La2/g;

    .line 83
    .line 84
    new-instance p2, Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    new-instance v1, Ljava/util/HashSet;

    .line 94
    .line 95
    const/16 v2, 0xc

    .line 96
    .line 97
    filled-new-array {v2}, [I

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v2}, Ld/b;->a([I)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const/4 p3, 0x0

    .line 112
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-ge p3, v1, :cond_8

    .line 117
    .line 118
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v1}, La2/b;->j(Ljava/lang/Object;)Landroid/media/AudioProfile;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, La2/b;->e(Landroid/media/AudioProfile;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-ne v2, v0, :cond_5

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    invoke-static {v1}, La2/b;->A(Landroid/media/AudioProfile;)I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    invoke-static {v2}, Lu1/f0;->D(I)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_6

    .line 142
    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    sget-object v6, La2/g;->h:Lu7/d1;

    .line 148
    .line 149
    invoke-virtual {v6, v5}, Lu7/d1;->containsKey(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-nez v5, :cond_6

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_7

    .line 165
    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Ljava/util/Set;

    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-static {v1}, La2/b;->z(Landroid/media/AudioProfile;)[I

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v1}, Ld/b;->a([I)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    new-instance v5, Ljava/util/HashSet;

    .line 196
    .line 197
    invoke-static {v1}, La2/b;->z(Landroid/media/AudioProfile;)[I

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-static {v1}, Ld/b;->a([I)Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    :goto_4
    add-int/2addr p3, v0

    .line 212
    goto :goto_3

    .line 213
    :cond_8
    sget-object p0, Lu7/g0;->b:Lu7/e0;

    .line 214
    .line 215
    const-string p0, "initialCapacity"

    .line 216
    .line 217
    const/4 p3, 0x4

    .line 218
    invoke-static {p3, p0}, Lu7/q;->c(ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    new-array p0, p3, [Ljava/lang/Object;

    .line 222
    .line 223
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    .line 233
    .line 234
    move-result p3

    .line 235
    if-eqz p3, :cond_a

    .line 236
    .line 237
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p3

    .line 241
    check-cast p3, Ljava/util/Map$Entry;

    .line 242
    .line 243
    new-instance v1, La2/f;

    .line 244
    .line 245
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Ljava/lang/Integer;

    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p3

    .line 259
    check-cast p3, Ljava/util/Set;

    .line 260
    .line 261
    invoke-direct {v1, v2, p3}, La2/f;-><init>(ILjava/util/Set;)V

    .line 262
    .line 263
    .line 264
    array-length p3, p0

    .line 265
    add-int/lit8 v2, v3, 0x1

    .line 266
    .line 267
    invoke-static {p3, v2}, Lu7/a0;->f(II)I

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    array-length v5, p0

    .line 272
    if-gt p3, v5, :cond_9

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_9
    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    :goto_6
    aput-object v1, p0, v3

    .line 280
    .line 281
    move v3, v2

    .line 282
    goto :goto_5

    .line 283
    :cond_a
    invoke-static {v3, p0}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-direct {p1, p0, v4, p4}, La2/g;-><init>(Lu7/y0;Lu7/g0;Ljava/util/List;)V

    .line 288
    .line 289
    .line 290
    return-object p1

    .line 291
    :cond_b
    if-nez p3, :cond_c

    .line 292
    .line 293
    invoke-static {v1}, La2/a;->y(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 294
    .line 295
    .line 296
    move-result-object p3

    .line 297
    goto :goto_7

    .line 298
    :cond_c
    new-array v1, v0, [Landroid/media/AudioDeviceInfo;

    .line 299
    .line 300
    aput-object p3, v1, v3

    .line 301
    .line 302
    move-object p3, v1

    .line 303
    :goto_7
    array-length v1, p3

    .line 304
    const/4 v2, 0x0

    .line 305
    :goto_8
    if-ge v2, v1, :cond_e

    .line 306
    .line 307
    aget-object v5, p3, v2

    .line 308
    .line 309
    invoke-static {v5}, La2/a;->c(Landroid/media/AudioDeviceInfo;)I

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    invoke-static {v5}, Landroid/support/v4/media/session/b;->t(I)Z

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-eqz v5, :cond_d

    .line 318
    .line 319
    new-instance p0, La2/g;

    .line 320
    .line 321
    sget-object p1, La2/f;->d:La2/f;

    .line 322
    .line 323
    invoke-static {p1}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-direct {p0, p1, v4, p4}, La2/g;-><init>(Lu7/y0;Lu7/g0;Ljava/util/List;)V

    .line 328
    .line 329
    .line 330
    return-object p0

    .line 331
    :cond_d
    add-int/2addr v2, v0

    .line 332
    goto :goto_8

    .line 333
    :cond_e
    new-instance p3, Lu7/i0;

    .line 334
    .line 335
    invoke-direct {p3}, Lu7/i0;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-virtual {p3, v1}, Lu7/a0;->b(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 346
    .line 347
    const/16 v2, 0x1d

    .line 348
    .line 349
    const/16 v5, 0xa

    .line 350
    .line 351
    if-lt v1, v2, :cond_10

    .line 352
    .line 353
    invoke-static {p0}, Lu1/f0;->F(Landroid/content/Context;)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-nez v1, :cond_f

    .line 358
    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-eqz v1, :cond_10

    .line 368
    .line 369
    :cond_f
    invoke-static {p2}, La2/d;->b(Lr1/d;)Lu7/y0;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    invoke-virtual {p3, p0}, Lu7/a0;->d(Ljava/lang/Iterable;)V

    .line 377
    .line 378
    .line 379
    new-instance p0, La2/g;

    .line 380
    .line 381
    invoke-virtual {p3}, Lu7/i0;->h()Lu7/j0;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-static {p1}, Ld/b;->r0(Ljava/util/Collection;)[I

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-static {v5, p1}, La2/g;->a(I[I)Lu7/y0;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-direct {p0, p1, v4, p4}, La2/g;-><init>(Lu7/y0;Lu7/g0;Ljava/util/List;)V

    .line 394
    .line 395
    .line 396
    return-object p0

    .line 397
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 398
    .line 399
    .line 400
    move-result-object p0

    .line 401
    const-string p2, "use_external_surround_sound_flag"

    .line 402
    .line 403
    invoke-static {p0, p2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 404
    .line 405
    .line 406
    move-result p2

    .line 407
    if-ne p2, v0, :cond_11

    .line 408
    .line 409
    const/4 p2, 0x1

    .line 410
    goto :goto_9

    .line 411
    :cond_11
    const/4 p2, 0x0

    .line 412
    :goto_9
    if-nez p2, :cond_12

    .line 413
    .line 414
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 415
    .line 416
    const-string v2, "Amazon"

    .line 417
    .line 418
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-nez v2, :cond_12

    .line 423
    .line 424
    const-string v2, "Xiaomi"

    .line 425
    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-eqz v1, :cond_13

    .line 431
    .line 432
    :cond_12
    const-string v1, "external_surround_sound_enabled"

    .line 433
    .line 434
    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 435
    .line 436
    .line 437
    move-result p0

    .line 438
    if-ne p0, v0, :cond_13

    .line 439
    .line 440
    sget-object p0, La2/g;->g:Lu7/y0;

    .line 441
    .line 442
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    invoke-virtual {p3, p0}, Lu7/a0;->d(Ljava/lang/Iterable;)V

    .line 446
    .line 447
    .line 448
    :cond_13
    if-eqz p1, :cond_15

    .line 449
    .line 450
    if-nez p2, :cond_15

    .line 451
    .line 452
    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    .line 453
    .line 454
    invoke-virtual {p1, p0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 455
    .line 456
    .line 457
    move-result p0

    .line 458
    if-ne p0, v0, :cond_15

    .line 459
    .line 460
    const-string p0, "android.media.extra.ENCODINGS"

    .line 461
    .line 462
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 463
    .line 464
    .line 465
    move-result-object p0

    .line 466
    if-eqz p0, :cond_14

    .line 467
    .line 468
    invoke-static {p0}, Ld/b;->a([I)Ljava/util/List;

    .line 469
    .line 470
    .line 471
    move-result-object p0

    .line 472
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    invoke-virtual {p3, p0}, Lu7/a0;->d(Ljava/lang/Iterable;)V

    .line 476
    .line 477
    .line 478
    :cond_14
    new-instance p0, La2/g;

    .line 479
    .line 480
    invoke-virtual {p3}, Lu7/i0;->h()Lu7/j0;

    .line 481
    .line 482
    .line 483
    move-result-object p2

    .line 484
    invoke-static {p2}, Ld/b;->r0(Ljava/util/Collection;)[I

    .line 485
    .line 486
    .line 487
    move-result-object p2

    .line 488
    const-string p3, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 489
    .line 490
    invoke-virtual {p1, p3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 491
    .line 492
    .line 493
    move-result p1

    .line 494
    invoke-static {p1, p2}, La2/g;->a(I[I)Lu7/y0;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    invoke-direct {p0, p1, v4, p4}, La2/g;-><init>(Lu7/y0;Lu7/g0;Ljava/util/List;)V

    .line 499
    .line 500
    .line 501
    return-object p0

    .line 502
    :cond_15
    new-instance p0, La2/g;

    .line 503
    .line 504
    invoke-virtual {p3}, Lu7/i0;->h()Lu7/j0;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    invoke-static {p1}, Ld/b;->r0(Ljava/util/Collection;)[I

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    invoke-static {v5, p1}, La2/g;->a(I[I)Lu7/y0;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    invoke-direct {p0, p1, v4, p4}, La2/g;-><init>(Lu7/y0;Lu7/g0;Ljava/util/List;)V

    .line 517
    .line 518
    .line 519
    return-object p0
.end method


# virtual methods
.method public final c(Lr1/d;Lr1/p;)Landroid/util/Pair;
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    iget-object v1, v0, Lr1/p;->o:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lr1/p;->k:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1, v2}, Lr1/e0;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, La2/g;->h:Lu7/d1;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Lu7/d1;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v4, 0x0

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    return-object v4

    .line 28
    :cond_0
    move-object/from16 v2, p0

    .line 29
    .line 30
    iget-object v5, v2, La2/g;->a:Landroid/util/SparseArray;

    .line 31
    .line 32
    const/4 v6, 0x7

    .line 33
    const/4 v7, 0x6

    .line 34
    const/16 v8, 0x8

    .line 35
    .line 36
    const/16 v9, 0x12

    .line 37
    .line 38
    if-ne v1, v9, :cond_1

    .line 39
    .line 40
    invoke-static {v9, v5}, Lu1/f0;->i(ILandroid/util/SparseArray;)Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    if-nez v10, :cond_1

    .line 45
    .line 46
    const/4 v1, 0x6

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    if-ne v1, v8, :cond_2

    .line 49
    .line 50
    invoke-static {v8, v5}, Lu1/f0;->i(ILandroid/util/SparseArray;)Z

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    if-eqz v10, :cond_3

    .line 55
    .line 56
    :cond_2
    const/16 v10, 0x1e

    .line 57
    .line 58
    if-ne v1, v10, :cond_4

    .line 59
    .line 60
    invoke-static {v10, v5}, Lu1/f0;->i(ILandroid/util/SparseArray;)Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-nez v10, :cond_4

    .line 65
    .line 66
    :cond_3
    const/4 v1, 0x7

    .line 67
    :cond_4
    :goto_0
    invoke-static {v1, v5}, Lu1/f0;->i(ILandroid/util/SparseArray;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-nez v10, :cond_5

    .line 72
    .line 73
    return-object v4

    .line 74
    :cond_5
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, La2/f;

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const/4 v10, 0x1

    .line 84
    const/4 v11, 0x0

    .line 85
    const/4 v12, -0x1

    .line 86
    iget v13, v5, La2/f;->b:I

    .line 87
    .line 88
    iget-object v14, v5, La2/f;->c:Lu7/j0;

    .line 89
    .line 90
    iget v15, v0, Lr1/p;->G:I

    .line 91
    .line 92
    if-eq v15, v12, :cond_b

    .line 93
    .line 94
    if-ne v1, v9, :cond_6

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_6
    iget-object v0, v0, Lr1/p;->o:Ljava/lang/String;

    .line 98
    .line 99
    const-string v3, "audio/vnd.dts.uhd;profile=p2"

    .line 100
    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 108
    .line 109
    const/16 v3, 0x21

    .line 110
    .line 111
    if-ge v0, v3, :cond_7

    .line 112
    .line 113
    const/16 v0, 0xa

    .line 114
    .line 115
    if-le v15, v0, :cond_10

    .line 116
    .line 117
    return-object v4

    .line 118
    :cond_7
    if-nez v14, :cond_8

    .line 119
    .line 120
    if-gt v15, v13, :cond_a

    .line 121
    .line 122
    const/4 v11, 0x1

    .line 123
    goto :goto_1

    .line 124
    :cond_8
    invoke-static {v15}, Lu1/f0;->n(I)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_9

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v14, v0}, Lu7/b0;->contains(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    :cond_a
    :goto_1
    if-nez v11, :cond_10

    .line 140
    .line 141
    return-object v4

    .line 142
    :cond_b
    :goto_2
    iget v0, v0, Lr1/p;->H:I

    .line 143
    .line 144
    if-eq v0, v12, :cond_c

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_c
    const v0, 0xbb80

    .line 148
    .line 149
    .line 150
    :goto_3
    if-eqz v14, :cond_d

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_d
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 154
    .line 155
    const/16 v12, 0x1d

    .line 156
    .line 157
    iget v5, v5, La2/f;->a:I

    .line 158
    .line 159
    if-lt v9, v12, :cond_e

    .line 160
    .line 161
    move-object/from16 v9, p1

    .line 162
    .line 163
    invoke-static {v5, v0, v9}, La2/d;->c(IILr1/d;)I

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    goto :goto_4

    .line 168
    :cond_e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v3, v0}, Lu7/d1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-eqz v0, :cond_f

    .line 181
    .line 182
    move-object v5, v0

    .line 183
    :cond_f
    check-cast v5, Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    :goto_4
    move v15, v13

    .line 190
    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 191
    .line 192
    const/16 v3, 0x1c

    .line 193
    .line 194
    if-gt v0, v3, :cond_12

    .line 195
    .line 196
    if-ne v15, v6, :cond_11

    .line 197
    .line 198
    const/16 v7, 0x8

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_11
    const/4 v3, 0x3

    .line 202
    if-eq v15, v3, :cond_13

    .line 203
    .line 204
    const/4 v3, 0x4

    .line 205
    if-eq v15, v3, :cond_13

    .line 206
    .line 207
    const/4 v3, 0x5

    .line 208
    if-ne v15, v3, :cond_12

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_12
    move v7, v15

    .line 212
    :cond_13
    :goto_5
    const/16 v3, 0x1a

    .line 213
    .line 214
    if-gt v0, v3, :cond_14

    .line 215
    .line 216
    const-string v0, "fugu"

    .line 217
    .line 218
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_14

    .line 225
    .line 226
    if-ne v7, v10, :cond_14

    .line 227
    .line 228
    const/4 v7, 0x2

    .line 229
    :cond_14
    invoke-static {v7}, Lu1/f0;->n(I)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-nez v0, :cond_15

    .line 234
    .line 235
    return-object v4

    .line 236
    :cond_15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, La2/g;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, La2/g;

    .line 12
    .line 13
    iget-object v1, p0, La2/g;->a:Landroid/util/SparseArray;

    .line 14
    .line 15
    iget-object v3, p1, La2/g;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    sget-object v4, Lu1/f0;->a:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    if-nez v3, :cond_3

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    if-nez v3, :cond_4

    .line 25
    .line 26
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 27
    goto :goto_3

    .line 28
    :cond_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v5, 0x1f

    .line 31
    .line 32
    if-lt v4, v5, :cond_5

    .line 33
    .line 34
    invoke-static {v1, v3}, La2/b;->x(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    goto :goto_3

    .line 39
    :cond_5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eq v4, v5, :cond_6

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_6
    const/4 v5, 0x0

    .line 51
    :goto_1
    if-ge v5, v4, :cond_8

    .line 52
    .line 53
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-static {v7, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_7

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_7
    add-int/2addr v5, v0

    .line 73
    goto :goto_1

    .line 74
    :cond_8
    :goto_2
    const/4 v1, 0x1

    .line 75
    :goto_3
    if-eqz v1, :cond_9

    .line 76
    .line 77
    iget v1, p0, La2/g;->b:I

    .line 78
    .line 79
    iget v3, p1, La2/g;->b:I

    .line 80
    .line 81
    if-ne v1, v3, :cond_9

    .line 82
    .line 83
    iget-object v1, p0, La2/g;->c:Lu7/g0;

    .line 84
    .line 85
    iget-object v3, p1, La2/g;->c:Lu7/g0;

    .line 86
    .line 87
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_9

    .line 92
    .line 93
    iget-object v1, p0, La2/g;->d:Lu7/g0;

    .line 94
    .line 95
    iget-object p1, p1, La2/g;->d:Lu7/g0;

    .line 96
    .line 97
    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_9

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_9
    const/4 v0, 0x0

    .line 105
    :goto_4
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget v0, p0, La2/g;->b:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-object v2, p0, La2/g;->a:Landroid/util/SparseArray;

    .line 8
    .line 9
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 10
    .line 11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    if-lt v3, v1, :cond_0

    .line 14
    .line 15
    invoke-static {v2}, La2/b;->f(Landroid/util/SparseArray;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/16 v3, 0x11

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-ge v4, v5, :cond_1

    .line 28
    .line 29
    mul-int/lit8 v3, v3, 0x1f

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    add-int/2addr v5, v3

    .line 36
    mul-int/lit8 v5, v5, 0x1f

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-int/2addr v3, v5

    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v2, v3

    .line 51
    :goto_1
    add-int/2addr v0, v2

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v2, p0, La2/g;->c:Lu7/g0;

    .line 55
    .line 56
    invoke-static {v2}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    add-int/2addr v2, v0

    .line 61
    mul-int/lit8 v2, v2, 0x1f

    .line 62
    .line 63
    iget-object v0, p0, La2/g;->d:Lu7/g0;

    .line 64
    .line 65
    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v0, v2

    .line 70
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AudioCapabilities[maxChannelCount="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, La2/g;->b:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", audioProfiles="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, La2/g;->a:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", speakerLayoutChannelMasks="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, La2/g;->c:Lu7/g0;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", spatializerChannelMasks="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, La2/g;->d:Lu7/g0;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "]"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
