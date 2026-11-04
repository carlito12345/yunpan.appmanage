.class public final Lm0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Service;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:I

.field public final h:Z

.field public i:Ljava/lang/String;

.field public j:Landroid/os/Bundle;

.field public final k:Ljava/lang/String;

.field public final l:Z

.field public final m:Landroid/app/Notification;

.field public n:Z

.field public final o:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Service;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm0/q;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lm0/q;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lm0/q;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lm0/q;->h:Z

    .line 27
    .line 28
    new-instance v1, Landroid/app/Notification;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lm0/q;->m:Landroid/app/Notification;

    .line 34
    .line 35
    iput-object p1, p0, Lm0/q;->a:Landroid/app/Service;

    .line 36
    .line 37
    iput-object p2, p0, Lm0/q;->k:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    iput-wide p1, v1, Landroid/app/Notification;->when:J

    .line 44
    .line 45
    const/4 p1, -0x1

    .line 46
    iput p1, v1, Landroid/app/Notification;->audioStreamType:I

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lm0/q;->g:I

    .line 50
    .line 51
    new-instance p1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lm0/q;->o:Ljava/util/ArrayList;

    .line 57
    .line 58
    iput-boolean v0, p0, Lm0/q;->l:Z

    .line 59
    .line 60
    return-void
.end method

