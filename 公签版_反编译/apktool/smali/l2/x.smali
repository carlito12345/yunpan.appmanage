.class public final Ll2/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3/j;


# instance fields
.field public final a:Lu1/q;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lu1/q;

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    invoke-direct {p1, v0}, Lu1/q;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ll2/x;->a:Lu1/q;

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lu1/q;

    .line 21
    .line 22
    invoke-direct {p1}, Lu1/q;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Ll2/x;->a:Lu1/q;

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ll2/l;Lz2/g;I)Lr1/d0;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/4 v3, 0x0

    .line 5
    :cond_0
    rem-int/lit8 v4, v3, 0xa

    .line 6
    .line 7
    add-int/lit8 v5, v4, 0xa

    .line 8
    .line 9
    const/16 v6, 0xa

    .line 10
    .line 11
    iget-object v7, p0, Ll2/x;->a:Lu1/q;

    .line 12
    .line 13
    if-nez v4, :cond_1

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    iget-object v8, v7, Lu1/q;->a:[B

    .line 18
    .line 19
    const/16 v9, 0x9

    .line 20
    .line 21
    invoke-static {v8, v6, v8, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    :cond_1
    if-nez v3, :cond_2

    .line 25
    .line 26
    const/16 v8, 0xa

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v8, 0x1

    .line 30
    :goto_1
    :try_start_0
    iget-object v9, v7, Lu1/q;->a:[B

    .line 31
    .line 32
    sub-int v10, v5, v8

    .line 33
    .line 34
    invoke-virtual {p1, v9, v10, v8, v0}, Ll2/l;->c([BIIZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7, v4}, Lu1/q;->O(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v5}, Lu1/q;->N(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7}, Lu1/q;->a()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x3

    .line 48
    if-lt v4, v5, :cond_7

    .line 49
    .line 50
    invoke-virtual {v7}, Lu1/q;->E()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    iget v8, v7, Lu1/q;->b:I

    .line 55
    .line 56
    sub-int/2addr v8, v5

    .line 57
    iput v8, v7, Lu1/q;->b:I

    .line 58
    .line 59
    const v5, 0x494433

    .line 60
    .line 61
    .line 62
    if-ne v4, v5, :cond_4

    .line 63
    .line 64
    const/4 v3, 0x6

    .line 65
    invoke-virtual {v7, v3}, Lu1/q;->P(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Lu1/q;->A()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    add-int/lit8 v4, v3, 0xa

    .line 73
    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    new-array v1, v4, [B

    .line 77
    .line 78
    iget-object v5, v7, Lu1/q;->a:[B

    .line 79
    .line 80
    invoke-static {v5, v8, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v1, v6, v3, v0}, Ll2/l;->c([BIIZ)Z

    .line 84
    .line 85
    .line 86
    new-instance v3, Lz2/h;

    .line 87
    .line 88
    invoke-direct {v3, p2}, Lz2/h;-><init>(Lz2/g;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v4, v1}, Lz2/h;->s0(I[B)Lr1/d0;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {p1, v3, v0}, Ll2/l;->k(IZ)Z

    .line 97
    .line 98
    .line 99
    :goto_2
    add-int/2addr v2, v4

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {v7}, Lu1/q;->j()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    invoke-static {v4}, Ll2/b;->h(I)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    const/4 v5, -0x1

    .line 110
    if-eq v4, v5, :cond_5

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    if-nez v3, :cond_6

    .line 114
    .line 115
    const/16 v4, 0x14

    .line 116
    .line 117
    invoke-virtual {v7, v4}, Lu1/q;->c(I)V

    .line 118
    .line 119
    .line 120
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    if-le v3, p3, :cond_0

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_7
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 126
    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string p3, "position="

    .line 130
    .line 131
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget p3, v7, Lu1/q;->b:I

    .line 135
    .line 136
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p3, ", limit="

    .line 140
    .line 141
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget p3, v7, Lu1/q;->c:I

    .line 145
    .line 146
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :catch_0
    :goto_3
    iput v0, p1, Ll2/l;->f:I

    .line 158
    .line 159
    invoke-virtual {p1, v2, v0}, Ll2/l;->k(IZ)Z

    .line 160
    .line 161
    .line 162
    return-object v1
.end method

.method public b([BIILi3/i;Lu1/f;)V
    .locals 16

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    add-int v2, v0, p3

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    iget-object v4, v3, Ll2/x;->a:Lu1/q;

    .line 10
    .line 11
    move-object/from16 v5, p1

    .line 12
    .line 13
    invoke-virtual {v4, v2, v5}, Lu1/q;->M(I[B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v0}, Lu1/q;->O(I)V

    .line 17
    .line 18
    .line 19
    new-instance v10, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_8

    .line 29
    .line 30
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-lt v0, v1, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_1
    const-string v6, "Incomplete Mp4Webvtt Top Level box header found."

    .line 42
    .line 43
    invoke-static {v6, v0}, La9/o;->i(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Lu1/q;->o()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {v4}, Lu1/q;->o()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const v7, 0x76747463

    .line 55
    .line 56
    .line 57
    if-ne v6, v7, :cond_7

    .line 58
    .line 59
    sub-int/2addr v0, v1

    .line 60
    const/4 v6, 0x0

    .line 61
    move-object v7, v6

    .line 62
    move-object v8, v7

    .line 63
    :cond_1
    :goto_2
    if-lez v0, :cond_4

    .line 64
    .line 65
    if-lt v0, v1, :cond_2

    .line 66
    .line 67
    const/4 v9, 0x1

    .line 68
    goto :goto_3

    .line 69
    :cond_2
    const/4 v9, 0x0

    .line 70
    :goto_3
    const-string v11, "Incomplete vtt cue box header found."

    .line 71
    .line 72
    invoke-static {v11, v9}, La9/o;->i(Ljava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Lu1/q;->o()I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    invoke-virtual {v4}, Lu1/q;->o()I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    add-int/lit8 v0, v0, -0x8

    .line 84
    .line 85
    sub-int/2addr v9, v1

    .line 86
    iget-object v12, v4, Lu1/q;->a:[B

    .line 87
    .line 88
    iget v13, v4, Lu1/q;->b:I

    .line 89
    .line 90
    sget-object v14, Lu1/f0;->a:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v14, Ljava/lang/String;

    .line 93
    .line 94
    sget-object v15, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 95
    .line 96
    invoke-direct {v14, v12, v13, v9, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v9}, Lu1/q;->P(I)V

    .line 100
    .line 101
    .line 102
    sub-int/2addr v0, v9

    .line 103
    const v9, 0x73747467

    .line 104
    .line 105
    .line 106
    if-ne v11, v9, :cond_3

    .line 107
    .line 108
    new-instance v8, Lr3/g;

    .line 109
    .line 110
    invoke-direct {v8}, Lr3/g;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-static {v14, v8}, Lr3/h;->e(Ljava/lang/String;Lr3/g;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Lr3/g;->a()Lt1/a;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    goto :goto_2

    .line 121
    :cond_3
    const v9, 0x7061796c

    .line 122
    .line 123
    .line 124
    if-ne v11, v9, :cond_1

    .line 125
    .line 126
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-static {v6, v7, v9}, Lr3/h;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    goto :goto_2

    .line 139
    :cond_4
    if-nez v7, :cond_5

    .line 140
    .line 141
    const-string v7, ""

    .line 142
    .line 143
    :cond_5
    if-eqz v8, :cond_6

    .line 144
    .line 145
    iput-object v7, v8, Lt1/a;->a:Ljava/lang/CharSequence;

    .line 146
    .line 147
    iput-object v6, v8, Lt1/a;->b:Landroid/graphics/Bitmap;

    .line 148
    .line 149
    invoke-virtual {v8}, Lt1/a;->a()Lt1/b;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    goto :goto_4

    .line 154
    :cond_6
    sget-object v0, Lr3/h;->a:Ljava/util/regex/Pattern;

    .line 155
    .line 156
    new-instance v0, Lr3/g;

    .line 157
    .line 158
    invoke-direct {v0}, Lr3/g;-><init>()V

    .line 159
    .line 160
    .line 161
    iput-object v7, v0, Lr3/g;->c:Ljava/lang/CharSequence;

    .line 162
    .line 163
    invoke-virtual {v0}, Lr3/g;->a()Lt1/a;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lt1/a;->a()Lt1/b;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    :goto_4
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_7
    sub-int/2addr v0, v1

    .line 177
    invoke-virtual {v4, v0}, Lu1/q;->P(I)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_8
    new-instance v0, Li3/a;

    .line 183
    .line 184
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    move-object v5, v0

    .line 195
    invoke-direct/range {v5 .. v10}, Li3/a;-><init>(JJLjava/util/List;)V

    .line 196
    .line 197
    .line 198
    move-object/from16 v1, p5

    .line 199
    .line 200
    invoke-interface {v1, v0}, Lu1/f;->accept(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public synthetic e(II[B)Li3/d;
    .locals 0

    .line 1
    invoke-static {p0, p3, p2}, Lg/b;->a(Li3/j;[BI)Li3/b;

    move-result-object p1

    return-object p1
.end method

.method public synthetic reset()V
    .locals 0

    .line 1
    return-void
.end method
