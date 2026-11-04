.class public final synthetic Lua/d7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/d7;->a:Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 7

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->F:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/d7;->a:Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v2, "pm list users"

    .line 19
    .line 20
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v2, v2, Lfa/a0;->b:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    const-string v4, "UserInfo{"

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v5, ":"

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    invoke-static {v3, v4, v5, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    const-string v2, "0"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const-string v3, "/com.autonavi.amapauto\'"

    .line 93
    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Ljava/lang/String;

    .line 101
    .line 102
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 108
    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v6, "pm uninstall --user "

    .line 112
    .line 113
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v6, " com.autonavi.amapauto"

    .line 120
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-static {v5}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 132
    .line 133
    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v5, "rm -rf \'/data/user/"

    .line 137
    .line 138
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 152
    .line 153
    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v5, "rm -rf \'/data/user_de/"

    .line 157
    .line 158
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    const-string v1, "rm -rf \'/data/data/com.autonavi.amapauto\'"

    .line 181
    .line 182
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 183
    .line 184
    .line 185
    const-string v1, "rm -rf \'/data4write/data/com.autonavi.amapauto\'"

    .line 186
    .line 187
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 188
    .line 189
    .line 190
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v2, "rm -rf \'"

    .line 207
    .line 208
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 225
    .line 226
    .line 227
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 4

    .line 1
    const/4 p1, 0x3

    .line 2
    const/4 p2, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    sget v1, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->F:I

    .line 5
    .line 6
    iget-object v1, p0, Lua/d7;->a:Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->y(Z)V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    if-ne p3, p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->y(Z)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    const/4 v2, 0x2

    .line 26
    if-eq p3, v2, :cond_7

    .line 27
    .line 28
    if-ne p3, p1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v2, 0x4

    .line 32
    if-ne p3, v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->z(Z)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_3
    const/4 v2, 0x5

    .line 40
    if-ne p3, v2, :cond_4

    .line 41
    .line 42
    invoke-virtual {v1, p2}, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->z(Z)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_4
    const/4 p2, 0x6

    .line 48
    if-ne p3, p2, :cond_6

    .line 49
    .line 50
    const-string p2, "com.autonavi.amapauto"

    .line 51
    .line 52
    invoke-static {p2}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    if-eqz p2, :cond_5

    .line 57
    .line 58
    const-string p1, "\u60a8\u8fd8\u6ca1\u6709\u5220\u9664\u9ad8\u5fb7\uff0c\u65e0\u9700\u6b64\u64cd\u4f5c"

    .line 59
    .line 60
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_5
    new-instance p2, Lua/d7;

    .line 66
    .line 67
    invoke-direct {p2, v1}, Lua/d7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;)V

    .line 68
    .line 69
    .line 70
    new-instance p3, Lmc/c;

    .line 71
    .line 72
    invoke-direct {p3, v0, p2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 76
    .line 77
    invoke-virtual {p3, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {p2, p3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    new-instance p3, Lua/f7;

    .line 90
    .line 91
    invoke-direct {p3, v1, p1}, Lua/f7;-><init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p3}, Lec/b;->b(Lec/e;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_6
    const-string p1, "\u6b64\u529f\u80fd\u6682\u672a\u5f00\u653e"

    .line 99
    .line 100
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_7
    :goto_0
    if-ne p3, v2, :cond_8

    .line 105
    .line 106
    const/4 p1, 0x1

    .line 107
    goto :goto_1

    .line 108
    :cond_8
    const/4 p1, 0x0

    .line 109
    :goto_1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 110
    .line 111
    const/16 v2, 0x15

    .line 112
    .line 113
    if-ge p3, v2, :cond_9

    .line 114
    .line 115
    const-string p1, "\u4ec5\u652f\u6301\u5b89\u53535.0\u4ee5\u4e0a\u7cfb\u7edf"

    .line 116
    .line 117
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_9
    sget-object p3, Lfa/b0;->a:La2/w0;

    .line 122
    .line 123
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {}, La2/w0;->P()Z

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    if-nez p3, :cond_a

    .line 131
    .line 132
    const-string p1, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 133
    .line 134
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_a
    sget-object p3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 139
    .line 140
    sget-object p3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 141
    .line 142
    iget-boolean p3, p3, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 143
    .line 144
    if-nez p3, :cond_b

    .line 145
    .line 146
    const-string p1, "\u65e0\u6743\u9650\uff1a\u8bf7\u5148\u63d0\u6743"

    .line 147
    .line 148
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_b
    new-instance p3, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    new-instance v2, Lha/a3;

    .line 161
    .line 162
    const/4 v3, 0x7

    .line 163
    invoke-direct {v2, v3, p3}, Lha/a3;-><init>(ILjava/util/ArrayList;)V

    .line 164
    .line 165
    .line 166
    new-instance v3, Lmc/c;

    .line 167
    .line 168
    invoke-direct {v3, v0, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 172
    .line 173
    invoke-virtual {v3, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v0, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    new-instance v2, Lua/z3;

    .line 186
    .line 187
    invoke-direct {v2, p2, v1, p3, p1}, Lua/z3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2}, Lec/b;->b(Lec/e;)V

    .line 191
    .line 192
    .line 193
    :goto_2
    return-void
.end method
