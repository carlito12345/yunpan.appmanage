.class public abstract Lt2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string v2, "Camera:MotionPhoto"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    const-string v2, "GCamera:MotionPhoto"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    aput-object v2, v1, v4

    .line 13
    .line 14
    const-string v2, "Camera:MicroVideo"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    aput-object v2, v1, v5

    .line 18
    .line 19
    const-string v2, "GCamera:MicroVideo"

    .line 20
    .line 21
    const/4 v6, 0x3

    .line 22
    aput-object v2, v1, v6

    .line 23
    .line 24
    sput-object v1, Lt2/c;->a:[Ljava/lang/String;

    .line 25
    .line 26
    new-array v0, v0, [Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "Camera:MotionPhotoPresentationTimestampUs"

    .line 29
    .line 30
    aput-object v1, v0, v3

    .line 31
    .line 32
    const-string v1, "GCamera:MotionPhotoPresentationTimestampUs"

    .line 33
    .line 34
    aput-object v1, v0, v4

    .line 35
    .line 36
    const-string v1, "Camera:MicroVideoPresentationTimestampUs"

    .line 37
    .line 38
    aput-object v1, v0, v5

    .line 39
    .line 40
    const-string v1, "GCamera:MicroVideoPresentationTimestampUs"

    .line 41
    .line 42
    aput-object v1, v0, v6

    .line 43
    .line 44
    sput-object v0, Lt2/c;->b:[Ljava/lang/String;

    .line 45
    .line 46
    new-array v0, v5, [Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, "Camera:MicroVideoOffset"

    .line 49
    .line 50
    aput-object v1, v0, v3

    .line 51
    .line 52
    const-string v1, "GCamera:MicroVideoOffset"

    .line 53
    .line 54
    aput-object v1, v0, v4

    .line 55
    .line 56
    sput-object v0, Lt2/c;->c:[Ljava/lang/String;

    .line 57
    .line 58
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroidx/recyclerview/widget/h;
    .locals 22

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Ljava/io/StringReader;

    .line 12
    .line 13
    move-object/from16 v4, p0

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 22
    .line 23
    .line 24
    const-string v3, "x:xmpmeta"

    .line 25
    .line 26
    invoke-static {v2, v3}, Lu1/a;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x0

    .line 31
    if-eqz v4, :cond_c

    .line 32
    .line 33
    sget-object v4, Lu7/g0;->b:Lu7/e0;

    .line 34
    .line 35
    sget-object v4, Lu7/y0;->e:Lu7/y0;

    .line 36
    .line 37
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    move-wide v8, v6

    .line 43
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 44
    .line 45
    .line 46
    const-string v10, "rdf:Description"

    .line 47
    .line 48
    invoke-static {v2, v10}, Lu1/a;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    if-eqz v10, :cond_8

    .line 53
    .line 54
    sget-object v4, Lt2/c;->a:[Ljava/lang/String;

    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    const/4 v9, 0x0

    .line 58
    :goto_0
    if-ge v9, v0, :cond_7

    .line 59
    .line 60
    aget-object v10, v4, v9

    .line 61
    .line 62
    invoke-static {v2, v10}, Lu1/a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    if-eqz v10, :cond_6

    .line 67
    .line 68
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-ne v4, v1, :cond_7

    .line 73
    .line 74
    sget-object v4, Lt2/c;->b:[Ljava/lang/String;

    .line 75
    .line 76
    const/4 v9, 0x0

    .line 77
    :goto_1
    if-ge v9, v0, :cond_2

    .line 78
    .line 79
    aget-object v10, v4, v9

    .line 80
    .line 81
    invoke-static {v2, v10}, Lu1/a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    if-eqz v10, :cond_1

    .line 86
    .line 87
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v9

    .line 91
    const-wide/16 v11, -0x1

    .line 92
    .line 93
    cmp-long v4, v9, v11

    .line 94
    .line 95
    if-nez v4, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_1
    add-int/2addr v9, v1

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    :goto_2
    move-wide v9, v6

    .line 101
    :cond_3
    sget-object v4, Lt2/c;->c:[Ljava/lang/String;

    .line 102
    .line 103
    :goto_3
    const/4 v11, 0x2

    .line 104
    if-ge v8, v11, :cond_5

    .line 105
    .line 106
    aget-object v11, v4, v8

    .line 107
    .line 108
    invoke-static {v2, v11}, Lu1/a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    if-eqz v11, :cond_4

    .line 113
    .line 114
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v14

    .line 118
    new-instance v4, Lt2/b;

    .line 119
    .line 120
    const-wide/16 v18, 0x0

    .line 121
    .line 122
    const-wide/16 v20, 0x0

    .line 123
    .line 124
    const-string v17, "image/jpeg"

    .line 125
    .line 126
    move-object/from16 v16, v4

    .line 127
    .line 128
    invoke-direct/range {v16 .. v21}, Lt2/b;-><init>(Ljava/lang/String;JJ)V

    .line 129
    .line 130
    .line 131
    new-instance v8, Lt2/b;

    .line 132
    .line 133
    const-wide/16 v16, 0x0

    .line 134
    .line 135
    const-string v13, "video/mp4"

    .line 136
    .line 137
    move-object v12, v8

    .line 138
    invoke-direct/range {v12 .. v17}, Lt2/b;-><init>(Ljava/lang/String;JJ)V

    .line 139
    .line 140
    .line 141
    invoke-static {v4, v8}, Lu7/g0;->s(Ljava/lang/Object;Ljava/lang/Object;)Lu7/y0;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    goto :goto_4

    .line 146
    :cond_4
    add-int/2addr v8, v1

    .line 147
    goto :goto_3

    .line 148
    :cond_5
    sget-object v4, Lu7/g0;->b:Lu7/e0;

    .line 149
    .line 150
    sget-object v4, Lu7/y0;->e:Lu7/y0;

    .line 151
    .line 152
    :goto_4
    move-wide v8, v9

    .line 153
    goto :goto_5

    .line 154
    :cond_6
    add-int/2addr v9, v1

    .line 155
    goto :goto_0

    .line 156
    :cond_7
    return-object v5

    .line 157
    :cond_8
    const-string v10, "Container:Directory"

    .line 158
    .line 159
    invoke-static {v2, v10}, Lu1/a;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    if-eqz v10, :cond_9

    .line 164
    .line 165
    const-string v4, "Container"

    .line 166
    .line 167
    const-string v10, "Item"

    .line 168
    .line 169
    invoke-static {v2, v4, v10}, Lt2/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lu7/y0;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    goto :goto_5

    .line 174
    :cond_9
    const-string v10, "GContainer:Directory"

    .line 175
    .line 176
    invoke-static {v2, v10}, Lu1/a;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    if-eqz v10, :cond_a

    .line 181
    .line 182
    const-string v4, "GContainer"

    .line 183
    .line 184
    const-string v10, "GContainerItem"

    .line 185
    .line 186
    invoke-static {v2, v4, v10}, Lt2/c;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lu7/y0;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    :cond_a
    :goto_5
    invoke-static {v2, v3}, Lu1/a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    if-eqz v10, :cond_0

    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_b

    .line 201
    .line 202
    return-object v5

    .line 203
    :cond_b
    new-instance v1, Landroidx/recyclerview/widget/h;

    .line 204
    .line 205
    invoke-direct {v1, v0, v8, v9, v4}, Landroidx/recyclerview/widget/h;-><init>(IJLjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    return-object v1

    .line 209
    :cond_c
    const-string v0, "Couldn\'t find xmp metadata"

    .line 210
    .line 211
    invoke-static {v5, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    goto :goto_7

    .line 216
    :goto_6
    throw v0

    .line 217
    :goto_7
    goto :goto_6
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lu7/y0;
    .locals 13

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
    const-string v1, ":Item"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, ":Directory"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v1}, Lu1/a;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_6

    .line 32
    .line 33
    const-string v3, ":Mime"

    .line 34
    .line 35
    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, ":Semantic"

    .line 40
    .line 41
    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, ":Length"

    .line 46
    .line 47
    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const-string v6, ":Padding"

    .line 52
    .line 53
    invoke-virtual {p2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-static {p0, v3}, Lu1/a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-static {p0, v4}, Lu1/a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {p0, v5}, Lu1/a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {p0, v6}, Lu1/a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-eqz v8, :cond_5

    .line 74
    .line 75
    if-nez v3, :cond_1

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_1
    new-instance v3, Lt2/b;

    .line 79
    .line 80
    const-wide/16 v6, 0x0

    .line 81
    .line 82
    if-eqz v4, :cond_2

    .line 83
    .line 84
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v9

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move-wide v9, v6

    .line 90
    :goto_0
    if-eqz v5, :cond_3

    .line 91
    .line 92
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v4

    .line 96
    move-wide v11, v4

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    move-wide v11, v6

    .line 99
    :goto_1
    move-object v7, v3

    .line 100
    invoke-direct/range {v7 .. v12}, Lt2/b;-><init>(Ljava/lang/String;JJ)V

    .line 101
    .line 102
    .line 103
    array-length v4, v0

    .line 104
    add-int/lit8 v5, v2, 0x1

    .line 105
    .line 106
    invoke-static {v4, v5}, Lu7/a0;->f(II)I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    array-length v6, v0

    .line 111
    if-gt v4, v6, :cond_4

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :goto_2
    aput-object v3, v0, v2

    .line 119
    .line 120
    move v2, v5

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    :goto_3
    sget-object p0, Lu7/y0;->e:Lu7/y0;

    .line 123
    .line 124
    return-object p0

    .line 125
    :cond_6
    :goto_4
    invoke-static {p0, p1}, Lu1/a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_0

    .line 130
    .line 131
    invoke-static {v2, v0}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0
.end method
