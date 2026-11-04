.class public Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic L:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/n;

.field public E:Ljava/util/ArrayList;

.field public F:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public G:Landroid/widget/LinearLayout;

.field public H:Landroid/widget/TextView;

.field public I:Landroid/widget/TextView;

.field public K:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->E:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->K:I

    .line 13
    .line 14
    return-void
.end method

.method public static A(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "\u8fdb\u5165\u9875\u9762"

    .line 5
    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    if-ne p0, v0, :cond_1

    .line 10
    .line 11
    const-string p0, "\u79bb\u5f00\u9875\u9762"

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x5

    .line 16
    if-ne p0, v0, :cond_2

    .line 17
    .line 18
    const-string p0, "\u7a97\u53e3\u53d8\u66f4"

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_2
    const/4 v0, 0x7

    .line 23
    if-ne p0, v0, :cond_3

    .line 24
    .line 25
    const-string p0, "\u7528\u6237\u4ea4\u4e92"

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_3
    const/16 v0, 0x8

    .line 30
    .line 31
    if-ne p0, v0, :cond_4

    .line 32
    .line 33
    const-string p0, "\u5e94\u7528\u5feb\u6377\u65b9\u5f0f"

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_4
    const/16 v0, 0xb

    .line 38
    .line 39
    if-ne p0, v0, :cond_5

    .line 40
    .line 41
    const-string p0, "\u8c03\u6574\u7b56\u7565"

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_5
    const/16 v0, 0xf

    .line 46
    .line 47
    if-ne p0, v0, :cond_6

    .line 48
    .line 49
    const-string p0, "\u4eae\u5c4f"

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_6
    const/16 v0, 0x10

    .line 54
    .line 55
    if-ne p0, v0, :cond_7

    .line 56
    .line 57
    const-string p0, "\u7184\u5c4f"

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_7
    const/16 v0, 0x11

    .line 62
    .line 63
    if-ne p0, v0, :cond_8

    .line 64
    .line 65
    const-string p0, "\u9501\u5c4f"

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_8
    const/16 v0, 0x12

    .line 70
    .line 71
    if-ne p0, v0, :cond_9

    .line 72
    .line 73
    const-string p0, "\u89e3\u9501"

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_9
    const/16 v0, 0x13

    .line 78
    .line 79
    if-ne p0, v0, :cond_a

    .line 80
    .line 81
    const-string p0, "\u542f\u52a8\u524d\u53f0\u670d\u52a1"

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_a
    const/16 v0, 0x14

    .line 86
    .line 87
    if-ne p0, v0, :cond_b

    .line 88
    .line 89
    const-string p0, "\u9000\u51fa\u524d\u53f0\u670d\u52a1"

    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_b
    const/16 v0, 0x17

    .line 94
    .line 95
    if-ne p0, v0, :cond_c

    .line 96
    .line 97
    const-string p0, "\u9000\u51fa\u5e94\u7528"

    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_c
    const/16 v0, 0x1a

    .line 102
    .line 103
    if-ne p0, v0, :cond_d

    .line 104
    .line 105
    const-string p0, "\u5173\u673a/\u91cd\u542f"

    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_d
    const/16 v0, 0x1b

    .line 110
    .line 111
    if-ne p0, v0, :cond_e

    .line 112
    .line 113
    const-string p0, "\u5f00\u673a"

    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_e
    const/16 v0, 0xc

    .line 118
    .line 119
    if-ne p0, v0, :cond_f

    .line 120
    .line 121
    const-string p0, "\u4e2d\u65ad\u901a\u77e5"

    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_f
    const/4 v0, 0x3

    .line 126
    if-ne p0, v0, :cond_10

    .line 127
    .line 128
    const-string p0, "\u901a\u5bb5\u8fde\u7eed\u4f7f\u7528"

    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :cond_10
    const/4 v0, 0x4

    .line 133
    if-ne p0, v0, :cond_11

    .line 134
    .line 135
    const-string p0, "\u9694\u5929\u7ee7\u7eed\u4f7f\u7528"

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_11
    const/4 v0, 0x6

    .line 140
    if-ne p0, v0, :cond_12

    .line 141
    .line 142
    const-string p0, "\u7cfb\u7edf\u53d1\u751f\u4ea4\u4e92"

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_12
    const/16 v0, 0x9

    .line 146
    .line 147
    if-ne p0, v0, :cond_13

    .line 148
    .line 149
    const-string p0, "\u5206\u4eab"

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_13
    const/16 v0, 0xa

    .line 153
    .line 154
    if-ne p0, v0, :cond_14

    .line 155
    .line 156
    const-string p0, "\u67e5\u770b\u901a\u77e5"

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_14
    const/16 v0, 0xd

    .line 160
    .line 161
    if-ne p0, v0, :cond_15

    .line 162
    .line 163
    const-string p0, "s\u56fa\u5b9a\u4e00\u4e2aSlice"

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_15
    const/16 v0, 0xe

    .line 167
    .line 168
    if-ne p0, v0, :cond_16

    .line 169
    .line 170
    const-string p0, "u\u56fa\u5b9a\u4e00\u4e2aSlice"

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_16
    const/16 v0, 0x15

    .line 174
    .line 175
    if-ne p0, v0, :cond_17

    .line 176
    .line 177
    const-string p0, "\u7ee7\u7eed\u524d\u53f0\u670d\u52a1"

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_17
    const/16 v0, 0x16

    .line 181
    .line 182
    if-ne p0, v0, :cond_18

    .line 183
    .line 184
    const-string p0, "\u8986\u76d6\u524d\u53f0\u670d\u52a1"

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_18
    const/16 v0, 0x18

    .line 188
    .line 189
    if-ne p0, v0, :cond_19

    .line 190
    .line 191
    const-string p0, "\u5173\u95ed\u5e94\u7528"

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_19
    const/16 v0, 0x19

    .line 195
    .line 196
    if-ne p0, v0, :cond_1a

    .line 197
    .line 198
    const-string p0, "\u4fdd\u5b58\u6570\u636e"

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_1a
    const/16 v0, 0x1c

    .line 202
    .line 203
    if-ne p0, v0, :cond_1b

    .line 204
    .line 205
    const-string p0, "\u9996\u6b21\u89e3\u9501"

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_1b
    const/16 v0, 0x1d

    .line 209
    .line 210
    if-ne p0, v0, :cond_1c

    .line 211
    .line 212
    const-string p0, "\u7528\u6237\u505c\u6b62\u4f7f\u7528"

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_1c
    const/16 v0, 0x1e

    .line 216
    .line 217
    if-ne p0, v0, :cond_1d

    .line 218
    .line 219
    const-string p0, "\u8bbe\u7f6eLocusID"

    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_1d
    const/16 v0, 0x1f

    .line 223
    .line 224
    if-ne p0, v0, :cond_1e

    .line 225
    .line 226
    const-string p0, "\u4f7f\u7528\u7ec4\u4ef6"

    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_1e
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    :goto_0
    return-object p0
.end method

.method public static x(Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;Lmc/b;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "usagestats"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/app/usage/UsageStatsManager;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-wide/32 v4, 0x6ddd00

    .line 16
    .line 17
    .line 18
    add-long/2addr v2, v4

    .line 19
    iget v4, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->K:I

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    sub-long/2addr v4, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/16 v5, 0xe

    .line 34
    .line 35
    const/16 v6, 0xd

    .line 36
    .line 37
    const/16 v7, 0xc

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    const/16 v9, 0xb

    .line 41
    .line 42
    const/4 v10, 0x1

    .line 43
    if-ne v4, v10, :cond_1

    .line 44
    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-wide/16 v11, 0x1

    .line 67
    .line 68
    const/4 v13, 0x2

    .line 69
    if-ne v4, v13, :cond_2

    .line 70
    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/4 v3, 0x6

    .line 76
    const/4 v4, -0x1

    .line 77
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    sub-long/2addr v4, v11

    .line 117
    move-wide/from16 v18, v2

    .line 118
    .line 119
    move-wide v2, v4

    .line 120
    move-wide/from16 v4, v18

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    const/4 v5, 0x3

    .line 124
    if-ne v4, v5, :cond_3

    .line 125
    .line 126
    invoke-static {v13}, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->y(I)J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    invoke-static {v10}, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->y(I)J

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    sub-long/2addr v2, v11

    .line 135
    goto :goto_0

    .line 136
    :cond_3
    const-wide/16 v4, 0x0

    .line 137
    .line 138
    :goto_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 139
    .line 140
    const-string v7, "HH:mm:ss"

    .line 141
    .line 142
    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 146
    .line 147
    const-string v8, "yyyy-MM-dd"

    .line 148
    .line 149
    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string v2, ""

    .line 157
    .line 158
    move-object v3, v2

    .line 159
    :goto_1
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_7

    .line 164
    .line 165
    new-instance v4, Landroid/app/usage/UsageEvents$Event;

    .line 166
    .line 167
    invoke-direct {v4}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v4}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 171
    .line 172
    .line 173
    new-instance v5, Ljava/util/Date;

    .line 174
    .line 175
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 176
    .line 177
    .line 178
    move-result-wide v8

    .line 179
    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    if-nez v8, :cond_4

    .line 191
    .line 192
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->E:Ljava/util/ArrayList;

    .line 193
    .line 194
    new-instance v8, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;

    .line 195
    .line 196
    invoke-direct {v8, v5}, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-object v3, v5

    .line 203
    :cond_4
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    invoke-static {v5}, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->A(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    new-instance v5, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;

    .line 212
    .line 213
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    if-nez v8, :cond_5

    .line 222
    .line 223
    move-object v11, v2

    .line 224
    goto :goto_2

    .line 225
    :cond_5
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    move-object v11, v8

    .line 230
    :goto_2
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    if-nez v8, :cond_6

    .line 235
    .line 236
    move-object v12, v2

    .line 237
    goto :goto_3

    .line 238
    :cond_6
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    move-object v12, v8

    .line 243
    :goto_3
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 244
    .line 245
    .line 246
    move-result-wide v13

    .line 247
    new-instance v8, Ljava/util/Date;

    .line 248
    .line 249
    move-object/from16 v16, v1

    .line 250
    .line 251
    move-object/from16 v17, v2

    .line 252
    .line 253
    invoke-virtual {v4}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 254
    .line 255
    .line 256
    move-result-wide v1

    .line 257
    invoke-direct {v8, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v15

    .line 264
    move-object v8, v5

    .line 265
    invoke-direct/range {v8 .. v15}, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->E:Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-object/from16 v1, v16

    .line 274
    .line 275
    move-object/from16 v2, v17

    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 279
    .line 280
    .line 281
    return-void
.end method

.method public static y(I)J
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x6

    .line 6
    neg-int p0, p0

    .line 7
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 8
    .line 9
    .line 10
    const/16 p0, 0xb

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 14
    .line 15
    .line 16
    const/16 p0, 0xc

    .line 17
    .line 18
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 19
    .line 20
    .line 21
    const/16 p0, 0xd

    .line 22
    .line 23
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 24
    .line 25
    .line 26
    const/16 p0, 0xe

    .line 27
    .line 28
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    return-wide v0
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->D:Lx9/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->D:Lx9/n;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->E:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e001f

    return v0
.end method

.method public final u()V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const v3, 0x7f0b0517

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v3}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    iput-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    const/16 v4, 0x8

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    const v3, 0x7f0b054a

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v3}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/widget/LinearLayout;

    .line 28
    .line 29
    iput-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->G:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    const v3, 0x7f0b05ba

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v3}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->H:Landroid/widget/TextView;

    .line 44
    .line 45
    const v3, 0x7f0b03ad

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    new-instance v4, Lua/l;

    .line 53
    .line 54
    invoke-direct {v4, p0, v2}, Lua/l;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    const v3, 0x7f0b03b1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v3}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->I:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->I:Landroid/widget/TextView;

    .line 75
    .line 76
    new-instance v4, Lua/l;

    .line 77
    .line 78
    invoke-direct {v4, p0, v1}, Lua/l;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    new-instance v3, Lha/fa;

    .line 85
    .line 86
    const/4 v4, 0x4

    .line 87
    new-array v4, v4, [Ljava/lang/String;

    .line 88
    .line 89
    const-string v5, "\u672c\u6b21\u5f00\u673a\u540e\u7684"

    .line 90
    .line 91
    aput-object v5, v4, v2

    .line 92
    .line 93
    const-string v5, "\u4eca\u5929\u4f7f\u7528\u8bb0\u5f55"

    .line 94
    .line 95
    aput-object v5, v4, v1

    .line 96
    .line 97
    const-string v5, "\u6628\u5929\u4f7f\u7528\u8bb0\u5f55"

    .line 98
    .line 99
    aput-object v5, v4, v0

    .line 100
    .line 101
    const-string v5, "\u524d\u5929\u4f7f\u7528\u8bb0\u5f55"

    .line 102
    .line 103
    const/4 v6, 0x3

    .line 104
    aput-object v5, v4, v6

    .line 105
    .line 106
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    new-instance v10, Lua/k;

    .line 111
    .line 112
    invoke-direct {v10, p0, v1}, Lua/k;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;I)V

    .line 113
    .line 114
    .line 115
    const/4 v8, 0x0

    .line 116
    move-object v5, v3

    .line 117
    move-object v6, p0

    .line 118
    move-object v7, p0

    .line 119
    invoke-direct/range {v5 .. v10}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 120
    .line 121
    .line 122
    const v4, 0x7f0b03db

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    new-instance v5, Lua/m;

    .line 130
    .line 131
    invoke-direct {v5, v3, v2}, Lua/m;-><init>(Lha/fa;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    const v3, 0x7f0b04f4

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v3}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 145
    .line 146
    iput-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 147
    .line 148
    new-instance v4, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 149
    .line 150
    iget-object v5, p0, Lda/g;->A:Lda/g;

    .line 151
    .line 152
    invoke-direct {v4, v5, v1, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 156
    .line 157
    .line 158
    new-instance v1, Lx9/n;

    .line 159
    .line 160
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 161
    .line 162
    invoke-direct {v1, v3, v2}, Lx9/n;-><init>(Lda/g;I)V

    .line 163
    .line 164
    .line 165
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->D:Lx9/n;

    .line 166
    .line 167
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 168
    .line 169
    invoke-virtual {v2, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 170
    .line 171
    .line 172
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->D:Lx9/n;

    .line 173
    .line 174
    new-instance v2, Lua/k;

    .line 175
    .line 176
    invoke-direct {v2, p0, v0}, Lua/k;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;I)V

    .line 177
    .line 178
    .line 179
    iput-object v2, v1, Lc6/g;->e:Lc6/e;

    .line 180
    .line 181
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 182
    .line 183
    new-instance v1, Ltb/v;

    .line 184
    .line 185
    const/16 v2, 0x14

    .line 186
    .line 187
    invoke-direct {v1, v2}, Ltb/v;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->z()V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public final z()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->K:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->H:Landroid/widget/TextView;

    .line 6
    .line 7
    const-string v1, "\u5f00\u673a\u540e\u8bbe\u5907\u8be6\u7ec6\u4f7f\u7528\u8bb0\u5f55(\u5f00\u53d1\u8005\u4e13\u7528)"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->H:Landroid/widget/TextView;

    .line 17
    .line 18
    const-string v1, "\u4eca\u65e5\u8bbe\u5907\u8be6\u7ec6\u4f7f\u7528\u8bb0\u5f55(\u5f00\u53d1\u8005\u4e13\u7528)"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x2

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->H:Landroid/widget/TextView;

    .line 28
    .line 29
    const-string v1, "\u6628\u65e5\u8bbe\u5907\u8be6\u7ec6\u4f7f\u7528\u8bb0\u5f55(\u5f00\u53d1\u8005\u4e13\u7528)"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v1, 0x3

    .line 36
    if-ne v0, v1, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->H:Landroid/widget/TextView;

    .line 39
    .line 40
    const-string v1, "\u524d\u5929\u8bbe\u5907\u8be6\u7ec6\u4f7f\u7528\u8bb0\u5f55(\u5f00\u53d1\u8005\u4e13\u7528)"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->E:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->D:Lx9/n;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->E:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lua/k;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-direct {v0, p0, v1}, Lua/k;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;I)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lmc/c;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Lua/n;

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    invoke-direct {v1, p0, v2}, Lua/n;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