.method public static b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x1400

    .line 9
    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 8

    .line 1
    new-instance v0, Lg3/j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lg3/j;-><init>(Lm0/q;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lg3/j;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lm0/q;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1a

    .line 16
    .line 17
    iget-object v3, v0, Lg3/j;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Landroid/app/Notification$Builder;

    .line 20
    .line 21
    if-lt v1, v2, :cond_0

    .line 22
    .line 23
    invoke-static {v3}, Lm0/r;->a(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_0
    iget v2, v0, Lg3/j;->a:I

    .line 30
    .line 31
    const/16 v4, 0x18

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x2

    .line 35
    if-lt v1, v4, :cond_2

    .line 36
    .line 37
    invoke-static {v3}, Lm0/r;->a(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v2, :cond_c

    .line 42
    .line 43
    invoke-static {v0}, Lm0/u;->f(Landroid/app/Notification;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 50
    .line 51
    and-int/lit16 v1, v1, 0x200

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    if-ne v2, v6, :cond_1

    .line 56
    .line 57
    invoke-static {v0}, Lg3/j;->j(Landroid/app/Notification;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {v0}, Lm0/u;->f(Landroid/app/Notification;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_c

    .line 65
    .line 66
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 67
    .line 68
    and-int/lit16 v1, v1, 0x200

    .line 69
    .line 70
    if-nez v1, :cond_c

    .line 71
    .line 72
    if-ne v2, v5, :cond_c

    .line 73
    .line 74
    invoke-static {v0}, Lg3/j;->j(Landroid/app/Notification;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_2
    const/16 v4, 0x15

    .line 80
    .line 81
    iget-object v7, v0, Lg3/j;->e:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v7, Landroid/os/Bundle;

    .line 84
    .line 85
    if-lt v1, v4, :cond_4

    .line 86
    .line 87
    invoke-static {v3, v7}, Lm0/t;->a(Landroid/app/Notification$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Lm0/r;->a(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v2, :cond_c

    .line 95
    .line 96
    invoke-static {v0}, Lm0/u;->f(Landroid/app/Notification;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 103
    .line 104
    and-int/lit16 v1, v1, 0x200

    .line 105
    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    if-ne v2, v6, :cond_3

    .line 109
    .line 110
    invoke-static {v0}, Lg3/j;->j(Landroid/app/Notification;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-static {v0}, Lm0/u;->f(Landroid/app/Notification;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_c

    .line 118
    .line 119
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 120
    .line 121
    and-int/lit16 v1, v1, 0x200

    .line 122
    .line 123
    if-nez v1, :cond_c

    .line 124
    .line 125
    if-ne v2, v5, :cond_c

    .line 126
    .line 127
    invoke-static {v0}, Lg3/j;->j(Landroid/app/Notification;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_1

    .line 131
    .line 132
    :cond_4
    const/16 v4, 0x14

    .line 133
    .line 134
    if-lt v1, v4, :cond_6

    .line 135
    .line 136
    invoke-static {v3, v7}, Lm0/t;->a(Landroid/app/Notification$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 137
    .line 138
    .line 139
    invoke-static {v3}, Lm0/r;->a(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v2, :cond_c

    .line 144
    .line 145
    invoke-static {v0}, Lm0/u;->f(Landroid/app/Notification;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    if-eqz v1, :cond_5

    .line 150
    .line 151
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 152
    .line 153
    and-int/lit16 v1, v1, 0x200

    .line 154
    .line 155
    if-eqz v1, :cond_5

    .line 156
    .line 157
    if-ne v2, v6, :cond_5

    .line 158
    .line 159
    invoke-static {v0}, Lg3/j;->j(Landroid/app/Notification;)V

    .line 160
    .line 161
    .line 162
    :cond_5
    invoke-static {v0}, Lm0/u;->f(Landroid/app/Notification;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-eqz v1, :cond_c

    .line 167
    .line 168
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 169
    .line 170
    and-int/lit16 v1, v1, 0x200

    .line 171
    .line 172
    if-nez v1, :cond_c

    .line 173
    .line 174
    if-ne v2, v5, :cond_c

    .line 175
    .line 176
    invoke-static {v0}, Lg3/j;->j(Landroid/app/Notification;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_6
    iget-object v0, v0, Lg3/j;->d:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Ljava/util/ArrayList;

    .line 183
    .line 184
    const/16 v2, 0x13

    .line 185
    .line 186
    const-string v4, "android.support.actionExtras"

    .line 187
    .line 188
    if-lt v1, v2, :cond_8

    .line 189
    .line 190
    invoke-static {v0}, Lm0/c0;->a(Ljava/util/ArrayList;)Landroid/util/SparseArray;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-eqz v0, :cond_7

    .line 195
    .line 196
    invoke-virtual {v7, v4, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 197
    .line 198
    .line 199
    :cond_7
    invoke-static {v3, v7}, Lm0/t;->a(Landroid/app/Notification$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 200
    .line 201
    .line 202
    invoke-static {v3}, Lm0/r;->a(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    goto :goto_1

    .line 207
    :cond_8
    invoke-static {v3}, Lm0/r;->a(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-static {v1}, Lm0/c0;->b(Landroid/app/Notification;)Landroid/os/Bundle;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    new-instance v3, Landroid/os/Bundle;

    .line 216
    .line 217
    invoke-direct {v3, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    :cond_9
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-eqz v6, :cond_a

    .line 233
    .line 234
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    check-cast v6, Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    if-eqz v7, :cond_9

    .line 245
    .line 246
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    goto :goto_0

    .line 250
    :cond_a
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v0}, Lm0/c0;->a(Ljava/util/ArrayList;)Landroid/util/SparseArray;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    if-eqz v0, :cond_b

    .line 258
    .line 259
    invoke-static {v1}, Lm0/c0;->b(Landroid/app/Notification;)Landroid/os/Bundle;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 264
    .line 265
    .line 266
    :cond_b
    move-object v0, v1

    .line 267
    :cond_c
    :goto_1
    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/q;->m:Landroid/app/Notification;

    .line 2
    .line 3
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 4
    .line 5
    or-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 8
    .line 9
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm0/q;->m:Landroid/app/Notification;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 8
    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x15

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lm0/p;->b()Landroid/media/AudioAttributes$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-static {v1, v2}, Lm0/p;->c(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x5

    .line 25
    invoke-static {v1, v2}, Lm0/p;->e(Landroid/media/AudioAttributes$Builder;I)Landroid/media/AudioAttributes$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lm0/p;->a(Landroid/media/AudioAttributes$Builder;)Landroid/media/AudioAttributes;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lm0/o;->j(Landroid/app/Notification;Landroid/media/AudioAttributes;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
