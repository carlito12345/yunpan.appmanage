.class public abstract Lta/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/emoji2/text/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/emoji2/text/o;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Landroidx/emoji2/text/o;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lta/l;->a:Landroidx/emoji2/text/o;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 8

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    const-string v1, "\u83b7\u53d6\u65f6\u95f4\uff1a"

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, ""

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const-string v0, "\u83b7\u53d6\u5931\u8d25\uff1a\u65e0\u7a97\u53e3"

    .line 15
    .line 16
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 31
    .line 32
    const-string v7, "yyyy\u5e74MM\u6708dd\u65e5HH\u65f6mm\u5206ss\u79d2SSS"

    .line 33
    .line 34
    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v7, Ljava/util/Date;

    .line 38
    .line 39
    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    const-string v1, "   \u6839view\uff1a"

    .line 60
    .line 61
    const-string v6, "\u5f53\u524d\u5305\u540d\uff1a"

    .line 62
    .line 63
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v6, "  \u7c7b\uff1a"

    .line 76
    .line 77
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v6, p0, Lcom/yunpan/appmanage/service/AccService;->E:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v5, v4}, Lqf/c;->T(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/StringBuilder;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v2, "\u83b7\u53d6\u5931\u8d25\uff1a"

    .line 117
    .line 118
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_1

    .line 129
    .line 130
    return-void

    .line 131
    :cond_1
    const-string v0, "window_show_get_window_layout"

    .line 132
    .line 133
    sget-object v1, Lv8/b;->a:Ljava/util/ArrayList;

    .line 134
    .line 135
    const-class v1, Lv8/b;

    .line 136
    .line 137
    monitor-enter v1

    .line 138
    :try_start_2
    sget-object v2, Lv8/b;->a:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_6

    .line 149
    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    check-cast v5, Ljava/lang/ref/Reference;

    .line 155
    .line 156
    if-nez v5, :cond_3

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Lv8/a;

    .line 164
    .line 165
    if-nez v5, :cond_4

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    iget-object v6, v5, Lv8/a;->h:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-nez v6, :cond_5

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_5
    iget-boolean v5, v5, Lv8/a;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    .line 179
    if-eqz v5, :cond_2

    .line 180
    .line 181
    monitor-exit v1

    .line 182
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    const/4 v2, -0x3

    .line 187
    iput v2, v1, Landroid/os/Message;->what:I

    .line 188
    .line 189
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    .line 191
    iget-object p0, p0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 192
    .line 193
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :catchall_0
    move-exception p0

    .line 198
    goto :goto_2

    .line 199
    :cond_6
    monitor-exit v1

    .line 200
    new-instance v1, Lv8/a;

    .line 201
    .line 202
    invoke-direct {v1, p0}, Lv8/a;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    .line 203
    .line 204
    .line 205
    const p0, 0x7f0e0214

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, p0}, Lv8/a;->j(I)V

    .line 209
    .line 210
    .line 211
    iput-object v0, v1, Lv8/a;->h:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v1}, Lv8/a;->p()V

    .line 214
    .line 215
    .line 216
    const/16 p0, 0x100

    .line 217
    .line 218
    invoke-virtual {v1, p0}, Lv8/a;->a(I)V

    .line 219
    .line 220
    .line 221
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 222
    .line 223
    const/16 v0, 0x1c

    .line 224
    .line 225
    if-lt p0, v0, :cond_7

    .line 226
    .line 227
    const/4 v4, 0x1

    .line 228
    :cond_7
    invoke-virtual {v1, v4}, Lv8/a;->l(I)V

    .line 229
    .line 230
    .line 231
    const p0, 0x7f0b052c

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, p0, v3}, Lv8/a;->o(ILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-instance p0, Lha/jd;

    .line 238
    .line 239
    const/16 v0, 0x15

    .line 240
    .line 241
    invoke-direct {p0, v0}, Lha/jd;-><init>(I)V

    .line 242
    .line 243
    .line 244
    const v0, 0x7f0b036b

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v0, p0}, Lv8/a;->m(ILv8/c;)V

    .line 248
    .line 249
    .line 250
    new-instance p0, Lb8/a;

    .line 251
    .line 252
    const/16 v0, 0xa

    .line 253
    .line 254
    invoke-direct {p0, v3, v0}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 255
    .line 256
    .line 257
    const v0, 0x7f0b03b1

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v0, p0}, Lv8/a;->m(ILv8/c;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Lv8/a;->d()V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    goto :goto_4

    .line 269
    :goto_3
    throw p0

    .line 270
    :goto_4
    goto :goto_3
.end method

.method public static b(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 5

    .line 1
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lwa/s;->c:Lv8/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p0, p0, Lwa/s;->c:Lv8/a;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v0, Lv8/i;->a:Landroid/os/Handler;

    .line 19
    .line 20
    iget-object v1, p0, Lv8/a;->p:Ljava/lang/Runnable;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    invoke-virtual {p0, v1, v2, v3}, Lv8/a;->i(Ljava/lang/Runnable;J)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lwa/s;->c:Lv8/a;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance v0, Lxa/b;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lxa/b;-><init>(Lcom/yunpan/appmanage/service/AccService;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lta/j;

    .line 44
    .line 45
    invoke-direct {v1, p0, v0}, Lta/j;-><init>(Lcom/yunpan/appmanage/service/AccService;Lxa/b;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Lta/k;

    .line 56
    .line 57
    invoke-direct {v2, p0, v0}, Lta/k;-><init>(Lcom/yunpan/appmanage/service/AccService;Lxa/b;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v2, Lv8/a;

    .line 68
    .line 69
    invoke-direct {v2, p0}, Lv8/a;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    .line 70
    .line 71
    .line 72
    iput-object v2, v1, Lwa/s;->c:Lv8/a;

    .line 73
    .line 74
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iget-object p0, p0, Lwa/s;->c:Lv8/a;

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lv8/a;->k(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "MyGridOverlayView"

    .line 84
    .line 85
    iput-object v0, p0, Lv8/a;->h:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p0}, Lv8/a;->p()V

    .line 88
    .line 89
    .line 90
    const/16 v0, 0x100

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lv8/a;->a(I)V

    .line 93
    .line 94
    .line 95
    const/16 v0, 0x200

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lv8/a;->a(I)V

    .line 98
    .line 99
    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 101
    .line 102
    const/16 v1, 0x1c

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    if-lt v0, v1, :cond_1

    .line 106
    .line 107
    const/4 v0, 0x1

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-virtual {p0, v0}, Lv8/a;->l(I)V

    .line 111
    .line 112
    .line 113
    const/16 v0, 0x20

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lv8/a;->a(I)V

    .line 116
    .line 117
    .line 118
    const/16 v0, 0x8

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lv8/a;->a(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 124
    .line 125
    const/4 v1, -0x1

    .line 126
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 127
    .line 128
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 129
    .line 130
    iget-object v0, p0, Lv8/a;->c:Lv8/h;

    .line 131
    .line 132
    if-nez v0, :cond_2

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-lez v0, :cond_6

    .line 140
    .line 141
    iget-object v0, p0, Lv8/a;->c:Lv8/h;

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-eqz v2, :cond_6

    .line 152
    .line 153
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    .line 155
    if-ne v3, v1, :cond_3

    .line 156
    .line 157
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    .line 159
    if-eq v4, v1, :cond_6

    .line 160
    .line 161
    :cond_3
    if-eq v3, v1, :cond_4

    .line 162
    .line 163
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    .line 165
    :cond_4
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 166
    .line 167
    if-eq v3, v1, :cond_5

    .line 168
    .line 169
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 170
    .line 171
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    invoke-virtual {p0}, Lv8/a;->e()V

    .line 175
    .line 176
    .line 177
    :goto_1
    invoke-virtual {p0}, Lv8/a;->d()V

    .line 178
    .line 179
    .line 180
    const-string p0, "\u957f\u6309\u7f51\u683c\u53ef\u5173\u95ed"

    .line 181
    .line 182
    invoke-static {p0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public static c(Lcom/yunpan/appmanage/service/AccService;I)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    .line 8
    .line 9
    new-instance v1, Landroid/view/KeyEvent;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lm0/h;->q(Landroid/media/AudioManager;Landroid/view/KeyEvent;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    .line 19
    .line 20
    new-instance v0, Landroid/view/KeyEvent;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0}, Lm0/h;->q(Landroid/media/AudioManager;Landroid/view/KeyEvent;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public static d()Landroid/media/session/MediaController;
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lwa/s;->f:Lcom/yunpan/appmanage/service/StartService;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/yunpan/appmanage/service/StartService;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    nop

    .line 12
    :goto_0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Lwa/s;->b:Ljava/util/List;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v1, v1, Lwa/s;->b:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x1

    .line 38
    if-le v1, v2, :cond_8

    .line 39
    .line 40
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v1, v1, Lwa/s;->b:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v2}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lwa/s;->h(Landroid/media/session/MediaController;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_0

    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_1
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v1, v1, Lwa/s;->b:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v2}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    const-string v4, "com.netease.cloudmusic.iot"

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_2

    .line 113
    .line 114
    return-object v2

    .line 115
    :cond_3
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iget-object v1, v1, Lwa/s;->d:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_5

    .line 126
    .line 127
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v1, v1, Lwa/s;->b:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_5

    .line 142
    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {v2}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    iget-object v4, v4, Lwa/s;->d:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_4

    .line 166
    .line 167
    return-object v2

    .line 168
    :cond_5
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iget-object v1, v1, Lwa/s;->b:Ljava/util/List;

    .line 173
    .line 174
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_8

    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-static {v2}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    const-string v4, "com.phoenix.read.oversea.gp"

    .line 197
    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_7

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_7
    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    const-string v4, "cn.kuwo"

    .line 210
    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-nez v3, :cond_6

    .line 216
    .line 217
    move-object v0, v2

    .line 218
    :cond_8
    return-object v0
.end method

.method public static e()Landroid/media/session/MediaController;
    .locals 4

    .line 1
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lwa/s;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lwa/s;->h(Landroid/media/session/MediaController;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_1
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v0, v0, Lwa/s;->b:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "com.netease.cloudmusic.iot"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_3
    const/4 v0, 0x0

    .line 77
    return-object v0
.end method

.method public static f()Landroid/media/session/MediaController;
    .locals 6

    .line 1
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 2
    .line 3
    iget-object v0, v0, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 4
    .line 5
    const-string v1, "media_session"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lt0/e;->f(Ljava/lang/Object;)Landroid/media/session/MediaSessionManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lt0/e;->n(Landroid/media/session/MediaSessionManager;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return-object v0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x1

    .line 41
    if-le v2, v3, :cond_9

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v3}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {v3}, Lwa/s;->h(Landroid/media/session/MediaController;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_1

    .line 73
    .line 74
    return-object v3

    .line 75
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_4

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v3}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v5, "com.netease.cloudmusic.iot"

    .line 98
    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_3

    .line 104
    .line 105
    return-object v3

    .line 106
    :cond_4
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iget-object v2, v2, Lwa/s;->d:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_6

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_6

    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v3}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-static {v3}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    iget-object v5, v5, Lwa/s;->d:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_5

    .line 151
    .line 152
    return-object v3

    .line 153
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :cond_7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_9

    .line 162
    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static {v2}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    const-string v4, "com.phoenix.read.oversea.gp"

    .line 176
    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_8

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_8
    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    const-string v4, "cn.kuwo"

    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-nez v3, :cond_7

    .line 195
    .line 196
    move-object v1, v2

    .line 197
    :cond_9
    return-object v1
.end method

.method public static g()Landroid/media/session/MediaController;
    .locals 5

    .line 1
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 2
    .line 3
    iget-object v0, v0, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 4
    .line 5
    const-string v1, "media_session"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lt0/e;->f(Ljava/lang/Object;)Landroid/media/session/MediaSessionManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lt0/e;->n(Landroid/media/session/MediaSessionManager;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v3}, Lwa/s;->h(Landroid/media/session/MediaController;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    return-object v3

    .line 59
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v4, "com.netease.cloudmusic.iot"

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_4
    return-object v2
.end method

.method public static h(Landroid/content/Context;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "screen_brightness"

    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    const/16 p0, 0x64

    .line 17
    .line 18
    return p0
.end method

.method public static i()V
    .locals 15

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v3, v2, [Ljava/lang/String;

    .line 13
    .line 14
    const-string v4, "dumpsys activity activities"

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v4, v3, v5

    .line 18
    .line 19
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Landroidx/room/s;->k()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x0

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const-string v7, "/"

    .line 41
    .line 42
    const-string v8, "."

    .line 43
    .line 44
    const/4 v9, -0x1

    .line 45
    if-eqz v6, :cond_10

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Ljava/lang/String;

    .line 52
    .line 53
    const-string v10, "Permission Denial"

    .line 54
    .line 55
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-eqz v10, :cond_1

    .line 60
    .line 61
    const-string v0, "\u6709\u9650\u5236\uff01\u6b64\u7cfb\u7edf\u65e0\u6cd5\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 62
    .line 63
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    if-eqz v4, :cond_f

    .line 68
    .line 69
    const-string v10, "Display #"

    .line 70
    .line 71
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    if-eqz v10, :cond_2

    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_2
    const-string v10, "* Hist"

    .line 80
    .line 81
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    const-string v11, " "

    .line 86
    .line 87
    if-eqz v10, :cond_a

    .line 88
    .line 89
    const-string v10, "ActivityRecord"

    .line 90
    .line 91
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-nez v10, :cond_3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-ne v7, v9, :cond_4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    add-int/2addr v12, v2

    .line 114
    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    if-eqz v12, :cond_5

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_5
    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-nez v8, :cond_6

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    add-int/2addr v7, v2

    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    const-string v7, "}"

    .line 142
    .line 143
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-ne v7, v9, :cond_7

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_7
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-eq v7, v9, :cond_8

    .line 163
    .line 164
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    :cond_8
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    if-eqz v7, :cond_9

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_9
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 181
    .line 182
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    new-instance v7, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 186
    .line 187
    new-instance v8, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    invoke-direct {v7, v10, v6, v8}, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_a
    const-string v7, "packageName="

    .line 215
    .line 216
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-eqz v7, :cond_0

    .line 221
    .line 222
    const-string v7, "="

    .line 223
    .line 224
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    if-ne v7, v9, :cond_b

    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_b
    add-int/2addr v7, v2

    .line 233
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    if-ne v7, v9, :cond_c

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_c
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-eqz v7, :cond_d

    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_d
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    if-nez v7, :cond_e

    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_e
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_f
    const-string v7, "Display #0 "

    .line 279
    .line 280
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    if-eqz v6, :cond_0

    .line 285
    .line 286
    const/4 v4, 0x1

    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_10
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    const/16 v6, 0x15

    .line 299
    .line 300
    const/4 v10, 0x0

    .line 301
    if-nez v4, :cond_14

    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    move-object v4, v10

    .line 312
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    if-eqz v11, :cond_19

    .line 317
    .line 318
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    check-cast v4, Ljava/lang/String;

    .line 323
    .line 324
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 325
    .line 326
    if-lt v11, v6, :cond_11

    .line 327
    .line 328
    sget-object v11, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 329
    .line 330
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 331
    .line 332
    .line 333
    move-result-object v11

    .line 334
    invoke-static {v11, v4}, Lg7/d;->g(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    goto :goto_3

    .line 339
    :cond_11
    move-object v11, v10

    .line 340
    :goto_3
    if-nez v11, :cond_12

    .line 341
    .line 342
    sget-object v11, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 343
    .line 344
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 345
    .line 346
    .line 347
    move-result-object v11

    .line 348
    invoke-virtual {v11, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    .line 350
    .line 351
    move-result-object v11

    .line 352
    :cond_12
    if-nez v11, :cond_13

    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_13
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    check-cast v4, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 360
    .line 361
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    :goto_4
    move-object v4, v11

    .line 365
    goto :goto_2

    .line 366
    :cond_14
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-nez v0, :cond_18

    .line 371
    .line 372
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    move-object v4, v10

    .line 377
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_19

    .line 382
    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    check-cast v1, Ljava/lang/String;

    .line 388
    .line 389
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 390
    .line 391
    if-lt v4, v6, :cond_15

    .line 392
    .line 393
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 394
    .line 395
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    invoke-static {v4, v1}, Lg7/d;->g(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    goto :goto_6

    .line 404
    :cond_15
    move-object v4, v10

    .line 405
    :goto_6
    if-nez v4, :cond_16

    .line 406
    .line 407
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 408
    .line 409
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    :cond_16
    if-nez v4, :cond_17

    .line 418
    .line 419
    goto :goto_5

    .line 420
    :cond_17
    new-instance v11, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 421
    .line 422
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 423
    .line 424
    .line 425
    move-result v12

    .line 426
    const-string v13, ""

    .line 427
    .line 428
    invoke-direct {v11, v1, v13, v12}, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    goto :goto_5

    .line 435
    :cond_18
    move-object v4, v10

    .line 436
    :cond_19
    new-instance v0, Lqa/e;

    .line 437
    .line 438
    const/4 v1, 0x5

    .line 439
    invoke-direct {v0, v1}, Lqa/e;-><init>(I)V

    .line 440
    .line 441
    .line 442
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 443
    .line 444
    .line 445
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 450
    .line 451
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    const/4 v1, 0x0

    .line 464
    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 465
    .line 466
    .line 467
    move-result v11

    .line 468
    if-ge v1, v11, :cond_1b

    .line 469
    .line 470
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v11

    .line 474
    check-cast v11, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 475
    .line 476
    iget-object v11, v11, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;->packageName:Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v11

    .line 482
    if-eqz v11, :cond_1a

    .line 483
    .line 484
    goto :goto_8

    .line 485
    :cond_1a
    add-int/2addr v1, v2

    .line 486
    goto :goto_7

    .line 487
    :cond_1b
    const/4 v1, -0x1

    .line 488
    :goto_8
    if-ne v1, v9, :cond_1c

    .line 489
    .line 490
    :goto_9
    const/4 v1, 0x0

    .line 491
    goto :goto_a

    .line 492
    :cond_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    sub-int/2addr v0, v2

    .line 497
    if-ne v1, v0, :cond_1d

    .line 498
    .line 499
    goto :goto_9

    .line 500
    :cond_1d
    add-int/2addr v1, v2

    .line 501
    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-nez v0, :cond_1e

    .line 506
    .line 507
    return-void

    .line 508
    :cond_1e
    :try_start_0
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 509
    .line 510
    iget-object v0, v0, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 511
    .line 512
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v9

    .line 516
    check-cast v9, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 517
    .line 518
    iget-object v9, v9, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;->packageName:Ljava/lang/String;

    .line 519
    .line 520
    invoke-virtual {v0, v9, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 521
    .line 522
    .line 523
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    goto :goto_b

    .line 525
    :catch_0
    nop

    .line 526
    move-object v0, v10

    .line 527
    :goto_b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v9

    .line 531
    check-cast v9, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 532
    .line 533
    iget-object v9, v9, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;->className:Ljava/lang/String;

    .line 534
    .line 535
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 536
    .line 537
    .line 538
    move-result v9

    .line 539
    const/high16 v11, 0x10200000

    .line 540
    .line 541
    if-nez v9, :cond_21

    .line 542
    .line 543
    if-eqz v0, :cond_21

    .line 544
    .line 545
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 546
    .line 547
    const/16 v9, 0xbb8

    .line 548
    .line 549
    if-le v0, v9, :cond_21

    .line 550
    .line 551
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    check-cast v0, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 556
    .line 557
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;->packageName:Ljava/lang/String;

    .line 558
    .line 559
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v9

    .line 563
    check-cast v9, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 564
    .line 565
    iget-object v9, v9, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;->className:Ljava/lang/String;

    .line 566
    .line 567
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 568
    .line 569
    .line 570
    move-result v12

    .line 571
    const/4 v13, 0x4

    .line 572
    if-ge v12, v13, :cond_1f

    .line 573
    .line 574
    goto/16 :goto_d

    .line 575
    .line 576
    :cond_1f
    :try_start_1
    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 577
    .line 578
    .line 579
    move-result v12

    .line 580
    if-nez v12, :cond_20

    .line 581
    .line 582
    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 583
    .line 584
    .line 585
    move-result v8

    .line 586
    invoke-virtual {v9, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v8

    .line 590
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 591
    .line 592
    .line 593
    move-result v8

    .line 594
    if-ne v8, v2, :cond_20

    .line 595
    .line 596
    goto :goto_d

    .line 597
    :catch_1
    nop

    .line 598
    goto :goto_d

    .line 599
    :cond_20
    new-instance v8, Landroid/content/ComponentName;

    .line 600
    .line 601
    invoke-direct {v8, v0, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 605
    .line 606
    iget-object v0, v0, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 607
    .line 608
    invoke-virtual {v0, v8, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 609
    .line 610
    .line 611
    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 612
    if-eqz v0, :cond_21

    .line 613
    .line 614
    :try_start_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 615
    .line 616
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v5

    .line 620
    check-cast v5, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 621
    .line 622
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;->packageName:Ljava/lang/String;

    .line 623
    .line 624
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v5

    .line 628
    check-cast v5, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 629
    .line 630
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;->className:Ljava/lang/String;

    .line 631
    .line 632
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    .line 634
    .line 635
    new-instance v0, Landroid/content/Intent;

    .line 636
    .line 637
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 638
    .line 639
    .line 640
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 641
    .line 642
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v5

    .line 649
    check-cast v5, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 650
    .line 651
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;->packageName:Ljava/lang/String;

    .line 652
    .line 653
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    check-cast v5, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 664
    .line 665
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;->className:Ljava/lang/String;

    .line 666
    .line 667
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v0, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 685
    .line 686
    .line 687
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 688
    .line 689
    invoke-static {v2, v4, v0}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 690
    .line 691
    .line 692
    return-void

    .line 693
    :catch_2
    move-exception v4

    .line 694
    goto :goto_c

    .line 695
    :catch_3
    move-exception v0

    .line 696
    move-object v14, v4

    .line 697
    move-object v4, v0

    .line 698
    move-object v0, v14

    .line 699
    :goto_c
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 700
    .line 701
    .line 702
    move-object v4, v0

    .line 703
    :cond_21
    :goto_d
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    check-cast v0, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;

    .line 708
    .line 709
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/AppSwitchClassBean;->packageName:Ljava/lang/String;

    .line 710
    .line 711
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 712
    .line 713
    if-lt v1, v6, :cond_22

    .line 714
    .line 715
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 716
    .line 717
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    invoke-static {v1, v0}, Lg7/d;->g(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    .line 723
    .line 724
    move-result-object v4

    .line 725
    :cond_22
    if-nez v4, :cond_23

    .line 726
    .line 727
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 728
    .line 729
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    .line 735
    .line 736
    move-result-object v4

    .line 737
    :cond_23
    if-nez v4, :cond_24

    .line 738
    .line 739
    return-void

    .line 740
    :cond_24
    :try_start_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 741
    .line 742
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 749
    .line 750
    .line 751
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 752
    .line 753
    invoke-static {v2, v0, v4}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 754
    .line 755
    .line 756
    :catch_4
    return-void
.end method

.method public static j()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    if-lt v0, v1, :cond_4

    .line 6
    .line 7
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lwa/s;->b:Ljava/util/List;

    .line 12
    .line 13
    const-string v1, "\n"

    .line 14
    .line 15
    const-string v2, "  "

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lwa/s;->b:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lwa/s;->b:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v3, "\u901a\u77e5\u6a21\u5f0f\uff1a\n"

    .line 42
    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v4}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v3}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v4}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {v4}, Lwa/s;->h(Landroid/media/session/MediaController;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    const-string v3, ""

    .line 94
    .line 95
    :cond_1
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-boolean v0, v0, Lwa/s;->a:Z

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 104
    .line 105
    iget-object v0, v0, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    .line 106
    .line 107
    const-string v4, "media_session"

    .line 108
    .line 109
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Lt0/e;->f(Ljava/lang/Object;)Landroid/media/session/MediaSessionManager;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Lt0/e;->n(Landroid/media/session/MediaSessionManager;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_2

    .line 128
    .line 129
    const-string v4, "\u516c\u7b7e\u6a21\u5f0f\uff1a\n"

    .line 130
    .line 131
    invoke-static {v3, v4}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_2

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-static {v4}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-static {v3}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-static {v4}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {v4}, Lwa/s;->h(Landroid/media/session/MediaController;)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_3

    .line 194
    .line 195
    const-string v3, "\u65e0"

    .line 196
    .line 197
    :cond_3
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_4
    return-void
.end method

.method public static k(Lcom/yunpan/appmanage/service/AccService;Lz7/o;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v3, "android.activity.windowingMode"

    const-string v6, "maps2"

    const-string v7, "maps1"

    const/16 v14, 0x258

    const/16 v15, 0x1f40

    const/16 v4, 0x1b58

    const/16 v5, 0xbb8

    const-string v8, "streamType"

    const-string v17, "\u6e05\u7406\u5b8c\u6210"

    const-string v9, "y"

    const-string v18, "input keyevent 79"

    const/4 v10, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v11, v2, Lz7/o;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_148

    .line 4
    invoke-virtual {v2, v10}, Lz7/o;->l(I)Lz7/p;

    move-result-object v11

    invoke-virtual {v11}, Lz7/p;->g()Lz7/s;

    move-result-object v11

    .line 5
    const-string v12, "gnType"

    invoke-virtual {v11, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v12

    invoke-virtual {v12}, Lz7/p;->e()I

    move-result v12

    const/16 v13, 0x384

    if-lt v12, v13, :cond_2

    const/16 v13, 0x3e8

    if-ge v12, v13, :cond_2

    .line 6
    invoke-static {v1, v11, v12}, Lif/a;->A(Lcom/yunpan/appmanage/service/AccService;Lz7/s;I)V

    :cond_0
    :goto_1
    move-object/from16 v20, v3

    move-object/from16 v21, v6

    :catch_0
    :cond_1
    :goto_2
    const/4 v2, 0x1

    const/16 v3, 0x258

    const/4 v4, 0x0

    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    :goto_3
    const/16 v16, 0x2

    goto/16 :goto_53

    :catch_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_54

    :cond_2
    const/16 v13, 0x7d0

    if-lt v12, v13, :cond_3

    if-ge v12, v5, :cond_3

    .line 7
    invoke-static {v11, v12}, Lwa/g;->c(Lz7/s;I)V

    goto :goto_1

    :cond_3
    const/16 v13, 0xfa0

    if-lt v12, v5, :cond_4

    if-ge v12, v13, :cond_4

    .line 8
    invoke-static {v1, v11, v12}, Lcom/bumptech/glide/d;->o(Lcom/yunpan/appmanage/service/AccService;Lz7/s;I)V

    goto :goto_1

    :cond_4
    if-lt v12, v4, :cond_5

    if-ge v12, v15, :cond_5

    .line 9
    invoke-static {v1, v11, v12}, La9/o;->I(Lcom/yunpan/appmanage/service/AccService;Lz7/s;I)V

    goto :goto_1

    :cond_5
    if-lt v12, v15, :cond_6

    const/16 v5, 0x2328

    if-ge v12, v5, :cond_6

    .line 10
    invoke-static {v1, v12}, Lcom/bumptech/glide/c;->s(Lcom/yunpan/appmanage/service/AccService;I)V

    goto :goto_1

    :cond_6
    const/16 v5, 0x1f4

    if-lt v12, v5, :cond_7

    if-ge v12, v14, :cond_7

    .line 11
    invoke-static {v1, v12}, Ld/b;->s(Lcom/yunpan/appmanage/service/AccService;I)V

    goto :goto_1

    :cond_7
    const/16 v5, 0x1c

    if-lt v12, v13, :cond_a

    const/16 v15, 0x1388

    if-ge v12, v15, :cond_a

    if-ne v12, v13, :cond_9

    .line 12
    const-string v12, "json"

    invoke-virtual {v11, v12}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    move-result-object v11

    iput-object v11, v1, Lcom/yunpan/appmanage/service/AccService;->S:Lz7/s;

    .line 13
    invoke-static/range {p0 .. p0}, Lv8/a;->v(Lcom/yunpan/appmanage/service/AccService;)Lv8/a;

    move-result-object v11

    const v12, 0x7f0e0215

    .line 14
    invoke-virtual {v11, v12}, Lv8/a;->j(I)V

    const/16 v12, 0x100

    .line 15
    invoke-virtual {v11, v12}, Lv8/a;->a(I)V

    const/16 v12, 0x200

    .line 16
    invoke-virtual {v11, v12}, Lv8/a;->a(I)V

    .line 17
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v11, v5}, Lv8/a;->l(I)V

    iget-object v5, v1, Lcom/yunpan/appmanage/service/AccService;->T:Ljava/lang/String;

    .line 18
    invoke-virtual {v11, v5}, Lv8/a;->s(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v11}, Lv8/a;->d()V

    goto :goto_1

    :cond_9
    const/16 v5, 0xfa1

    if-ne v12, v5, :cond_0

    .line 20
    iget-object v5, v1, Lcom/yunpan/appmanage/service/AccService;->V:Lya/i;

    if-nez v5, :cond_0

    .line 21
    new-instance v5, Lya/i;

    invoke-direct {v5, v1, v11}, Lya/i;-><init>(Lcom/yunpan/appmanage/service/AccService;Lz7/s;)V

    iput-object v5, v1, Lcom/yunpan/appmanage/service/AccService;->V:Lya/i;

    goto/16 :goto_1

    :cond_a
    const/16 v13, 0x1388

    const/16 v15, 0x157c

    if-lt v12, v13, :cond_b

    if-ge v12, v15, :cond_b

    .line 22
    invoke-static {v1, v11, v12}, Lwa/d;->a(Lcom/yunpan/appmanage/service/AccService;Lz7/s;I)V

    goto/16 :goto_1

    :cond_b
    const/16 v13, 0x1770

    if-lt v12, v15, :cond_c

    if-ge v12, v13, :cond_c

    .line 23
    invoke-static {v1, v11, v12}, Landroid/support/v4/media/session/b;->f(Lcom/yunpan/appmanage/service/AccService;Lz7/s;I)V

    goto/16 :goto_1

    :cond_c
    if-lt v12, v13, :cond_d

    const/16 v13, 0x1964

    if-ge v12, v13, :cond_d

    .line 24
    invoke-static {v1, v12}, Lnh/b;->w(Lcom/yunpan/appmanage/service/AccService;I)V

    goto/16 :goto_1

    :cond_d
    const/16 v13, 0x3c

    if-lt v12, v13, :cond_e

    const/16 v13, 0x46

    if-ge v12, v13, :cond_e

    .line 25
    invoke-static {v1, v12}, Ls1/g;->s(Lcom/yunpan/appmanage/service/AccService;I)V

    goto/16 :goto_1

    :cond_e
    const/16 v13, 0x1964

    if-lt v12, v13, :cond_f

    if-ge v12, v4, :cond_f

    .line 26
    invoke-static {v1, v12}, Lqf/c;->q(Lcom/yunpan/appmanage/service/AccService;I)V

    goto/16 :goto_1

    :cond_f
    const/16 v4, 0x328

    if-ne v12, v4, :cond_10

    .line 27
    const-string v4, "input"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 28
    invoke-static {v4, v11}, Lq4/a;->G(Landroid/hardware/input/IInputManager;Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :cond_10
    const/4 v4, 0x1

    if-eq v12, v4, :cond_11

    const/16 v4, 0x36

    if-eq v12, v4, :cond_11

    const/16 v4, 0x37

    if-ne v12, v4, :cond_12

    :cond_11
    move-object/from16 v20, v3

    move-object/from16 v21, v6

    const/16 v3, 0x258

    const/4 v4, 0x0

    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    goto/16 :goto_50

    .line 29
    :cond_12
    const-string v4, "str1"

    const/4 v13, 0x3

    const/4 v15, 0x2

    if-ne v12, v15, :cond_13

    .line 30
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 31
    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 32
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v4

    iget-object v4, v4, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    invoke-static {v13, v4, v5}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :cond_13
    const/16 v15, 0x1ea

    .line 34
    iget-object v14, v11, Lz7/s;->a:Lb8/n;

    if-ne v12, v15, :cond_15

    .line 35
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/yunpan/appmanage/service/AccService;->D:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 36
    :catch_2
    :try_start_3
    const-string v4, "app_package"

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/yunpan/appmanage/service/AccService;->D:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 37
    invoke-virtual {v14, v7}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {v11, v7}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    move-result-object v4

    invoke-static {v1, v4}, Lta/l;->k(Lcom/yunpan/appmanage/service/AccService;Lz7/o;)V

    goto/16 :goto_1

    .line 39
    :cond_14
    invoke-virtual {v14, v6}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    invoke-virtual {v11, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    move-result-object v4

    invoke-static {v1, v4}, Lta/l;->k(Lcom/yunpan/appmanage/service/AccService;Lz7/o;)V

    goto/16 :goto_1

    :cond_15
    const/4 v15, 0x4

    if-eq v12, v15, :cond_16

    const/16 v5, 0x19a

    if-ne v12, v5, :cond_17

    :cond_16
    move-object/from16 v20, v3

    move-object/from16 v21, v6

    const/16 v3, 0x258

    const/4 v4, 0x0

    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    goto/16 :goto_4f

    :cond_17
    const/16 v5, 0x19d

    if-ne v12, v5, :cond_18

    .line 41
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    invoke-virtual {v4, v11}, Lwa/s;->n(Lz7/s;)V

    goto/16 :goto_1

    :cond_18
    const/16 v5, 0x1a2

    if-ne v12, v5, :cond_19

    .line 42
    new-instance v4, Lya/l;

    invoke-direct {v4, v1, v11}, Lya/l;-><init>(Lcom/yunpan/appmanage/service/AccService;Lz7/s;)V

    goto/16 :goto_1

    :cond_19
    const/16 v5, 0x1a0

    const/16 v15, 0x15

    if-ne v12, v5, :cond_1a

    .line 43
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v15, :cond_0

    .line 44
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    invoke-virtual {v4, v11}, Lwa/s;->o(Lz7/s;)V

    goto/16 :goto_1

    :cond_1a
    const/16 v5, 0x1a1

    if-ne v12, v5, :cond_1b

    .line 45
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v15, :cond_0

    .line 46
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    invoke-virtual {v4, v11}, Lwa/s;->k(Lz7/s;)V

    goto/16 :goto_1

    :cond_1b
    const/16 v5, 0x25f

    if-ne v12, v5, :cond_1c

    .line 47
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/4 v5, -0x2

    .line 48
    iput v5, v4, Landroid/os/Message;->what:I

    .line 49
    iput-object v11, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    iget-object v5, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_1c
    const/16 v5, 0x1a4

    if-ne v12, v5, :cond_1d

    .line 51
    invoke-static {}, Lta/l;->i()V

    goto/16 :goto_1

    :cond_1d
    const/4 v5, 0x5

    if-ne v12, v5, :cond_1e

    const/4 v15, 0x2

    .line 52
    invoke-virtual {v1, v15}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto/16 :goto_1

    :cond_1e
    const/16 v15, 0x35

    if-ne v12, v15, :cond_1f

    .line 53
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v4

    iget-object v4, v4, Lwa/u;->d:Lcom/yunpan/appmanage/base/AppStart;

    invoke-static {v4}, Lif/a;->F0(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_1f
    const/4 v15, 0x6

    if-ne v12, v15, :cond_20

    const/4 v15, 0x1

    .line 54
    invoke-virtual {v1, v15}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto/16 :goto_1

    :cond_20
    const/4 v15, 0x7

    if-ne v12, v15, :cond_21

    .line 55
    invoke-virtual {v1, v13}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto/16 :goto_1

    :cond_21
    const/16 v5, 0x8

    if-ne v12, v5, :cond_22

    .line 56
    invoke-virtual {v1, v13}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    const-wide/16 v4, 0xde

    .line 57
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 58
    invoke-virtual {v1, v13}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto/16 :goto_1

    :cond_22
    const/16 v5, 0x5a

    if-ne v12, v5, :cond_23

    const/4 v5, 0x1

    .line 59
    invoke-static {v1, v5}, Lif/a;->I0(Lcom/yunpan/appmanage/service/AccService;Z)V

    goto/16 :goto_1

    :cond_23
    const/16 v5, 0x5c

    if-ne v12, v5, :cond_24

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lif/a;->J0(Lcom/yunpan/appmanage/service/AccService;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_24
    const/16 v5, 0x5b

    if-ne v12, v5, :cond_25

    const/4 v5, 0x0

    .line 61
    invoke-static {v1, v5}, Lif/a;->I0(Lcom/yunpan/appmanage/service/AccService;Z)V

    goto/16 :goto_1

    :cond_25
    const/16 v5, 0x28

    const/16 v13, 0x18

    if-ne v12, v5, :cond_26

    .line 62
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v13, :cond_0

    .line 63
    invoke-virtual {v1, v15}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto/16 :goto_1

    :cond_26
    const/16 v5, 0x280

    const/16 v15, 0x1000

    if-ne v12, v5, :cond_28

    .line 64
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v13, :cond_27

    return-void

    .line 65
    :cond_27
    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 66
    aget-object v11, v4, v5

    invoke-static {v11}, Lif/a;->L(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 67
    invoke-virtual {v5, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v11, 0x1

    .line 68
    aget-object v4, v4, v11

    invoke-static {v4}, Lif/a;->L(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 69
    invoke-virtual {v4, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    invoke-static {}, Ld2/c;->f()Landroid/app/ActivityOptions;

    move-result-object v11

    .line 71
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v12, 0x3

    .line 72
    invoke-virtual {v11, v3, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string v12, "android:activity.splitScreenCreateMode"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v12, 0x2

    .line 74
    new-array v14, v12, [Landroid/content/Intent;

    aput-object v5, v14, v13

    const/4 v5, 0x1

    aput-object v4, v14, v5

    invoke-virtual {v1, v14, v11}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_28
    const/16 v5, 0x281

    .line 75
    const-string v15, ","

    if-ne v12, v5, :cond_2b

    .line 76
    :try_start_4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v13, :cond_29

    return-void

    .line 77
    :cond_29
    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lif/a;->L(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/16 v5, 0x1000

    .line 78
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-static {}, Ld2/c;->f()Landroid/app/ActivityOptions;

    move-result-object v5

    .line 80
    const-string v12, "str2"

    invoke-virtual {v11, v12}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v11

    invoke-virtual {v11}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v11

    .line 81
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2a

    .line 82
    invoke-virtual {v11, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 83
    array-length v12, v11

    const/4 v13, 0x4

    if-ne v12, v13, :cond_2a

    .line 84
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    aget-object v14, v11, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    aget-object v15, v11, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x2

    aget-object v19, v11, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v19, 0x3

    aget-object v11, v11, v19

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v12, v13, v14, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v5, v12}, Lq/t;->n(Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    .line 85
    :cond_2a
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v11, 0x5

    .line 86
    invoke-virtual {v5, v3, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string v11, "android:activity.splitScreenCreateMode"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v11, 0x1

    .line 88
    new-array v13, v11, [Landroid/content/Intent;

    aput-object v4, v13, v12

    invoke-virtual {v1, v13, v5}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    const-wide/16 v4, 0x14d

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_1

    :cond_2b
    const/16 v5, 0x2a

    if-ne v12, v5, :cond_2c

    .line 90
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_0

    .line 91
    invoke-static {}, Lm0/o;->w()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v1, v4}, Lr8/a;->j(Lcom/yunpan/appmanage/service/AccService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lt0/e;->h(Ljava/lang/Object;)Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 92
    invoke-static {v4}, Ln5/a;->r(Landroid/telecom/TelecomManager;)V

    goto/16 :goto_1

    :cond_2c
    const/16 v5, 0x2b

    const/4 v13, 0x0

    if-ne v12, v5, :cond_2e

    .line 93
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_2d

    .line 94
    invoke-static {}, Lm0/o;->w()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v1, v4}, Lr8/a;->j(Lcom/yunpan/appmanage/service/AccService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lt0/e;->h(Ljava/lang/Object;)Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 95
    invoke-static {v4}, Lo5/g;->p(Landroid/telecom/TelecomManager;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 96
    :cond_2d
    :try_start_5
    const-string v4, "com.android.internal.telephony.ITelephony"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 97
    const-string v5, "Service"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 98
    const-string v11, "declineCall"

    invoke-virtual {v4, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 99
    invoke-virtual {v4, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v4, v0

    .line 100
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto/16 :goto_1

    :cond_2e
    const/16 v5, 0x2c

    if-ne v12, v5, :cond_2f

    const/4 v5, 0x4

    .line 101
    invoke-virtual {v1, v5}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto/16 :goto_1

    :cond_2f
    const/16 v5, 0x2d

    if-ne v12, v5, :cond_30

    const/4 v5, 0x5

    .line 102
    invoke-virtual {v1, v5}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto/16 :goto_1

    :cond_30
    const/16 v5, 0x2e

    const/16 v13, 0x12

    if-ne v12, v5, :cond_31

    .line 103
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v13, :cond_0

    .line 104
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    iget-object v4, v4, Lwa/s;->f:Lcom/yunpan/appmanage/service/StartService;

    invoke-static {v4}, Lb1/o;->q(Lcom/yunpan/appmanage/service/StartService;)V

    goto/16 :goto_1

    :cond_31
    const/16 v5, 0x32

    if-ne v12, v5, :cond_33

    .line 105
    iget-object v4, v1, Lcom/yunpan/appmanage/service/AccService;->C:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 106
    iget-object v4, v1, Lcom/yunpan/appmanage/service/AccService;->C:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 107
    iget-object v5, v1, Lcom/yunpan/appmanage/service/AccService;->C:Ljava/util/LinkedHashSet;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    :goto_5
    const/4 v11, 0x2

    if-lt v5, v11, :cond_0

    if-ne v5, v11, :cond_32

    .line 108
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v1, v11}, Lif/a;->z0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_6
    const/4 v11, -0x1

    goto :goto_7

    .line 109
    :cond_32
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_6

    :goto_7
    add-int/2addr v5, v11

    goto :goto_5

    :cond_33
    const/16 v5, 0x1a5

    if-ne v12, v5, :cond_3a

    .line 110
    const-string v4, "appList"

    invoke-virtual {v11, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    move-result-object v4

    .line 111
    iget-object v5, v1, Lcom/yunpan/appmanage/service/AccService;->C:Ljava/util/LinkedHashSet;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 112
    array-length v11, v5

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v12, -0x1

    :goto_8
    if-ltz v11, :cond_36

    const/4 v13, 0x0

    .line 113
    :goto_9
    iget-object v14, v4, Lz7/o;->a:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_35

    .line 115
    aget-object v14, v5, v11

    invoke-virtual {v4, v13}, Lz7/o;->l(I)Lz7/p;

    move-result-object v15

    invoke-virtual {v15}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_34

    move v12, v13

    goto :goto_a

    :cond_34
    const/4 v14, 0x1

    add-int/2addr v13, v14

    goto :goto_9

    :cond_35
    :goto_a
    if-ltz v12, :cond_37

    :cond_36
    const/4 v13, -0x1

    goto :goto_b

    :cond_37
    const/4 v13, -0x1

    add-int/2addr v11, v13

    goto :goto_8

    :goto_b
    if-ne v12, v13, :cond_38

    const/4 v11, 0x0

    goto :goto_c

    :cond_38
    const/4 v5, 0x1

    add-int/lit8 v11, v12, 0x1

    .line 116
    :goto_c
    iget-object v5, v4, Lz7/o;->a:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v11, v5, :cond_39

    const/4 v11, 0x0

    .line 118
    :cond_39
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v11}, Lz7/o;->l(I)Lz7/p;

    move-result-object v12

    invoke-virtual {v12}, Lz7/p;->i()Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-virtual {v4, v11}, Lz7/o;->l(I)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lif/a;->z0(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3a
    const/16 v5, 0x2f

    if-ne v12, v5, :cond_3b

    .line 120
    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v4, :cond_0

    .line 121
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 122
    :cond_3b
    const-string v5, "\u8f93\u5165\u6cd5\uff1a"

    const-string v13, "enabled_input_methods"

    const/16 v2, 0x30

    move-object/from16 v20, v3

    const-string v3, "default_input_method"

    if-ne v12, v2, :cond_45

    .line 123
    :try_start_7
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 124
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 125
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 126
    const-string v1, "\u6ca1\u6709\u5b89\u88c5\u8f93\u5165\u6cd5"

    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    return-void

    .line 127
    :cond_3c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_3d

    .line 128
    const-string v1, "\u53ea\u6709\u4e00\u4e2a\u8f93\u5165\u6cd5\uff0c\u65e0\u9700\u5207\u6362"

    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    return-void

    .line 129
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 130
    const-string v11, "null"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 131
    :cond_3e
    const-string v4, ""

    .line 132
    :cond_3f
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    if-eqz v11, :cond_40

    .line 133
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v13, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v3, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_d

    .line 136
    :catch_4
    :try_start_9
    const-string v1, "\u5207\u6362\u8f93\u5165\u6cd5\u5931\u8d25"

    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    :goto_d
    return-void

    .line 137
    :cond_40
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 138
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :goto_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_42

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v15, 0x1

    add-int/2addr v12, v15

    .line 139
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v6

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    goto :goto_f

    :cond_41
    move-object/from16 v6, v21

    goto :goto_e

    :cond_42
    move-object/from16 v21, v6

    .line 140
    :cond_43
    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    if-lt v12, v4, :cond_44

    const/4 v12, 0x0

    .line 141
    :cond_44
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v13, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v3, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_2

    .line 144
    :catch_5
    :try_start_b
    const-string v2, "\u5207\u6362\u8f93\u5165\u6cd5\u5931\u8d25"

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_2

    :cond_45
    move-object/from16 v21, v6

    const/16 v2, 0x31

    if-ne v12, v2, :cond_46

    .line 145
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "immID"

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v13, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "immID"

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "immName"

    invoke-virtual {v11, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_2

    .line 148
    :catch_6
    :try_start_d
    const-string v2, "\u8bbe\u7f6e\u8f93\u5165\u6cd5\u5931\u8d25"

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_46
    const/4 v2, 0x3

    if-ne v12, v2, :cond_47

    .line 149
    invoke-static {v1, v11}, Lta/m;->h(Lcom/yunpan/appmanage/service/AccService;Lz7/s;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_2

    :cond_47
    const/16 v2, 0x19e

    .line 150
    const-string v3, "type"

    if-ne v12, v2, :cond_4b

    .line 151
    :try_start_e
    invoke-virtual {v11, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 152
    const-string v3, "ui_night_mode"

    if-nez v2, :cond_49

    .line 153
    :try_start_f
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_48

    .line 154
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10

    .line 155
    :cond_48
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_10

    .line 156
    :cond_49
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    :goto_10
    const-string v2, "uimode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 158
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4a

    const/4 v3, 0x0

    .line 159
    invoke-virtual {v2, v3}, Landroid/app/UiModeManager;->disableCarMode(I)V

    .line 160
    invoke-virtual {v2, v3}, Landroid/app/UiModeManager;->enableCarMode(I)V

    goto/16 :goto_2

    :cond_4a
    const/4 v3, 0x0

    .line 161
    invoke-virtual {v2, v3}, Landroid/app/UiModeManager;->enableCarMode(I)V

    .line 162
    invoke-virtual {v2, v3}, Landroid/app/UiModeManager;->disableCarMode(I)V

    goto/16 :goto_2

    :cond_4b
    const/16 v2, 0x19f

    if-ne v12, v2, :cond_4f

    .line 163
    invoke-virtual {v11, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2

    .line 164
    const-string v3, "uimode"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    if-nez v2, :cond_4d

    .line 165
    invoke-virtual {v3}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4c

    const/4 v2, 0x1

    goto :goto_11

    :cond_4c
    const/4 v2, 0x2

    :goto_11
    invoke-virtual {v3, v2}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto :goto_12

    .line 166
    :cond_4d
    invoke-virtual {v3, v2}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 167
    :goto_12
    invoke-virtual {v3}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4e

    const/4 v2, 0x0

    .line 168
    invoke-virtual {v3, v2}, Landroid/app/UiModeManager;->disableCarMode(I)V

    .line 169
    invoke-virtual {v3, v2}, Landroid/app/UiModeManager;->enableCarMode(I)V

    goto/16 :goto_2

    :cond_4e
    const/4 v2, 0x0

    .line 170
    invoke-virtual {v3, v2}, Landroid/app/UiModeManager;->enableCarMode(I)V

    .line 171
    invoke-virtual {v3, v2}, Landroid/app/UiModeManager;->disableCarMode(I)V

    goto/16 :goto_2

    :cond_4f
    const/16 v2, 0xa

    const/16 v5, 0x46

    if-ne v12, v5, :cond_52

    .line 172
    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 174
    const-string v4, "adb shell "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 175
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 176
    :cond_50
    const-string v2, "adb "

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v2, 0x4

    .line 177
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 178
    :cond_51
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 179
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v2

    const/4 v3, 0x0

    .line 180
    invoke-virtual {v2, v3}, Ls1/g;->e0(Lua/i6;)V

    goto/16 :goto_2

    :cond_52
    const/16 v6, 0x47

    if-ne v12, v6, :cond_53

    .line 181
    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 183
    sget-object v3, Lfa/a;->a:Lfa/b;

    invoke-virtual {v3}, Lfa/b;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    const-wide/16 v11, 0xd05

    invoke-interface {v3, v2, v11, v12}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    goto/16 :goto_2

    :cond_53
    const/16 v6, 0x48

    if-ne v12, v6, :cond_57

    .line 184
    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 186
    sget-object v3, Lfa/a;->a:Lfa/b;

    invoke-virtual {v3}, Lfa/b;->f()Z

    move-result v4

    if-nez v4, :cond_54

    return-void

    .line 187
    :cond_54
    iget-object v3, v3, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    const-wide/16 v11, 0xd05

    invoke-interface {v3, v2, v11, v12}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yunpan/appmanage/shizuku/CmdResult;->getAllStr()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 188
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_56

    :cond_55
    const-string v2, "Success"

    .line 189
    :cond_56
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_57
    const/16 v6, 0x33

    if-ne v12, v6, :cond_58

    .line 190
    invoke-static/range {p0 .. p0}, Lif/a;->G0(Lcom/yunpan/appmanage/service/AccService;)V

    goto/16 :goto_2

    :cond_58
    const/16 v6, 0x34

    if-ne v12, v6, :cond_5a

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v11, v1, Lcom/yunpan/appmanage/service/AccService;->H:J

    sub-long/2addr v2, v11

    const-wide/16 v11, 0x1a0a

    cmp-long v4, v2, v11

    if-gez v4, :cond_59

    .line 192
    const-string v1, "\u6309HOME\u952e\u540e\uff0c\u9700\u7b496\u79d2\u65b9\u53ef\u540e\u53f0\u6253\u5f00\u5176\u5b83\u5e94\u7528"

    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->r(Ljava/lang/String;)V

    return-void

    .line 193
    :cond_59
    invoke-static/range {p0 .. p0}, Lif/a;->G0(Lcom/yunpan/appmanage/service/AccService;)V

    goto/16 :goto_2

    :cond_5a
    const/16 v6, 0x9

    const/16 v13, 0x55

    if-ne v12, v6, :cond_5f

    .line 194
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 195
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    if-eqz v2, :cond_5e

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 196
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    move-result-object v2

    .line 197
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    if-nez v3, :cond_5b

    :goto_13
    goto/16 :goto_2

    .line 198
    :cond_5b
    invoke-static {v3}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5d

    invoke-static {v3}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5c

    goto :goto_14

    .line 199
    :cond_5c
    invoke-static {v3}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 200
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->x(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    .line 201
    :cond_5d
    :goto_14
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->D(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    .line 202
    :cond_5e
    invoke-static {v1, v13}, Lta/l;->c(Lcom/yunpan/appmanage/service/AccService;I)V

    goto/16 :goto_2

    :cond_5f
    const/16 v6, 0x57

    if-eq v12, v2, :cond_60

    const/16 v5, 0xc

    if-ne v12, v5, :cond_61

    :cond_60
    const/16 v3, 0x258

    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    goto/16 :goto_4d

    :cond_61
    const/16 v5, 0xb

    const/16 v2, 0x58

    if-eq v12, v5, :cond_62

    const/16 v5, 0xd

    if-ne v12, v5, :cond_63

    :cond_62
    const/16 v3, 0x258

    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    goto/16 :goto_4b

    :cond_63
    const/16 v5, 0xe

    if-ne v12, v5, :cond_65

    .line 203
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 204
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    if-eqz v2, :cond_64

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_64

    .line 205
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->z(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    :cond_64
    const/16 v2, 0x56

    .line 206
    invoke-static {v1, v2}, Lta/l;->c(Lcom/yunpan/appmanage/service/AccService;I)V

    goto/16 :goto_2

    :cond_65
    const/16 v5, 0xf

    if-ne v12, v5, :cond_67

    .line 207
    iget-object v2, v1, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_66

    .line 208
    iget-object v2, v1, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto/16 :goto_2

    .line 209
    :cond_66
    iget-object v2, v1, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto/16 :goto_2

    :cond_67
    const/16 v5, 0x19b

    if-ne v12, v5, :cond_6a

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const/4 v3, 0x3

    .line 211
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 212
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    if-nez v4, :cond_69

    const/4 v6, 0x2

    .line 213
    div-int/2addr v5, v6

    .line 214
    iget-object v4, v1, Lcom/yunpan/appmanage/service/AccService;->M0:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_68

    .line 215
    iget-object v4, v1, Lcom/yunpan/appmanage/service/AccService;->M0:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v3, 0x3

    :cond_68
    const/4 v4, 0x0

    .line 216
    invoke-virtual {v2, v3, v5, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(\u97f3\u6d41"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")  \u89e3\u9664\u9759\u97f3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 218
    :cond_69
    iget-object v3, v1, Lcom/yunpan/appmanage/service/AccService;->M0:Ljava/util/HashMap;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 219
    invoke-virtual {v2, v5, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(\u97f3\u6d41"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")  \u5df2\u9759\u97f3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6a
    const/16 v5, 0x19c

    if-ne v12, v5, :cond_6c

    .line 221
    invoke-virtual {v14, v3}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 222
    invoke-virtual {v11, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2

    goto :goto_15

    :cond_6b
    const/4 v2, 0x0

    .line 223
    :goto_15
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lwa/s;->f(Lcom/yunpan/appmanage/service/AccService;I)V

    goto/16 :goto_2

    :cond_6c
    const/16 v3, 0x1b0

    const/16 v5, 0x7e

    const/16 v14, 0x7f

    if-ne v12, v3, :cond_6e

    .line 224
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-boolean v2, v2, Lwa/s;->p:Z

    if-eqz v2, :cond_6d

    invoke-static {v1, v14}, Lta/l;->c(Lcom/yunpan/appmanage/service/AccService;I)V

    goto :goto_16

    .line 225
    :cond_6d
    invoke-static {v1, v5}, Lta/l;->c(Lcom/yunpan/appmanage/service/AccService;I)V

    .line 226
    :goto_16
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v3

    iget-boolean v3, v3, Lwa/s;->p:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, v2, Lwa/s;->p:Z

    goto/16 :goto_2

    :cond_6e
    const/16 v3, 0x10

    if-ne v12, v3, :cond_6f

    .line 227
    invoke-static {v1, v13}, Lta/l;->c(Lcom/yunpan/appmanage/service/AccService;I)V

    goto/16 :goto_2

    :cond_6f
    const/16 v3, 0x190

    if-ne v12, v3, :cond_70

    .line 228
    invoke-static {v1, v5}, Lta/l;->c(Lcom/yunpan/appmanage/service/AccService;I)V

    goto/16 :goto_2

    :cond_70
    const/16 v3, 0x191

    if-ne v12, v3, :cond_71

    .line 229
    invoke-static {v1, v14}, Lta/l;->c(Lcom/yunpan/appmanage/service/AccService;I)V

    goto/16 :goto_2

    :cond_71
    const/16 v3, 0x11

    if-ne v12, v3, :cond_72

    .line 230
    invoke-static {v1, v6}, Lta/l;->c(Lcom/yunpan/appmanage/service/AccService;I)V

    goto/16 :goto_2

    :cond_72
    const/16 v3, 0x12

    if-ne v12, v3, :cond_73

    .line 231
    invoke-static {v1, v2}, Lta/l;->c(Lcom/yunpan/appmanage/service/AccService;I)V

    goto/16 :goto_2

    :cond_73
    const/16 v3, 0x13

    if-ne v12, v3, :cond_74

    const/16 v2, 0x56

    .line 232
    invoke-static {v1, v2}, Lta/l;->c(Lcom/yunpan/appmanage/service/AccService;I)V

    goto/16 :goto_2

    :cond_74
    const/16 v3, 0x1ae

    if-ne v12, v3, :cond_75

    const/16 v3, 0x5a

    .line 233
    invoke-static {v1, v3}, Lta/l;->c(Lcom/yunpan/appmanage/service/AccService;I)V

    goto/16 :goto_2

    :cond_75
    const/16 v3, 0x1af

    if-ne v12, v3, :cond_76

    const/16 v2, 0x59

    .line 234
    invoke-static {v1, v2}, Lta/l;->c(Lcom/yunpan/appmanage/service/AccService;I)V

    goto/16 :goto_2

    :cond_76
    const/16 v3, 0x18

    if-ne v12, v3, :cond_7b

    .line 235
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    invoke-static {}, Lta/l;->d()Landroid/media/session/MediaController;

    move-result-object v2

    .line 237
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    if-nez v3, :cond_77

    goto/16 :goto_2

    .line 238
    :cond_77
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v4

    iget-object v4, v4, Lwa/u;->x:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_78

    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v4

    iget-object v4, v4, Lwa/u;->x:Ljava/util/Set;

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    goto/16 :goto_2

    .line 239
    :cond_78
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lwa/s;->d:Ljava/lang/String;

    .line 240
    invoke-static {v3}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7a

    invoke-static {v3}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_79

    goto :goto_17

    .line 241
    :cond_79
    invoke-static {v3}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 242
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->x(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    .line 243
    :cond_7a
    :goto_17
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->D(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    :cond_7b
    const/16 v3, 0x192

    if-ne v12, v3, :cond_7f

    .line 244
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    invoke-static {}, Lta/l;->d()Landroid/media/session/MediaController;

    move-result-object v2

    .line 246
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    if-nez v3, :cond_7c

    goto/16 :goto_2

    .line 247
    :cond_7c
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v4

    iget-object v4, v4, Lwa/u;->x:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7d

    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v4

    iget-object v4, v4, Lwa/u;->x:Ljava/util/Set;

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    goto/16 :goto_2

    .line 248
    :cond_7d
    invoke-static {v3}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7e

    invoke-static {v3}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 249
    :cond_7e
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->D(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    :cond_7f
    const/16 v3, 0x193

    if-ne v12, v3, :cond_82

    .line 250
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    invoke-static {}, Lta/l;->d()Landroid/media/session/MediaController;

    move-result-object v2

    .line 252
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    if-nez v3, :cond_80

    goto/16 :goto_2

    .line 253
    :cond_80
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v4

    iget-object v4, v4, Lwa/u;->x:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_81

    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v4

    iget-object v4, v4, Lwa/u;->x:Ljava/util/Set;

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    goto/16 :goto_13

    .line 254
    :cond_81
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lwa/s;->d:Ljava/lang/String;

    .line 255
    invoke-static {v3}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 256
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->x(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    :cond_82
    const/16 v3, 0x19

    if-ne v12, v3, :cond_84

    .line 257
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    invoke-static {}, Lta/l;->d()Landroid/media/session/MediaController;

    move-result-object v2

    .line 259
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->x:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_83

    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->x:Ljava/util/Set;

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    goto/16 :goto_2

    .line 260
    :cond_83
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v3

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lwa/s;->d:Ljava/lang/String;

    .line 261
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->z(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    :cond_84
    const/16 v3, 0x14

    if-eq v12, v3, :cond_85

    const/16 v3, 0x15

    if-ne v12, v3, :cond_86

    :cond_85
    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    goto/16 :goto_4a

    :cond_86
    const/16 v5, 0x1bd

    if-eq v12, v5, :cond_87

    const/16 v5, 0x1be

    if-ne v12, v5, :cond_88

    :cond_87
    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    goto/16 :goto_49

    :cond_88
    const/16 v5, 0x23

    if-ne v12, v5, :cond_8d

    .line 262
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_89
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    move-result-object v3

    .line 264
    invoke-static {v3}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v6

    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 265
    invoke-static {v3}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v2

    if-nez v2, :cond_8a

    goto/16 :goto_2

    .line 266
    :cond_8a
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    invoke-static {v3}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lwa/s;->d:Ljava/lang/String;

    .line 267
    invoke-static {v2}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8c

    invoke-static {v2}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8b

    goto :goto_18

    .line 268
    :cond_8b
    invoke-static {v2}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 269
    invoke-static {v3}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->x(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    .line 270
    :cond_8c
    :goto_18
    invoke-static {v3}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->D(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    :cond_8d
    const/16 v3, 0x16

    if-eq v12, v3, :cond_8e

    const/16 v3, 0x17

    if-ne v12, v3, :cond_8f

    :cond_8e
    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    goto/16 :goto_48

    :cond_8f
    const/16 v3, 0x195

    if-ne v12, v3, :cond_91

    .line 271
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    invoke-static {}, Lta/l;->d()Landroid/media/session/MediaController;

    move-result-object v2

    if-nez v2, :cond_90

    goto/16 :goto_2

    .line 273
    :cond_90
    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lta/l;->l(Lcom/yunpan/appmanage/service/AccService;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_91
    const-wide/16 v24, 0x2710

    const/16 v3, 0x1bc

    const-wide/16 v26, 0x0

    if-eq v12, v3, :cond_92

    const/16 v3, 0x1ba

    if-eq v12, v3, :cond_92

    const/16 v3, 0x1bb

    if-ne v12, v3, :cond_93

    :cond_92
    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    goto/16 :goto_46

    :cond_93
    const/16 v3, 0x1b8

    if-eq v12, v3, :cond_94

    const/16 v3, 0x1b9

    if-ne v12, v3, :cond_95

    :cond_94
    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    goto/16 :goto_45

    :cond_95
    const/16 v3, 0x1c2

    if-eq v12, v3, :cond_96

    const/16 v3, 0x1c3

    if-ne v12, v3, :cond_97

    :cond_96
    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    goto/16 :goto_44

    :cond_97
    const/16 v3, 0x1c6

    if-eq v12, v3, :cond_98

    const/16 v3, 0x1c4

    if-eq v12, v3, :cond_98

    const/16 v3, 0x1c5

    if-ne v12, v3, :cond_99

    :cond_98
    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    goto/16 :goto_42

    :cond_99
    const/16 v3, 0x1a

    if-ne v12, v3, :cond_9f

    .line 274
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 275
    invoke-static {}, Lta/l;->f()Landroid/media/session/MediaController;

    move-result-object v2

    if-nez v2, :cond_9a

    goto/16 :goto_2

    .line 276
    :cond_9a
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->y:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9b

    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->y:Ljava/util/Set;

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    goto/16 :goto_2

    .line 277
    :cond_9b
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    if-nez v3, :cond_9c

    goto/16 :goto_2

    .line 278
    :cond_9c
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lwa/s;->d:Ljava/lang/String;

    .line 279
    invoke-static {v3}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9e

    invoke-static {v3}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9d

    goto :goto_19

    .line 280
    :cond_9d
    invoke-static {v3}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 281
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->x(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    .line 282
    :cond_9e
    :goto_19
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->D(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    :cond_9f
    const/16 v3, 0x24

    if-ne v12, v3, :cond_a3

    .line 283
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 284
    invoke-static {}, Lta/l;->f()Landroid/media/session/MediaController;

    move-result-object v2

    if-nez v2, :cond_a0

    goto/16 :goto_2

    .line 285
    :cond_a0
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->y:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a1

    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->y:Ljava/util/Set;

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    goto/16 :goto_2

    .line 286
    :cond_a1
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    if-nez v3, :cond_a2

    goto/16 :goto_2

    .line 287
    :cond_a2
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lwa/s;->d:Ljava/lang/String;

    .line 288
    invoke-static {v3}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 289
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->D(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    :cond_a3
    const/16 v3, 0x194

    if-ne v12, v3, :cond_a7

    .line 290
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 291
    invoke-static {}, Lta/l;->f()Landroid/media/session/MediaController;

    move-result-object v2

    if-nez v2, :cond_a4

    goto/16 :goto_2

    .line 292
    :cond_a4
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->y:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a5

    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->y:Ljava/util/Set;

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    goto/16 :goto_2

    .line 293
    :cond_a5
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    if-nez v3, :cond_a6

    goto/16 :goto_2

    .line 294
    :cond_a6
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lwa/s;->d:Ljava/lang/String;

    .line 295
    invoke-static {v3}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 296
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->x(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    :cond_a7
    const/16 v3, 0x1b

    if-ne v12, v3, :cond_aa

    .line 297
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 298
    invoke-static {}, Lta/l;->f()Landroid/media/session/MediaController;

    move-result-object v2

    if-nez v2, :cond_a8

    goto/16 :goto_2

    .line 299
    :cond_a8
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->y:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a9

    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->y:Ljava/util/Set;

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    goto/16 :goto_2

    .line 300
    :cond_a9
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v3

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lwa/s;->d:Ljava/lang/String;

    .line 301
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->z(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    :cond_aa
    const/16 v3, 0x1c

    if-eq v12, v3, :cond_ab

    const/16 v3, 0x1d

    if-ne v12, v3, :cond_ac

    :cond_ab
    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    goto/16 :goto_41

    :cond_ac
    const/16 v3, 0x1c7

    const-wide/16 v24, 0xc8

    if-eq v12, v3, :cond_ad

    const/16 v3, 0x1c8

    if-ne v12, v3, :cond_ae

    :cond_ad
    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    goto/16 :goto_40

    :cond_ae
    const/16 v3, 0x22

    if-ne v12, v3, :cond_b3

    .line 302
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "media_session"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->f(Ljava/lang/Object;)Landroid/media/session/MediaSessionManager;

    move-result-object v2

    .line 304
    invoke-static {v2}, Lt0/e;->n(Landroid/media/session/MediaSessionManager;)Ljava/util/List;

    move-result-object v2

    .line 305
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_af
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    move-result-object v3

    .line 306
    invoke-static {v3}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v6

    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 307
    invoke-static {v3}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v2

    if-nez v2, :cond_b0

    goto/16 :goto_2

    .line 308
    :cond_b0
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    invoke-static {v3}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lwa/s;->d:Ljava/lang/String;

    .line 309
    invoke-static {v2}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_b2

    invoke-static {v2}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b1

    goto :goto_1a

    .line 310
    :cond_b1
    invoke-static {v2}, Lt0/e;->a(Landroid/media/session/PlaybackState;)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 311
    invoke-static {v3}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->x(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    .line 312
    :cond_b2
    :goto_1a
    invoke-static {v3}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->D(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_2

    :cond_b3
    const/16 v3, 0x1e

    if-eq v12, v3, :cond_b4

    const/16 v3, 0x1f

    if-ne v12, v3, :cond_b5

    :cond_b4
    const/16 v5, 0xff

    const/4 v13, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    goto/16 :goto_3f

    :cond_b5
    const/16 v3, 0x198

    if-ne v12, v3, :cond_b7

    .line 313
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 314
    invoke-static {}, Lta/l;->f()Landroid/media/session/MediaController;

    move-result-object v2

    if-nez v2, :cond_b6

    goto/16 :goto_2

    .line 315
    :cond_b6
    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lta/l;->l(Lcom/yunpan/appmanage/service/AccService;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_2

    .line 316
    :cond_b7
    const-string v3, "input keyevent "

    const/16 v5, 0x64

    const-string v14, "int1"

    if-lt v12, v5, :cond_b8

    const/16 v5, 0xc8

    if-ge v12, v5, :cond_b8

    .line 317
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v2

    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    goto/16 :goto_2

    :cond_b8
    const/16 v5, 0x1cc

    if-ne v12, v5, :cond_ba

    .line 318
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-boolean v2, v2, Lwa/s;->p:Z

    if-eqz v2, :cond_b9

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "input keyevent 127"

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v2

    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    goto :goto_1b

    :cond_b9
    const/4 v2, 0x1

    .line 319
    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "input keyevent 126"

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v2

    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 320
    :goto_1b
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v3

    iget-boolean v3, v3, Lwa/s;->p:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, v2, Lwa/s;->p:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_2

    :cond_ba
    const/16 v5, 0x50

    .line 321
    const-string v13, "int2"

    if-ne v12, v5, :cond_bc

    .line 322
    :try_start_11
    invoke-virtual {v11, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    .line 323
    :try_start_12
    invoke-virtual {v11, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->e()I

    move-result v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    goto :goto_1c

    :catch_7
    nop

    const/4 v4, 0x1

    :goto_1c
    if-nez v4, :cond_bb

    .line 324
    :try_start_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v2

    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    goto/16 :goto_2

    :cond_bb
    if-lez v4, :cond_1

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    :goto_1d
    if-lez v4, :cond_1

    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v11, v6

    invoke-static {v11}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v5

    invoke-virtual {v5}, Lv9/e;->l0()Landroidx/room/s;

    const-wide/16 v5, 0x85

    .line 326
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    const/4 v5, -0x1

    add-int/2addr v4, v5

    goto :goto_1d

    :cond_bc
    const/16 v3, 0x321

    if-ne v12, v3, :cond_be

    .line 327
    invoke-virtual {v11, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    .line 328
    :try_start_14
    invoke-virtual {v11, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->e()I

    move-result v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_1e

    :catch_8
    nop

    const/4 v3, 0x1

    :goto_1e
    if-nez v3, :cond_bd

    const/4 v4, 0x1

    .line 329
    :try_start_15
    invoke-static {v2, v4}, Lta/l;->m(IZ)V

    goto/16 :goto_2

    :cond_bd
    if-lez v3, :cond_1

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    :goto_1f
    if-lez v3, :cond_1

    const/4 v4, 0x0

    .line 330
    invoke-static {v2, v4}, Lta/l;->m(IZ)V

    .line 331
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V

    const/4 v4, -0x1

    add-int/2addr v3, v4

    goto :goto_1f

    :cond_be
    const/16 v3, 0x320

    if-ne v12, v3, :cond_c0

    .line 332
    invoke-virtual {v11, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    .line 333
    :try_start_16
    invoke-virtual {v11, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->e()I

    move-result v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9

    goto :goto_20

    :catch_9
    nop

    const/4 v3, 0x1

    :goto_20
    if-nez v3, :cond_bf

    const/4 v4, 0x1

    .line 334
    :try_start_17
    invoke-static {v2, v4}, Lta/l;->n(IZ)V

    goto/16 :goto_2

    :cond_bf
    if-lez v3, :cond_1

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    :goto_21
    if-lez v3, :cond_1

    const/4 v4, 0x0

    .line 335
    invoke-static {v2, v4}, Lta/l;->n(IZ)V

    .line 336
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V

    const/4 v4, -0x1

    add-int/2addr v3, v4

    goto :goto_21

    :cond_c0
    const/16 v3, 0x322

    if-ne v12, v3, :cond_c1

    const/16 v2, 0x1b

    const/4 v3, 0x0

    .line 337
    invoke-static {v2, v3}, Lta/l;->m(IZ)V

    goto/16 :goto_2

    :cond_c1
    const/4 v3, 0x0

    const/16 v5, 0x323

    if-ne v12, v5, :cond_c2

    .line 338
    invoke-static {v6, v3}, Lta/l;->m(IZ)V

    goto/16 :goto_2

    :cond_c2
    const/16 v5, 0x324

    if-ne v12, v5, :cond_c3

    .line 339
    invoke-static {v2, v3}, Lta/l;->m(IZ)V

    goto/16 :goto_2

    :cond_c3
    const/16 v2, 0x325

    if-ne v12, v2, :cond_c4

    const/16 v2, 0xa4

    .line 340
    invoke-static {v2, v3}, Lta/l;->m(IZ)V

    goto/16 :goto_2

    :cond_c4
    const/16 v2, 0x32a

    if-ne v12, v2, :cond_c5

    const/16 v2, 0x55

    .line 341
    invoke-static {v2, v3}, Lta/l;->m(IZ)V

    goto/16 :goto_2

    :cond_c5
    const/16 v2, 0x32b

    if-ne v12, v2, :cond_c7

    .line 342
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-boolean v2, v2, Lwa/s;->p:Z

    if-eqz v2, :cond_c6

    const/16 v2, 0x7f

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lta/l;->m(IZ)V

    goto :goto_22

    :cond_c6
    const/16 v2, 0x7e

    const/4 v3, 0x0

    .line 343
    invoke-static {v2, v3}, Lta/l;->m(IZ)V

    .line 344
    :goto_22
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v3

    iget-boolean v3, v3, Lwa/s;->p:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, v2, Lwa/s;->p:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    goto/16 :goto_2

    :cond_c7
    const/16 v2, 0x326

    const-wide/16 v5, 0xb4

    .line 345
    const-string v3, "action"

    if-ne v12, v2, :cond_cb

    .line 346
    :try_start_18
    const-string v2, "api"

    invoke-virtual {v11, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2

    .line 347
    invoke-virtual {v11, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->e()I

    move-result v3

    .line 348
    const-string v4, "keycode"

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->e()I

    move-result v4

    if-nez v3, :cond_c9

    const/4 v11, 0x1

    if-ne v2, v11, :cond_c8

    .line 349
    invoke-static {v4, v11}, Lta/l;->m(IZ)V

    goto/16 :goto_2

    .line 350
    :cond_c8
    invoke-static {v4, v11}, Lta/l;->n(IZ)V

    goto/16 :goto_2

    :cond_c9
    const/4 v11, 0x1

    if-lez v3, :cond_1

    const/4 v12, 0x4

    if-ge v3, v12, :cond_1

    :goto_23
    if-lez v3, :cond_1

    if-ne v2, v11, :cond_ca

    const/4 v11, 0x0

    .line 351
    invoke-static {v4, v11}, Lta/l;->m(IZ)V

    goto :goto_24

    :cond_ca
    const/4 v11, 0x0

    .line 352
    invoke-static {v4, v11}, Lta/l;->n(IZ)V

    .line 353
    :goto_24
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1

    const/4 v11, -0x1

    add-int/2addr v3, v11

    const/4 v11, 0x1

    goto :goto_23

    :cond_cb
    const/16 v2, 0x327

    .line 354
    const-string v13, "x"

    if-ne v12, v2, :cond_cf

    .line 355
    :try_start_19
    const-string v2, "api"

    invoke-virtual {v11, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2

    .line 356
    invoke-virtual {v11, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->e()I

    move-result v3

    .line 357
    invoke-virtual {v11, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->e()I

    move-result v4

    .line 358
    invoke-virtual {v11, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v11

    invoke-virtual {v11}, Lz7/p;->e()I

    move-result v11

    if-nez v3, :cond_cd

    const/4 v12, 0x1

    if-ne v2, v12, :cond_cc

    .line 359
    invoke-static {v4, v11, v12}, Lta/l;->o(IIZ)V

    goto/16 :goto_2

    .line 360
    :cond_cc
    invoke-static {v4, v11, v12}, Lta/l;->p(IIZ)V

    goto/16 :goto_2

    :cond_cd
    const/4 v12, 0x1

    if-lez v3, :cond_1

    const/4 v13, 0x4

    if-ge v3, v13, :cond_1

    :goto_25
    if-lez v3, :cond_1

    if-ne v2, v12, :cond_ce

    const/4 v12, 0x0

    .line 361
    invoke-static {v4, v11, v12}, Lta/l;->o(IIZ)V

    goto :goto_26

    :cond_ce
    const/4 v12, 0x0

    .line 362
    invoke-static {v4, v11, v12}, Lta/l;->p(IIZ)V

    .line 363
    :goto_26
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    const/4 v12, -0x1

    add-int/2addr v3, v12

    const/4 v12, 0x1

    goto :goto_25

    :cond_cf
    const/16 v2, 0x4b

    if-ne v12, v2, :cond_d1

    .line 364
    invoke-virtual {v11, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2

    .line 365
    invoke-virtual {v11, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->e()I

    move-result v3

    .line 366
    invoke-virtual {v11, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->e()I

    move-result v4

    if-nez v2, :cond_d0

    goto/16 :goto_2

    :cond_d0
    if-lez v2, :cond_1

    const/4 v5, 0x4

    if-ge v2, v5, :cond_1

    :goto_27
    if-lez v2, :cond_1

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input tap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v11, v6

    invoke-static {v11}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v5

    invoke-virtual {v5}, Lv9/e;->l0()Landroidx/room/s;

    const/4 v5, -0x1

    add-int/2addr v2, v5

    goto :goto_27

    :cond_d1
    const/16 v2, 0x12c

    if-ne v12, v2, :cond_d2

    const/4 v2, 0x1

    .line 368
    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "am kill-all"

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v2

    const/4 v3, 0x0

    .line 369
    invoke-virtual {v2, v3}, Ls1/g;->e0(Lua/i6;)V

    .line 370
    invoke-static/range {v17 .. v17}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d2
    const/16 v2, 0x12d

    if-ne v12, v2, :cond_d4

    .line 371
    iget-boolean v2, v1, Lcom/yunpan/appmanage/service/AccService;->P0:Z

    if-eqz v2, :cond_d3

    goto/16 :goto_2

    :cond_d3
    const/4 v2, 0x1

    .line 372
    iput-boolean v2, v1, Lcom/yunpan/appmanage/service/AccService;->P0:Z

    .line 373
    const-string v2, "\u5185\u5b58\u6e05\u7406\u4e2d"

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lfa/e;->e()Lfa/e;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lfa/e;->g(Lcom/yunpan/appmanage/service/AccService;)V

    .line 375
    invoke-static/range {v17 .. v17}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 376
    iput-boolean v2, v1, Lcom/yunpan/appmanage/service/AccService;->P0:Z

    goto/16 :goto_2

    :cond_d4
    const/16 v2, 0x12e

    if-ne v12, v2, :cond_d6

    .line 377
    iget-boolean v2, v1, Lcom/yunpan/appmanage/service/AccService;->P0:Z

    if-eqz v2, :cond_d5

    goto/16 :goto_2

    :cond_d5
    const/4 v2, 0x1

    .line 378
    iput-boolean v2, v1, Lcom/yunpan/appmanage/service/AccService;->P0:Z

    .line 379
    const-string v2, "\u5185\u5b58\u6e05\u7406\u4e2d"

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lfa/e;->e()Lfa/e;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lfa/e;->f(Lcom/yunpan/appmanage/service/AccService;)V

    .line 381
    invoke-static/range {v17 .. v17}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 382
    iput-boolean v2, v1, Lcom/yunpan/appmanage/service/AccService;->P0:Z

    goto/16 :goto_2

    :cond_d6
    const/16 v2, 0x140

    if-ne v12, v2, :cond_d9

    .line 383
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_d7

    goto/16 :goto_2

    .line 384
    :cond_d7
    const-string v3, "com.android.systemui"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    goto/16 :goto_2

    .line 385
    :cond_d8
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bumptech/glide/c;->O(Lcom/yunpan/appmanage/service/AccService;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d9
    const/16 v2, 0x258

    if-ne v12, v2, :cond_da

    goto/16 :goto_2

    :cond_da
    const/16 v2, 0x259

    if-ne v12, v2, :cond_db

    .line 386
    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_db
    const/16 v2, 0x25a

    if-ne v12, v2, :cond_dc

    .line 387
    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->x(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    goto/16 :goto_2

    :cond_dc
    const/16 v2, 0x25b

    if-ne v12, v2, :cond_dd

    .line 388
    :try_start_1a
    const-string v2, "time"

    invoke-virtual {v11, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    goto/16 :goto_2

    :cond_dd
    const/16 v2, 0x262

    if-ne v12, v2, :cond_de

    .line 389
    :try_start_1b
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lif/a;->y0(Landroid/content/ContextWrapper;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_de
    const/16 v2, 0x263

    if-ne v12, v2, :cond_df

    .line 390
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.settings.SETTINGS"

    const-string v4, "com.android.tv.settings.MainSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lif/a;->y0(Landroid/content/ContextWrapper;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_df
    const/16 v2, 0x265

    if-ne v12, v2, :cond_e0

    .line 391
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lif/a;->y0(Landroid/content/ContextWrapper;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_e0
    const/16 v2, 0x264

    if-ne v12, v2, :cond_e1

    .line 392
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lif/a;->y0(Landroid/content/ContextWrapper;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_e1
    const/16 v2, 0x49

    if-ne v12, v2, :cond_e2

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "am force-stop \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v2

    const/4 v3, 0x0

    .line 394
    invoke-virtual {v2, v3}, Ls1/g;->e0(Lua/i6;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1

    goto/16 :goto_2

    :cond_e2
    const/16 v2, 0x4a

    if-ne v12, v2, :cond_e6

    .line 395
    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 396
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    invoke-static/range {p0 .. p0}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e3

    goto/16 :goto_2

    .line 399
    :cond_e3
    const-string v3, "com.android."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e4

    const-string v3, "moe.shizuku.privileged.api"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    :cond_e4
    const/4 v2, 0x1

    goto :goto_28

    .line 400
    :cond_e5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "am force-stop \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v2

    const/4 v3, 0x0

    .line 401
    invoke-virtual {v2, v3}, Ls1/g;->e0(Lua/i6;)V

    goto/16 :goto_2

    .line 402
    :goto_28
    invoke-virtual {v1, v2}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    goto/16 :goto_2

    :cond_e6
    const/16 v2, 0x2f2

    if-ne v12, v2, :cond_e7

    .line 403
    :try_start_1d
    const-string v2, "3\u79d2\u540e\u505c\u6b62\u81ea\u52a8\u5316"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1

    const-wide/16 v2, 0xbb8

    .line 404
    :try_start_1e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a

    .line 405
    :catch_a
    :try_start_1f
    iget-object v2, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_e7
    const/16 v2, 0x2bc

    if-ne v12, v2, :cond_e8

    .line 406
    invoke-static/range {p0 .. p0}, Lqf/c;->U(Landroid/accessibilityservice/AccessibilityService;)V

    goto/16 :goto_2

    :cond_e8
    const/16 v2, 0x2c2

    if-ne v12, v2, :cond_f2

    .line 407
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1

    const/16 v3, 0x15

    if-lt v2, v3, :cond_f1

    .line 408
    :try_start_20
    invoke-static/range {p0 .. p0}, Lt0/e;->p(Lcom/yunpan/appmanage/service/AccService;)Ljava/util/List;

    move-result-object v2

    .line 409
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 410
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    if-eqz v5, :cond_f0

    :try_start_21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lt0/e;->l(Ljava/lang/Object;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v5

    .line 411
    invoke-static {v5}, Lt0/e;->b(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_e9

    .line 412
    const-string v6, "\u5e94\u7528,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2a
    const/4 v12, 0x3

    :goto_2b
    const/4 v14, 0x7

    goto :goto_2c

    :catch_b
    move-exception v0

    move-object v2, v0

    const/4 v15, -0x2

    goto/16 :goto_2f

    .line 413
    :cond_e9
    invoke-static {v5}, Lt0/e;->b(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v6

    const/4 v11, 0x2

    if-ne v6, v11, :cond_ea

    .line 414
    const-string v6, "\u8f93\u5165\u6cd5,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2a

    .line 415
    :cond_ea
    invoke-static {v5}, Lt0/e;->b(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v6

    const/4 v12, 0x4

    if-ne v6, v12, :cond_eb

    .line 416
    const-string v6, "\u65e0\u969c\u788d\u60ac\u6d6e\u7a97,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2a

    .line 417
    :cond_eb
    invoke-static {v5}, Lt0/e;->b(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v6

    const/4 v12, 0x3

    if-ne v6, v12, :cond_ec

    .line 418
    const-string v6, "\u7cfb\u7edf\u60ac\u6d6e\u7a97,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2b

    .line 419
    :cond_ec
    invoke-static {v5}, Lt0/e;->b(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v6

    const/4 v14, 0x7

    if-ne v6, v14, :cond_ed

    .line 420
    const-string v6, "\u7cfb\u7edf\u5173\u8054\u7a97,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2c

    .line 421
    :cond_ed
    invoke-static {v5}, Lt0/e;->b(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v6

    const/4 v11, 0x5

    if-ne v6, v11, :cond_ee

    .line 422
    const-string v6, "\u5206\u5c4f,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2c

    .line 423
    :cond_ee
    invoke-static {v5}, Lt0/e;->b(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v6

    const/4 v11, 0x6

    if-ne v6, v11, :cond_ef

    .line 424
    const-string v6, "\u83dc\u5355,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2c

    .line 425
    :cond_ef
    const-string v6, "\u672a\u77e5\u7c7b\u578b,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    :goto_2c
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 427
    invoke-static {v5, v6}, Lt0/e;->u(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/graphics/Rect;)V

    .line 428
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "),"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    invoke-static {v5}, Lt0/e;->k(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 430
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_b

    goto/16 :goto_29

    .line 431
    :cond_f0
    :try_start_22
    new-instance v2, Lz7/s;

    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 432
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v3, "size"

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 434
    const-string v3, "time"

    const/16 v4, 0x2710

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 435
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_d

    const/4 v15, -0x2

    .line 436
    :try_start_23
    iput v15, v3, Landroid/os/Message;->what:I

    .line 437
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 438
    iget-object v2, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c

    :goto_2d
    const/4 v2, 0x1

    const/16 v3, 0x258

    const/4 v4, 0x0

    const/16 v5, 0xff

    const/4 v13, -0x1

    goto/16 :goto_3

    :catch_c
    move-exception v0

    :goto_2e
    move-object v2, v0

    goto :goto_2f

    :catch_d
    move-exception v0

    const/4 v15, -0x2

    goto :goto_2e

    .line 439
    :goto_2f
    :try_start_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u83b7\u53d6\u5931\u8d25\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    goto :goto_2d

    :cond_f1
    const/4 v15, -0x2

    goto :goto_2d

    :cond_f2
    const/4 v15, -0x2

    const/16 v16, 0x2

    const/16 v2, 0x2bd

    if-ne v12, v2, :cond_f4

    .line 440
    invoke-static/range {p0 .. p0}, Lta/l;->a(Lcom/yunpan/appmanage/service/AccService;)V

    :cond_f3
    :goto_30
    const/4 v2, 0x1

    const/16 v3, 0x258

    const/4 v4, 0x0

    const/16 v5, 0xff

    :goto_31
    const/4 v13, -0x1

    goto/16 :goto_53

    :cond_f4
    const/16 v2, 0x2be

    if-ne v12, v2, :cond_f5

    goto :goto_30

    :cond_f5
    const/16 v2, 0x2bf

    if-ne v12, v2, :cond_fb

    .line 441
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 442
    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v3

    .line 443
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1

    .line 444
    :try_start_25
    const-string v4, "isBfb"

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->b()Z

    move-result v4
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_e

    goto :goto_32

    :catch_e
    nop

    const/4 v4, 0x0

    :goto_32
    if-eqz v2, :cond_f3

    .line 445
    :try_start_26
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f3

    .line 446
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_f6

    .line 447
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f6

    goto :goto_33

    .line 448
    :cond_f6
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_f7

    const/16 v6, 0x10

    .line 449
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    goto :goto_33

    :cond_f7
    const/4 v6, 0x0

    .line 450
    :cond_f8
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-nez v5, :cond_f9

    goto :goto_33

    .line 451
    :cond_f9
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v11

    if-eqz v11, :cond_fa

    const/16 v11, 0x10

    .line 452
    invoke-virtual {v5, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    goto :goto_33

    :cond_fa
    const/4 v11, 0x1

    add-int/2addr v6, v11

    const/4 v11, 0x6

    if-lt v6, v11, :cond_f8

    goto :goto_33

    :cond_fb
    const/16 v2, 0x2c0

    if-ne v12, v2, :cond_100

    .line 453
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_f3

    .line 454
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lb1/o;->k(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f3

    .line 455
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f3

    .line 456
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 457
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_fc

    const/16 v4, 0x10

    .line 458
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    goto :goto_34

    :cond_fc
    const/4 v4, 0x0

    .line 459
    :cond_fd
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-nez v3, :cond_fe

    const/16 v5, 0x10

    goto :goto_34

    .line 460
    :cond_fe
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_ff

    const/16 v5, 0x10

    .line 461
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    goto :goto_34

    :cond_ff
    const/16 v5, 0x10

    const/4 v6, 0x1

    add-int/2addr v4, v6

    const/4 v6, 0x6

    if-lt v4, v6, :cond_fd

    goto :goto_34

    :cond_100
    const/16 v2, 0x2ee

    if-ne v12, v2, :cond_101

    .line 462
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "type1"

    invoke-virtual {v11, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type2"

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key"

    .line 463
    invoke-virtual {v11, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v5

    invoke-virtual {v5}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v11, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v6

    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v6

    .line 464
    invoke-static {v2, v3, v4, v5, v6}, Lcom/bumptech/glide/d;->D(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_101
    const/16 v2, 0x2ef

    if-ne v12, v2, :cond_102

    .line 465
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v2, "type1"

    invoke-virtual {v11, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v23

    const-string v2, "type2"

    invoke-virtual {v11, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v24

    const-string v2, "key"

    .line 466
    invoke-virtual {v11, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v25

    const-string v2, "value"

    invoke-virtual {v11, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v26

    const-string v2, "value_if"

    invoke-virtual {v11, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v27

    const-string v2, "value_else"

    invoke-virtual {v11, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v28

    .line 467
    invoke-static/range {v22 .. v28}, Lcom/bumptech/glide/d;->E(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_102
    const/16 v2, 0x266

    if-ne v12, v2, :cond_103

    .line 468
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_f3

    const/4 v2, 0x6

    .line 469
    invoke-virtual {v1, v2}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto/16 :goto_30

    :cond_103
    const/16 v2, 0xc9

    if-lt v12, v2, :cond_105

    const/16 v2, 0xcb

    if-gt v12, v2, :cond_105

    const/4 v2, 0x1

    .line 470
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v18, v3, v4

    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v3

    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    const/16 v3, 0xc9

    if-ne v12, v3, :cond_104

    .line 471
    new-array v3, v2, [Ljava/lang/String;

    aput-object v18, v3, v4

    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v2

    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    goto/16 :goto_30

    :cond_104
    const/16 v2, 0xcb

    if-ne v12, v2, :cond_f3

    const/4 v2, 0x1

    .line 472
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v18, v3, v4

    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v3

    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 473
    new-array v3, v2, [Ljava/lang/String;

    aput-object v18, v3, v4

    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v2

    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    goto/16 :goto_30

    :cond_105
    const/16 v2, 0xcc

    if-ne v12, v2, :cond_106

    const/4 v2, 0x1

    .line 474
    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "input keyevent  --longpress 79"

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v2

    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    goto/16 :goto_30

    :cond_106
    const/16 v2, 0x25c

    if-ne v12, v2, :cond_107

    .line 475
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_f3

    const/16 v2, 0x9

    .line 476
    invoke-virtual {v1, v2}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto/16 :goto_30

    :cond_107
    const/16 v2, 0x4c

    if-ne v12, v2, :cond_10a

    .line 477
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_108

    .line 478
    const-string v1, "\u622a\u5c4f\u5931\u8d25\uff1a\u6ca1\u6709\u5185\u90e8\u5b58\u50a8\u5361"

    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    return-void

    .line 479
    :cond_108
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lfa/e;->e()Lfa/e;

    move-result-object v4

    invoke-virtual {v4}, Lfa/e;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1

    .line 480
    :try_start_27
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_f

    .line 481
    :catch_f
    :try_start_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screencap -p \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/\u622a\u5c4f"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".png\'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    move-result-object v2

    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/s;->q()Z

    move-result v2

    if-eqz v2, :cond_109

    .line 482
    const-string v2, "\u622a\u5c4f\u5df2\u4fdd\u5b58\u5230 Download \u76ee\u5f55"

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 483
    :cond_109
    const-string v2, "\u622a\u5c4f\u5931\u8d25"

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_10a
    const/16 v2, 0x282

    if-ne v12, v2, :cond_10c

    .line 484
    invoke-static {}, Lya/e;->b()Lya/e;

    move-result-object v2

    invoke-static {}, Lya/e;->b()Lya/e;

    move-result-object v3

    iget-boolean v3, v3, Lya/e;->B:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, v2, Lya/e;->B:Z

    .line 485
    invoke-static/range {p0 .. p0}, Lq4/a;->n(Landroid/content/Context;)Lz7/s;

    move-result-object v2

    .line 486
    const-string v3, "lock"

    invoke-static {}, Lya/e;->b()Lya/e;

    move-result-object v4

    iget-boolean v4, v4, Lya/e;->B:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 487
    invoke-static {v1, v2}, Lq4/a;->O(Landroid/content/Context;Lz7/s;)V

    .line 488
    invoke-static {}, Lya/e;->b()Lya/e;

    move-result-object v2

    iget-boolean v2, v2, Lya/e;->B:Z

    if-eqz v2, :cond_10b

    const-string v2, "\u9501\u5b9a"

    goto :goto_35

    :cond_10b
    const-string v2, "\u89e3\u9501"

    :goto_35
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    goto/16 :goto_30

    :cond_10c
    const/16 v2, 0x25d

    if-ne v12, v2, :cond_10d

    .line 489
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_f3

    .line 490
    invoke-static {v1, v11}, Lwa/b;->b(Lcom/yunpan/appmanage/service/AccService;Lz7/s;)V

    goto/16 :goto_30

    :cond_10d
    const/16 v2, 0x25e

    if-ne v12, v2, :cond_10f

    .line 491
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_f3

    .line 492
    invoke-virtual {v11, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2

    .line 493
    invoke-virtual {v11, v13}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->e()I

    move-result v3

    .line 494
    invoke-virtual {v11, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->e()I

    move-result v4

    if-nez v2, :cond_10e

    int-to-float v2, v3

    int-to-float v3, v4

    const-wide/16 v4, 0x384

    .line 495
    invoke-static {v1, v2, v3, v4, v5}, Lwa/b;->a(Lcom/yunpan/appmanage/service/AccService;FFJ)V

    goto/16 :goto_30

    :cond_10e
    if-lez v2, :cond_f3

    const/4 v11, 0x4

    if-ge v2, v11, :cond_f3

    :goto_36
    if-lez v2, :cond_f3

    int-to-float v11, v3

    int-to-float v12, v4

    const-wide/16 v13, 0x32

    .line 496
    invoke-static {v1, v11, v12, v13, v14}, Lwa/b;->a(Lcom/yunpan/appmanage/service/AccService;FFJ)V

    .line 497
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    const/4 v11, -0x1

    add-int/2addr v2, v11

    goto :goto_36

    :cond_10f
    const/16 v2, 0x26e

    if-ne v12, v2, :cond_110

    .line 498
    invoke-virtual {v11, v14}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2

    invoke-static {v2}, Lta/l;->q(I)V

    goto/16 :goto_30

    :cond_110
    const/16 v2, 0x26c

    if-ne v12, v2, :cond_113

    .line 499
    invoke-static/range {p0 .. p0}, Lta/l;->h(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xff

    if-lt v2, v3, :cond_111

    .line 500
    const-string v1, "\u5c4f\u5e55\u4eae\u5ea6\u5df2\u6700\u5927"

    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    return-void

    :cond_111
    add-int/lit8 v3, v2, 0x19

    const/16 v5, 0xff

    if-le v3, v5, :cond_112

    .line 501
    const-string v2, "\u5c4f\u5e55\u4eae\u5ea6\u5df2\u6700\u5927"

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    const/16 v3, 0xff

    goto :goto_37

    .line 502
    :cond_112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u4eae\u5ea6\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v4, v3

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v4, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v4, v4, v6

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 503
    :goto_37
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    invoke-static {v3}, Lta/l;->q(I)V

    :goto_38
    const/4 v2, 0x1

    const/16 v3, 0x258

    const/4 v4, 0x0

    goto/16 :goto_31

    :cond_113
    const/16 v5, 0xff

    const/16 v2, 0x26d

    if-ne v12, v2, :cond_116

    .line 505
    invoke-static/range {p0 .. p0}, Lta/l;->h(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xa

    if-gt v2, v3, :cond_114

    .line 506
    const-string v1, "\u4eae\u5ea6\u8fc7\u4f4e\uff1a4%"

    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    return-void

    :cond_114
    add-int/lit8 v2, v2, -0x19

    const/16 v3, 0xa

    if-ge v2, v3, :cond_115

    .line 507
    const-string v2, "\u4eae\u5ea6\u8fc7\u4f4e\uff1a4%"

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    const/16 v2, 0xa

    goto :goto_39

    .line 508
    :cond_115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u4eae\u5ea6\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v4, v2

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v4, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v4, v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 509
    :goto_39
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    invoke-static {v2}, Lta/l;->q(I)V

    goto :goto_38

    :cond_116
    const/16 v2, 0x277

    if-eq v12, v2, :cond_117

    const/16 v2, 0x278

    if-ne v12, v2, :cond_118

    :cond_117
    const/4 v13, -0x1

    goto/16 :goto_3d

    :cond_118
    const/16 v2, 0x276

    if-ne v12, v2, :cond_119

    .line 511
    iget-object v2, v1, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    invoke-virtual {v11, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->e()I

    move-result v3

    const-string v4, "volume"

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->e()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_38

    :cond_119
    const/16 v2, 0x279

    if-ne v12, v2, :cond_120

    .line 512
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/k0;->b()Lcom/yunpan/appmanage/carsdk/k0;

    move-result-object v2

    iget-object v2, v2, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    if-nez v2, :cond_11a

    .line 513
    const-string v2, "\u65e0\u6cd5\u8fde\u63a5car\u97f3\u9891"

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    goto/16 :goto_38

    .line 514
    :cond_11a
    const-string v2, "setType"

    invoke-virtual {v11, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2

    .line 515
    invoke-virtual {v11, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->e()I

    move-result v3

    if-nez v2, :cond_11b

    .line 516
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/k0;->b()Lcom/yunpan/appmanage/carsdk/k0;

    move-result-object v2

    const-string v4, "volume"

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->e()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    const/4 v13, -0x1

    goto :goto_3b

    .line 517
    :cond_11b
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/k0;->b()Lcom/yunpan/appmanage/carsdk/k0;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/yunpan/appmanage/carsdk/k0;->f(I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v2, v6, :cond_11d

    .line 518
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/k0;->b()Lcom/yunpan/appmanage/carsdk/k0;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/yunpan/appmanage/carsdk/k0;->d(I)I

    move-result v2

    if-ne v4, v2, :cond_11c

    .line 519
    const-string v2, "\u97f3\u91cf\u5df2\u6700\u5927"

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    goto/16 :goto_38

    :cond_11c
    const/4 v2, 0x1

    add-int/2addr v4, v2

    const/4 v13, -0x1

    goto :goto_3a

    .line 520
    :cond_11d
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/k0;->b()Lcom/yunpan/appmanage/carsdk/k0;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/yunpan/appmanage/carsdk/k0;->e(I)I

    move-result v2

    if-ne v4, v2, :cond_11e

    .line 521
    const-string v2, "\u97f3\u91cf\u5df2\u6700\u5c0f"

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    goto/16 :goto_38

    :cond_11e
    const/4 v13, -0x1

    add-int/2addr v4, v13

    .line 522
    :goto_3a
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/k0;->b()Lcom/yunpan/appmanage/carsdk/k0;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    :cond_11f
    :goto_3b
    const/4 v2, 0x1

    const/16 v3, 0x258

    :goto_3c
    const/4 v4, 0x0

    goto/16 :goto_53

    :cond_120
    const/4 v13, -0x1

    const/16 v2, 0x2f1

    if-ne v12, v2, :cond_121

    .line 523
    const-string v2, "level"

    invoke-virtual {v11, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tag"

    invoke-virtual {v11, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v3

    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v4

    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yunpan/appmanage/util/MyLog;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_121
    const/16 v2, 0x2f0

    if-ne v12, v2, :cond_122

    .line 524
    invoke-static {}, Lta/l;->j()V

    goto :goto_3b

    :cond_122
    const/16 v2, 0x2f3

    if-ne v12, v2, :cond_123

    .line 525
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_1

    const/16 v3, 0x12

    if-lt v2, v3, :cond_11f

    .line 526
    :try_start_29
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->f:Lcom/yunpan/appmanage/service/StartService;

    invoke-virtual {v2}, Lcom/yunpan/appmanage/service/StartService;->c()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_10

    goto :goto_3b

    :catch_10
    move-exception v0

    move-object v2, v0

    .line 527
    :try_start_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u51fa\u9519\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    goto :goto_3b

    :cond_123
    const/16 v2, 0x2c1

    if-ne v12, v2, :cond_11f

    .line 528
    invoke-static/range {p0 .. p0}, Lta/l;->b(Lcom/yunpan/appmanage/service/AccService;)V

    goto :goto_3b

    .line 529
    :goto_3d
    invoke-virtual {v11, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v2

    invoke-virtual {v2}, Lz7/p;->e()I

    move-result v2

    const/16 v3, 0x277

    if-ne v12, v3, :cond_124

    const/4 v3, 0x1

    goto :goto_3e

    :cond_124
    const/4 v3, 0x0

    :goto_3e
    invoke-static {v1, v2, v3}, Lta/l;->r(Lcom/yunpan/appmanage/service/AccService;IZ)V

    goto :goto_3b

    .line 530
    :goto_3f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_11f

    .line 531
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "media_session"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->f(Ljava/lang/Object;)Landroid/media/session/MediaSessionManager;

    move-result-object v2

    .line 532
    invoke-static {v2}, Lt0/e;->n(Landroid/media/session/MediaSessionManager;)Ljava/util/List;

    move-result-object v2

    .line 533
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_125
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    move-result-object v3

    .line 534
    invoke-static {v3}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v14

    invoke-virtual {v14}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_125

    const/16 v2, 0x1e

    if-ne v12, v2, :cond_126

    .line 535
    invoke-static {v3}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->A(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 536
    :cond_126
    invoke-static {v3}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->B(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 537
    :goto_40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_11f

    .line 538
    invoke-static {}, Lta/l;->g()Landroid/media/session/MediaController;

    move-result-object v2

    if-nez v2, :cond_127

    goto/16 :goto_3b

    .line 539
    :cond_127
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->y:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_128

    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->y:Ljava/util/Set;

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_128

    goto/16 :goto_3b

    .line 540
    :cond_128
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v3

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lwa/s;->d:Ljava/lang/String;

    .line 541
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V

    const/16 v3, 0x1c7

    if-ne v12, v3, :cond_129

    .line 542
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->A(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 543
    :cond_129
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->B(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 544
    :goto_41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_11f

    .line 545
    invoke-static {}, Lta/l;->f()Landroid/media/session/MediaController;

    move-result-object v2

    if-nez v2, :cond_12a

    goto/16 :goto_3b

    .line 546
    :cond_12a
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->y:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12b

    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->y:Ljava/util/Set;

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    goto/16 :goto_3b

    .line 547
    :cond_12b
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v3

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lwa/s;->d:Ljava/lang/String;

    const/16 v3, 0x1c

    if-ne v12, v3, :cond_12c

    .line 548
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->A(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 549
    :cond_12c
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->B(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 550
    :goto_42
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_11f

    .line 551
    invoke-static {}, Lta/l;->f()Landroid/media/session/MediaController;

    move-result-object v2

    if-nez v2, :cond_12d

    goto/16 :goto_3b

    .line 552
    :cond_12d
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    if-nez v3, :cond_12e

    goto/16 :goto_3b

    .line 553
    :cond_12e
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v3

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lwa/s;->d:Ljava/lang/String;

    const/16 v3, 0x1c6

    if-ne v12, v3, :cond_12f

    .line 554
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-static {v3}, Lt0/e;->c(Landroid/media/session/PlaybackState;)J

    move-result-wide v3

    const-wide/16 v11, 0x4e20

    add-long/2addr v3, v11

    goto :goto_43

    :cond_12f
    const/16 v3, 0x1c4

    if-ne v12, v3, :cond_130

    .line 555
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-static {v3}, Lt0/e;->c(Landroid/media/session/PlaybackState;)J

    move-result-wide v3

    add-long v3, v3, v24

    goto :goto_43

    :cond_130
    const/16 v3, 0x1c5

    if-ne v12, v3, :cond_131

    .line 556
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-static {v3}, Lt0/e;->c(Landroid/media/session/PlaybackState;)J

    move-result-wide v3

    sub-long v3, v3, v24

    goto :goto_43

    :cond_131
    move-wide/from16 v3, v26

    :goto_43
    cmp-long v6, v3, v26

    if-gez v6, :cond_132

    move-wide/from16 v3, v26

    .line 557
    :cond_132
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lt0/e;->r(Landroid/media/session/MediaController$TransportControls;J)V

    goto/16 :goto_3b

    .line 558
    :goto_44
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_11f

    .line 559
    invoke-static {}, Lta/l;->f()Landroid/media/session/MediaController;

    move-result-object v2

    if-nez v2, :cond_133

    goto/16 :goto_3b

    .line 560
    :cond_133
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    if-nez v3, :cond_134

    goto/16 :goto_3b

    .line 561
    :cond_134
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v3

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lwa/s;->d:Ljava/lang/String;

    const/16 v3, 0x1c2

    if-ne v12, v3, :cond_135

    .line 562
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->q(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 563
    :cond_135
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->C(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 564
    :goto_45
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_11f

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    if-eqz v2, :cond_11f

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11f

    .line 565
    invoke-static {}, Lta/l;->d()Landroid/media/session/MediaController;

    move-result-object v2

    const/16 v3, 0x1b8

    if-ne v12, v3, :cond_136

    .line 566
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->q(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 567
    :cond_136
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->C(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 568
    :goto_46
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_11f

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    if-eqz v2, :cond_11f

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11f

    .line 569
    invoke-static {}, Lta/l;->d()Landroid/media/session/MediaController;

    move-result-object v2

    const/16 v3, 0x1bc

    if-ne v12, v3, :cond_137

    .line 570
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-static {v3}, Lt0/e;->c(Landroid/media/session/PlaybackState;)J

    move-result-wide v3

    const-wide/16 v11, 0x4e20

    add-long/2addr v3, v11

    goto :goto_47

    :cond_137
    const/16 v3, 0x1ba

    if-ne v12, v3, :cond_138

    .line 571
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-static {v3}, Lt0/e;->c(Landroid/media/session/PlaybackState;)J

    move-result-wide v3

    add-long v3, v3, v24

    goto :goto_47

    :cond_138
    const/16 v3, 0x1bb

    if-ne v12, v3, :cond_139

    .line 572
    invoke-static {v2}, Lt0/e;->g(Landroid/media/session/MediaController;)Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-static {v3}, Lt0/e;->c(Landroid/media/session/PlaybackState;)J

    move-result-wide v3

    sub-long v3, v3, v24

    goto :goto_47

    :cond_139
    move-wide/from16 v3, v26

    :goto_47
    cmp-long v6, v3, v26

    if-gez v6, :cond_13a

    move-wide/from16 v3, v26

    .line 573
    :cond_13a
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lt0/e;->r(Landroid/media/session/MediaController$TransportControls;J)V

    goto/16 :goto_3b

    .line 574
    :goto_48
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_11f

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    if-eqz v2, :cond_11f

    .line 575
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    move-result-object v3

    .line 576
    invoke-static {v3}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    move-result-object v14

    invoke-virtual {v14}, Lz7/p;->i()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13b

    const/16 v2, 0x16

    if-ne v12, v2, :cond_13c

    .line 577
    invoke-static {v3}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->A(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 578
    :cond_13c
    invoke-static {v3}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->B(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 579
    :goto_49
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_11f

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    if-eqz v2, :cond_11f

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11f

    .line 580
    invoke-static {}, Lta/l;->e()Landroid/media/session/MediaController;

    move-result-object v2

    if-nez v2, :cond_13d

    goto/16 :goto_3b

    .line 581
    :cond_13d
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->x:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13e

    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->x:Ljava/util/Set;

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13e

    goto/16 :goto_3b

    :cond_13e
    const/16 v3, 0x1bd

    if-ne v12, v3, :cond_13f

    .line 582
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->A(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 583
    :cond_13f
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->B(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 584
    :goto_4a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_11f

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    if-eqz v2, :cond_11f

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11f

    .line 585
    invoke-static {}, Lta/l;->d()Landroid/media/session/MediaController;

    move-result-object v2

    .line 586
    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->x:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_140

    invoke-static {}, Lwa/u;->a()Lwa/u;

    move-result-object v3

    iget-object v3, v3, Lwa/u;->x:Ljava/util/Set;

    invoke-static {v2}, Lt0/e;->m(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_140

    goto/16 :goto_3b

    :cond_140
    const/16 v3, 0x14

    if-ne v12, v3, :cond_141

    .line 587
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->A(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 588
    :cond_141
    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->B(Landroid/media/session/MediaController$TransportControls;)V

    goto/16 :goto_3b

    .line 589
    :goto_4b
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_142

    .line 590
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    iget-object v4, v4, Lwa/s;->b:Ljava/util/List;

    if-eqz v4, :cond_143

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v4

    iget-object v4, v4, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_143

    .line 591
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->B(Landroid/media/session/MediaController$TransportControls;)V

    :cond_142
    :goto_4c
    const/4 v2, 0x1

    goto/16 :goto_3c

    .line 592
    :cond_143
    invoke-static {v1, v2}, Lta/l;->c(Lcom/yunpan/appmanage/service/AccService;I)V

    goto :goto_4c

    .line 593
    :goto_4d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_145

    .line 594
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    if-eqz v2, :cond_144

    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_144

    .line 595
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    iget-object v2, v2, Lwa/s;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->e(Ljava/lang/Object;)Landroid/media/session/MediaController;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    invoke-static {v2}, Lt0/e;->A(Landroid/media/session/MediaController$TransportControls;)V

    :goto_4e
    const/4 v2, 0x1

    goto :goto_53

    :cond_144
    const/4 v4, 0x0

    .line 596
    invoke-static {v1, v6}, Lta/l;->c(Lcom/yunpan/appmanage/service/AccService;I)V

    goto :goto_4e

    :cond_145
    const/4 v4, 0x0

    goto :goto_4e

    .line 597
    :goto_4f
    invoke-static {}, Lwa/s;->c()Lwa/s;

    move-result-object v2

    invoke-virtual {v2, v11}, Lwa/s;->m(Lz7/s;)V

    goto :goto_4e

    .line 598
    :goto_50
    iget-object v2, v1, Lcom/yunpan/appmanage/service/AccService;->t0:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_146

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_147

    :cond_146
    const/4 v2, 0x1

    goto :goto_51

    :cond_147
    const/4 v2, 0x1

    goto :goto_52

    .line 599
    :goto_51
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    iput-object v6, v1, Lcom/yunpan/appmanage/service/AccService;->t0:Ljava/util/concurrent/ExecutorService;

    .line 600
    :goto_52
    iget-object v6, v1, Lcom/yunpan/appmanage/service/AccService;->t0:Ljava/util/concurrent/ExecutorService;

    new-instance v14, Lfa/v;

    invoke-direct {v14, v11, v12, v1, v2}, Lfa/v;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-interface {v6, v14}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_1

    :goto_53
    add-int/2addr v10, v2

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    const/16 v4, 0x1b58

    const/16 v5, 0xbb8

    const/16 v14, 0x258

    const/16 v15, 0x1f40

    goto/16 :goto_0

    .line 601
    :goto_54
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_148
    return-void
.end method

.method public static l(Lcom/yunpan/appmanage/service/AccService;Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.DEVICE_POWER"

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    const-string v0, "activity"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/app/ActivityManager;

    .line 24
    .line 25
    const/16 v1, 0x64

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 46
    .line 47
    invoke-static {v2}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v2}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    iget p0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catch_0
    nop

    .line 76
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .line 78
    const/16 v1, 0x15

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    if-lt v0, v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0, p1}, Lg7/d;->g(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    move-object v0, v2

    .line 93
    :goto_1
    if-nez v0, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :cond_4
    if-nez v0, :cond_5

    .line 104
    .line 105
    return-void

    .line 106
    :cond_5
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    const/high16 p1, 0x10200000

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    const/4 p1, 0x1

    .line 115
    invoke-static {p1, p0, v0}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .line 117
    .line 118
    :catch_1
    return-void
.end method

.method public static m(IZ)V
    .locals 19

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    const-string v5, "input"

    .line 10
    .line 11
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroid/hardware/input/InputManager;

    .line 16
    .line 17
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    const-class v6, Landroid/view/InputEvent;

    .line 20
    .line 21
    const-class v7, Landroid/hardware/input/InputManager;

    .line 22
    .line 23
    const/16 v8, 0x21

    .line 24
    .line 25
    if-lt v5, v8, :cond_0

    .line 26
    .line 27
    :try_start_1
    const-string v9, "injectInputEventToTarget"

    .line 28
    .line 29
    new-array v10, v0, [Ljava/lang/Class;

    .line 30
    .line 31
    aput-object v6, v10, v3

    .line 32
    .line 33
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    aput-object v6, v10, v2

    .line 36
    .line 37
    aput-object v6, v10, v1

    .line 38
    .line 39
    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_0
    const-string v9, "injectInputEvent"

    .line 48
    .line 49
    new-array v10, v1, [Ljava/lang/Class;

    .line 50
    .line 51
    aput-object v6, v10, v3

    .line 52
    .line 53
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    aput-object v6, v10, v2

    .line 56
    .line 57
    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    :goto_0
    sget v7, Landroid/hardware/input/InputManager;->INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I

    .line 62
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v17

    .line 67
    new-instance v15, Landroid/view/KeyEvent;

    .line 68
    .line 69
    const/4 v14, 0x0

    .line 70
    const/16 v16, 0x0

    .line 71
    .line 72
    move-object v9, v15

    .line 73
    move-wide/from16 v10, v17

    .line 74
    .line 75
    move-wide/from16 v12, v17

    .line 76
    .line 77
    move-object v1, v15

    .line 78
    move/from16 v15, p0

    .line 79
    .line 80
    invoke-direct/range {v9 .. v16}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 81
    .line 82
    .line 83
    const/4 v9, -0x1

    .line 84
    if-lt v5, v8, :cond_1

    .line 85
    .line 86
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    new-array v12, v0, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object v1, v12, v3

    .line 97
    .line 98
    aput-object v10, v12, v2

    .line 99
    .line 100
    const/4 v10, 0x2

    .line 101
    aput-object v11, v12, v10

    .line 102
    .line 103
    invoke-virtual {v6, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    check-cast v10, Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    const/4 v11, 0x2

    .line 119
    new-array v12, v11, [Ljava/lang/Object;

    .line 120
    .line 121
    aput-object v1, v12, v3

    .line 122
    .line 123
    aput-object v10, v12, v2

    .line 124
    .line 125
    invoke-virtual {v6, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    check-cast v10, Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    :goto_1
    if-nez v10, :cond_2

    .line 136
    .line 137
    return-void

    .line 138
    :cond_2
    if-eqz p1, :cond_4

    .line 139
    .line 140
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    add-int/lit8 v10, v10, 0x32

    .line 145
    .line 146
    int-to-long v10, v10

    .line 147
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 148
    .line 149
    .line 150
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    int-to-long v10, v10

    .line 155
    add-long v17, v17, v10

    .line 156
    .line 157
    const-wide/16 v10, 0x32

    .line 158
    .line 159
    add-long v10, v17, v10

    .line 160
    .line 161
    const/16 v12, 0x80

    .line 162
    .line 163
    invoke-static {v1, v10, v11, v2, v12}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    if-lt v5, v8, :cond_3

    .line 168
    .line 169
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    new-array v13, v0, [Ljava/lang/Object;

    .line 178
    .line 179
    aput-object v10, v13, v3

    .line 180
    .line 181
    aput-object v11, v13, v2

    .line 182
    .line 183
    const/4 v10, 0x2

    .line 184
    aput-object v12, v13, v10

    .line 185
    .line 186
    invoke-virtual {v6, v4, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    const/4 v12, 0x2

    .line 195
    new-array v13, v12, [Ljava/lang/Object;

    .line 196
    .line 197
    aput-object v10, v13, v3

    .line 198
    .line 199
    aput-object v11, v13, v2

    .line 200
    .line 201
    invoke-virtual {v6, v4, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    :cond_4
    :goto_2
    invoke-static {v1, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 209
    .line 210
    .line 211
    move-result-wide v10

    .line 212
    invoke-static {v1, v10, v11, v3}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    if-lt v5, v8, :cond_5

    .line 217
    .line 218
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    new-array v0, v0, [Ljava/lang/Object;

    .line 227
    .line 228
    aput-object v1, v0, v3

    .line 229
    .line 230
    aput-object v5, v0, v2

    .line 231
    .line 232
    const/4 v1, 0x2

    .line 233
    aput-object v7, v0, v1

    .line 234
    .line 235
    invoke-virtual {v6, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Ljava/lang/Boolean;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const/4 v5, 0x2

    .line 250
    new-array v5, v5, [Ljava/lang/Object;

    .line 251
    .line 252
    aput-object v1, v5, v3

    .line 253
    .line 254
    aput-object v0, v5, v2

    .line 255
    .line 256
    invoke-virtual {v6, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Ljava/lang/Boolean;

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    .line 264
    .line 265
    :goto_3
    return-void

    .line 266
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    .line 268
    .line 269
    return-void
.end method

.method public static n(IZ)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/view/KeyEvent;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2, p0}, Landroid/view/KeyEvent;-><init>(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-wide/16 v1, 0x378

    .line 18
    .line 19
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    new-instance p1, Landroid/view/KeyEvent;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {p1, v1, p0}, Landroid/view/KeyEvent;-><init>(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :goto_2
    return-void
.end method

.method public static o(IIZ)V
    .locals 27

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x2

    .line 5
    :try_start_0
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 6
    .line 7
    const-string v5, "input"

    .line 8
    .line 9
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    check-cast v4, Landroid/hardware/input/InputManager;

    .line 14
    .line 15
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    const-class v6, Landroid/view/InputEvent;

    .line 18
    .line 19
    const-class v7, Landroid/hardware/input/InputManager;

    .line 20
    .line 21
    const/16 v8, 0x21

    .line 22
    .line 23
    if-lt v5, v8, :cond_0

    .line 24
    .line 25
    :try_start_1
    const-string v9, "injectInputEventToTarget"

    .line 26
    .line 27
    new-array v10, v0, [Ljava/lang/Class;

    .line 28
    .line 29
    aput-object v6, v10, v2

    .line 30
    .line 31
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    aput-object v6, v10, v1

    .line 34
    .line 35
    aput-object v6, v10, v3

    .line 36
    .line 37
    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_0
    const-string v9, "injectInputEvent"

    .line 46
    .line 47
    new-array v10, v3, [Ljava/lang/Class;

    .line 48
    .line 49
    aput-object v6, v10, v2

    .line 50
    .line 51
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 52
    .line 53
    aput-object v6, v10, v1

    .line 54
    .line 55
    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v23

    .line 63
    move/from16 v7, p0

    .line 64
    .line 65
    int-to-float v7, v7

    .line 66
    move/from16 v9, p1

    .line 67
    .line 68
    int-to-float v15, v9

    .line 69
    const/high16 v19, 0x3f800000    # 1.0f

    .line 70
    .line 71
    const/high16 v20, 0x3f800000    # 1.0f

    .line 72
    .line 73
    const/16 v21, 0x0

    .line 74
    .line 75
    const/16 v22, 0x0

    .line 76
    .line 77
    const/4 v13, 0x0

    .line 78
    const/high16 v16, 0x3f800000    # 1.0f

    .line 79
    .line 80
    const/high16 v17, 0x3f800000    # 1.0f

    .line 81
    .line 82
    const/16 v18, 0x0

    .line 83
    .line 84
    move-wide/from16 v9, v23

    .line 85
    .line 86
    move-wide/from16 v11, v23

    .line 87
    .line 88
    move v14, v7

    .line 89
    move/from16 v25, v15

    .line 90
    .line 91
    invoke-static/range {v9 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    const/16 v15, 0x1002

    .line 96
    .line 97
    invoke-virtual {v9, v15}, Landroid/view/MotionEvent;->setSource(I)V

    .line 98
    .line 99
    .line 100
    const/16 v26, -0x1

    .line 101
    .line 102
    if-lt v5, v8, :cond_1

    .line 103
    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    new-array v12, v0, [Ljava/lang/Object;

    .line 113
    .line 114
    aput-object v9, v12, v2

    .line 115
    .line 116
    aput-object v10, v12, v1

    .line 117
    .line 118
    aput-object v11, v12, v3

    .line 119
    .line 120
    invoke-virtual {v6, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    check-cast v10, Ljava/lang/Boolean;

    .line 125
    .line 126
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    new-array v11, v3, [Ljava/lang/Object;

    .line 136
    .line 137
    aput-object v9, v11, v2

    .line 138
    .line 139
    aput-object v10, v11, v1

    .line 140
    .line 141
    invoke-virtual {v6, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    check-cast v10, Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    :goto_1
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 152
    .line 153
    .line 154
    if-nez v10, :cond_2

    .line 155
    .line 156
    return-void

    .line 157
    :cond_2
    if-eqz p2, :cond_3

    .line 158
    .line 159
    const-wide/16 v9, 0x378

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    const-wide/16 v9, 0x1e

    .line 163
    .line 164
    :goto_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 168
    .line 169
    .line 170
    move-result-wide v11

    .line 171
    const/high16 v19, 0x3f800000    # 1.0f

    .line 172
    .line 173
    const/high16 v20, 0x3f800000    # 1.0f

    .line 174
    .line 175
    const/16 v21, 0x0

    .line 176
    .line 177
    const/16 v22, 0x0

    .line 178
    .line 179
    const/4 v13, 0x1

    .line 180
    const/high16 v16, 0x3f800000    # 1.0f

    .line 181
    .line 182
    const/high16 v17, 0x3f800000    # 1.0f

    .line 183
    .line 184
    const/16 v18, 0x0

    .line 185
    .line 186
    move-wide/from16 v9, v23

    .line 187
    .line 188
    move v14, v7

    .line 189
    const/16 v7, 0x1002

    .line 190
    .line 191
    move/from16 v15, v25

    .line 192
    .line 193
    invoke-static/range {v9 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    invoke-virtual {v9, v7}, Landroid/view/MotionEvent;->setSource(I)V

    .line 198
    .line 199
    .line 200
    if-lt v5, v8, :cond_4

    .line 201
    .line 202
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    new-array v0, v0, [Ljava/lang/Object;

    .line 211
    .line 212
    aput-object v9, v0, v2

    .line 213
    .line 214
    aput-object v5, v0, v1

    .line 215
    .line 216
    aput-object v7, v0, v3

    .line 217
    .line 218
    invoke-virtual {v6, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    check-cast v0, Ljava/lang/Boolean;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    new-array v3, v3, [Ljava/lang/Object;

    .line 233
    .line 234
    aput-object v9, v3, v2

    .line 235
    .line 236
    aput-object v0, v3, v1

    .line 237
    .line 238
    invoke-virtual {v6, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Ljava/lang/Boolean;

    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    :goto_3
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public static p(IIZ)V
    .locals 11

    .line 1
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v9

    .line 10
    int-to-float p0, p0

    .line 11
    int-to-float p1, p1

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    move-wide v1, v9

    .line 15
    move-wide v3, v9

    .line 16
    move v6, p0

    .line 17
    move v7, p1

    .line 18
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 23
    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    const-wide/16 v1, 0x378

    .line 28
    .line 29
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const-wide/16 v1, 0x1e

    .line 36
    .line 37
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    const/4 v5, 0x1

    .line 45
    const/4 v8, 0x0

    .line 46
    move-wide v1, v9

    .line 47
    move v6, p0

    .line 48
    move v7, p1

    .line 49
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :goto_2
    return-void
.end method

.method public static q(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "screen_brightness_mode"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "screen_brightness"

    .line 33
    .line 34
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static r(Lcom/yunpan/appmanage/service/AccService;IZ)V
    .locals 5

    .line 1
    const-string v0, "\uff08\u97f3\u6d41"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/16 v3, 0x64

    .line 16
    .line 17
    if-lt v1, v3, :cond_0

    .line 18
    .line 19
    const/16 v3, 0xa

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v3, 0x32

    .line 23
    .line 24
    if-lt v1, v3, :cond_1

    .line 25
    .line 26
    const/4 v3, 0x5

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/16 v3, 0x14

    .line 29
    .line 30
    if-lt v1, v3, :cond_2

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v3, 0x1

    .line 35
    :goto_0
    const/4 v4, 0x0

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    add-int/2addr v2, v3

    .line 39
    if-le v2, v1, :cond_4

    .line 40
    .line 41
    move v2, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    sub-int/2addr v2, v3

    .line 44
    if-gez v2, :cond_4

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    :cond_4
    :goto_1
    :try_start_0
    iget-object p0, p0, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    .line 48
    .line 49
    invoke-virtual {p0, p1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 50
    .line 51
    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, "\uff09\u5f53\u524d\u97f3\u91cf\uff1a"

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, " / "

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    const-string p0, "\u97f3\u91cf\u8c03\u6574\u5931\u8d25"

    .line 89
    .line 90
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    return-void
.end method
