.class public Landroidx/leanback/widget/picker/DatePicker;
.super Lo1/d;
.source "SourceFile"


# static fields
.field public static final E:[I


# instance fields
.field public final A:Ljava/util/Calendar;

.field public final B:Ljava/util/Calendar;

.field public final C:Ljava/util/Calendar;

.field public final D:Ljava/util/Calendar;

.field public q:Ljava/lang/String;

.field public r:Lo1/e;

.field public s:Lo1/e;

.field public t:Lo1/e;

.field public v:I

.field public w:I

.field public x:I

.field public final y:Ljava/text/SimpleDateFormat;

.field public final z:Lkf/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x5

    .line 4
    filled-new-array {v2, v0, v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/leanback/widget/picker/DatePicker;->E:[I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Lo1/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 5
    .line 6
    const-string v1, "MM/dd/yyyy"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->y:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    sget-boolean v2, Lo1/f;->a:Z

    .line 25
    .line 26
    new-instance v2, Lkf/d;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Lkf/d;-><init>(Ljava/util/Locale;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->z:Lkf/d;

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 34
    .line 35
    invoke-static {v2, v1}, Lo1/f;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->z:Lkf/d;

    .line 44
    .line 45
    iget-object v2, v2, Lkf/d;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Ljava/util/Locale;

    .line 48
    .line 49
    invoke-static {v1, v2}, Lo1/f;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->B:Ljava/util/Calendar;

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->z:Lkf/d;

    .line 58
    .line 59
    iget-object v2, v2, Lkf/d;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Ljava/util/Locale;

    .line 62
    .line 63
    invoke-static {v1, v2}, Lo1/f;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->B:Ljava/util/Calendar;

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 70
    .line 71
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->z:Lkf/d;

    .line 72
    .line 73
    iget-object v2, v2, Lkf/d;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Ljava/util/Locale;

    .line 76
    .line 77
    invoke-static {v1, v2}, Lo1/f;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 82
    .line 83
    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->r:Lo1/e;

    .line 84
    .line 85
    if-eqz v1, :cond_0

    .line 86
    .line 87
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->z:Lkf/d;

    .line 88
    .line 89
    iget-object v2, v2, Lkf/d;->c:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, [Ljava/lang/String;

    .line 92
    .line 93
    iput-object v2, v1, Lo1/e;->d:[Ljava/lang/CharSequence;

    .line 94
    .line 95
    iget v2, p0, Landroidx/leanback/widget/picker/DatePicker;->v:I

    .line 96
    .line 97
    invoke-virtual {p0, v2, v1}, Lo1/d;->a(ILo1/e;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    sget-object v1, Ln1/a;->d:[I

    .line 101
    .line 102
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const/4 v3, 0x1

    .line 112
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    iget-object v5, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 119
    .line 120
    .line 121
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    const/16 v6, 0x76c

    .line 126
    .line 127
    if-nez v5, :cond_1

    .line 128
    .line 129
    iget-object v5, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 130
    .line 131
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catch_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 140
    .line 141
    invoke-virtual {v0, v6, v1, v3}, Ljava/util/Calendar;->set(III)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 146
    .line 147
    invoke-virtual {v0, v6, v1, v3}, Ljava/util/Calendar;->set(III)V

    .line 148
    .line 149
    .line 150
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 151
    .line 152
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 155
    .line 156
    .line 157
    move-result-wide v5

    .line 158
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 164
    .line 165
    .line 166
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    const/16 v2, 0x834

    .line 171
    .line 172
    if-nez v0, :cond_2

    .line 173
    .line 174
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 175
    .line 176
    :try_start_1
    iget-object v5, p0, Landroidx/leanback/widget/picker/DatePicker;->y:Ljava/text/SimpleDateFormat;

    .line 177
    .line 178
    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :catch_1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 187
    .line 188
    invoke-virtual {v0, v2, v1, v3}, Ljava/util/Calendar;->set(III)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 193
    .line 194
    invoke-virtual {v0, v2, v1, v3}, Ljava/util/Calendar;->set(III)V

    .line 195
    .line 196
    .line 197
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->B:Ljava/util/Calendar;

    .line 198
    .line 199
    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 202
    .line 203
    .line 204
    move-result-wide v1

    .line 205
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 206
    .line 207
    .line 208
    const/4 v0, 0x2

    .line 209
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_3

    .line 218
    .line 219
    new-instance p2, Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    .line 226
    .line 227
    .line 228
    :cond_3
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/picker/DatePicker;->setDatePickerFormat(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getDatePickerFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->B:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public setDatePickerFormat(Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/16 v4, 0x44

    .line 5
    .line 6
    iget-object v5, v0, Landroidx/leanback/widget/picker/DatePicker;->z:Lkf/d;

    .line 7
    .line 8
    const/4 v6, 0x1

    .line 9
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v7

    .line 13
    if-eqz v7, :cond_0

    .line 14
    .line 15
    new-instance v7, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-static {v8}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object/from16 v7, p1

    .line 30
    .line 31
    :goto_0
    iget-object v8, v0, Landroidx/leanback/widget/picker/DatePicker;->q:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iput-object v7, v0, Landroidx/leanback/widget/picker/DatePicker;->q:Ljava/lang/String;

    .line 41
    .line 42
    sget-boolean v8, Lo1/f;->a:Z

    .line 43
    .line 44
    const-string v9, "MM/dd/yyyy"

    .line 45
    .line 46
    if-eqz v8, :cond_2

    .line 47
    .line 48
    iget-object v8, v5, Lkf/d;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v8, Ljava/util/Locale;

    .line 51
    .line 52
    invoke-static {v7, v8}, Lb1/o;->j(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-static {v8}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    instance-of v10, v8, Ljava/text/SimpleDateFormat;

    .line 66
    .line 67
    if-eqz v10, :cond_3

    .line 68
    .line 69
    check-cast v8, Ljava/text/SimpleDateFormat;

    .line 70
    .line 71
    invoke-virtual {v8}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move-object v8, v9

    .line 77
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-eqz v10, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    move-object v9, v8

    .line 85
    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v10, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    new-array v11, v1, [C

    .line 96
    .line 97
    fill-array-data v11, :array_0

    .line 98
    .line 99
    .line 100
    const/4 v12, 0x0

    .line 101
    const/4 v13, 0x0

    .line 102
    const/4 v14, 0x0

    .line 103
    const/4 v15, 0x0

    .line 104
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-ge v13, v3, :cond_c

    .line 109
    .line 110
    invoke-virtual {v9, v13}, Ljava/lang/String;->charAt(I)C

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    const/16 v2, 0x20

    .line 115
    .line 116
    if-ne v3, v2, :cond_5

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_5
    const/16 v2, 0x27

    .line 120
    .line 121
    if-ne v3, v2, :cond_7

    .line 122
    .line 123
    if-nez v14, :cond_6

    .line 124
    .line 125
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 126
    .line 127
    .line 128
    const/4 v14, 0x1

    .line 129
    goto :goto_6

    .line 130
    :cond_6
    const/4 v14, 0x0

    .line 131
    goto :goto_6

    .line 132
    :cond_7
    if-eqz v14, :cond_8

    .line 133
    .line 134
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_8
    const/4 v2, 0x0

    .line 139
    :goto_4
    if-ge v2, v1, :cond_a

    .line 140
    .line 141
    aget-char v1, v11, v2

    .line 142
    .line 143
    if-ne v3, v1, :cond_9

    .line 144
    .line 145
    if-eq v3, v15, :cond_b

    .line 146
    .line 147
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_9
    add-int/2addr v2, v6

    .line 159
    const/4 v1, 0x6

    .line 160
    goto :goto_4

    .line 161
    :cond_a
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    :cond_b
    :goto_5
    move v15, v3

    .line 165
    :goto_6
    add-int/2addr v13, v6

    .line 166
    const/4 v1, 0x6

    .line 167
    goto :goto_3

    .line 168
    :cond_c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    add-int/2addr v2, v6

    .line 184
    if-ne v1, v2, :cond_14

    .line 185
    .line 186
    invoke-virtual {v0, v8}, Lo1/d;->setSeparators(Ljava/util/List;)V

    .line 187
    .line 188
    .line 189
    const/4 v1, 0x0

    .line 190
    iput-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->s:Lo1/e;

    .line 191
    .line 192
    iput-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->r:Lo1/e;

    .line 193
    .line 194
    iput-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->t:Lo1/e;

    .line 195
    .line 196
    const/4 v1, -0x1

    .line 197
    iput v1, v0, Landroidx/leanback/widget/picker/DatePicker;->v:I

    .line 198
    .line 199
    iput v1, v0, Landroidx/leanback/widget/picker/DatePicker;->w:I

    .line 200
    .line 201
    iput v1, v0, Landroidx/leanback/widget/picker/DatePicker;->x:I

    .line 202
    .line 203
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    .line 208
    .line 209
    const/4 v3, 0x3

    .line 210
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .line 212
    .line 213
    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-ge v12, v3, :cond_13

    .line 218
    .line 219
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    const-string v7, "datePicker format error"

    .line 224
    .line 225
    if-eq v3, v4, :cond_11

    .line 226
    .line 227
    const/16 v8, 0x4d

    .line 228
    .line 229
    if-eq v3, v8, :cond_f

    .line 230
    .line 231
    const/16 v9, 0x59

    .line 232
    .line 233
    if-ne v3, v9, :cond_e

    .line 234
    .line 235
    iget-object v3, v0, Landroidx/leanback/widget/picker/DatePicker;->t:Lo1/e;

    .line 236
    .line 237
    if-nez v3, :cond_d

    .line 238
    .line 239
    new-instance v3, Lo1/e;

    .line 240
    .line 241
    invoke-direct {v3}, Lo1/e;-><init>()V

    .line 242
    .line 243
    .line 244
    iput-object v3, v0, Landroidx/leanback/widget/picker/DatePicker;->t:Lo1/e;

    .line 245
    .line 246
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    iput v12, v0, Landroidx/leanback/widget/picker/DatePicker;->x:I

    .line 250
    .line 251
    iget-object v3, v0, Landroidx/leanback/widget/picker/DatePicker;->t:Lo1/e;

    .line 252
    .line 253
    const-string v7, "%d"

    .line 254
    .line 255
    iput-object v7, v3, Lo1/e;->e:Ljava/lang/String;

    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 259
    .line 260
    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v1

    .line 264
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 265
    .line 266
    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v1

    .line 270
    :cond_f
    const/16 v9, 0x59

    .line 271
    .line 272
    iget-object v3, v0, Landroidx/leanback/widget/picker/DatePicker;->r:Lo1/e;

    .line 273
    .line 274
    if-nez v3, :cond_10

    .line 275
    .line 276
    new-instance v3, Lo1/e;

    .line 277
    .line 278
    invoke-direct {v3}, Lo1/e;-><init>()V

    .line 279
    .line 280
    .line 281
    iput-object v3, v0, Landroidx/leanback/widget/picker/DatePicker;->r:Lo1/e;

    .line 282
    .line 283
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    iget-object v3, v0, Landroidx/leanback/widget/picker/DatePicker;->r:Lo1/e;

    .line 287
    .line 288
    iget-object v7, v5, Lkf/d;->c:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v7, [Ljava/lang/String;

    .line 291
    .line 292
    iput-object v7, v3, Lo1/e;->d:[Ljava/lang/CharSequence;

    .line 293
    .line 294
    iput v12, v0, Landroidx/leanback/widget/picker/DatePicker;->v:I

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 298
    .line 299
    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw v1

    .line 303
    :cond_11
    const/16 v8, 0x4d

    .line 304
    .line 305
    const/16 v9, 0x59

    .line 306
    .line 307
    iget-object v3, v0, Landroidx/leanback/widget/picker/DatePicker;->s:Lo1/e;

    .line 308
    .line 309
    if-nez v3, :cond_12

    .line 310
    .line 311
    new-instance v3, Lo1/e;

    .line 312
    .line 313
    invoke-direct {v3}, Lo1/e;-><init>()V

    .line 314
    .line 315
    .line 316
    iput-object v3, v0, Landroidx/leanback/widget/picker/DatePicker;->s:Lo1/e;

    .line 317
    .line 318
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    iget-object v3, v0, Landroidx/leanback/widget/picker/DatePicker;->s:Lo1/e;

    .line 322
    .line 323
    const-string v7, "%02d"

    .line 324
    .line 325
    iput-object v7, v3, Lo1/e;->e:Ljava/lang/String;

    .line 326
    .line 327
    iput v12, v0, Landroidx/leanback/widget/picker/DatePicker;->w:I

    .line 328
    .line 329
    :goto_8
    add-int/2addr v12, v6

    .line 330
    goto :goto_7

    .line 331
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 332
    .line 333
    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v1

    .line 337
    :cond_13
    invoke-virtual {v0, v2}, Lo1/d;->setColumns(Ljava/util/List;)V

    .line 338
    .line 339
    .line 340
    new-instance v1, Landroidx/activity/h;

    .line 341
    .line 342
    const/16 v2, 0xd

    .line 343
    .line 344
    invoke-direct {v1, v2, v0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 352
    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    const-string v3, "Separators size: "

    .line 356
    .line 357
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v3, " must equal the size of datePickerFormat: "

    .line 368
    .line 369
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v3, " + 1"

    .line 380
    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    goto :goto_a

    .line 392
    :goto_9
    throw v1

    .line 393
    :goto_a
    goto :goto_9

    .line 394
    nop

    .line 395
    :array_0
    .array-data 2
        0x59s
        0x79s
        0x4ds
        0x6ds
        0x44s
        0x64s
    .end array-data
.end method

.method public setMaxDate(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->B:Ljava/util/Calendar;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->B:Ljava/util/Calendar;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->B:Ljava/util/Calendar;

    .line 38
    .line 39
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 43
    .line 44
    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->B:Ljava/util/Calendar;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 53
    .line 54
    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->B:Ljava/util/Calendar;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 61
    .line 62
    .line 63
    :cond_1
    new-instance p1, Landroidx/activity/h;

    .line 64
    .line 65
    const/16 p2, 0xd

    .line 66
    .line 67
    invoke-direct {p1, p2, p0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->D:Ljava/util/Calendar;

    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 38
    .line 39
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 43
    .line 44
    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 53
    .line 54
    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 61
    .line 62
    .line 63
    :cond_1
    new-instance p1, Landroidx/activity/h;

    .line 64
    .line 65
    const/16 p2, 0xd

    .line 66
    .line 67
    invoke-direct {p1, p2, p0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    return-void
.end method
