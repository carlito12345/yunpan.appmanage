.class public final synthetic Lua/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lha/ea;
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/k;->a:I

    iput-object p1, p0, Lua/k;->b:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lua/k;->b:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;

    .line 2
    .line 3
    iput p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->K:I

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->z()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lua/k;->b:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;

    .line 4
    .line 5
    iget v3, p0, Lua/k;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v3, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->L:I

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v3, " "

    .line 16
    .line 17
    sget-object v4, Lfa/g0;->a:Lfa/h0;

    .line 18
    .line 19
    invoke-virtual {v4}, Lfa/h0;->d()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    const-string v0, "\u6ca1\u6709\u5185\u90e8\u5b58\u50a8\uff0c\u65e0\u6cd5\u5bfc\u51fa"

    .line 30
    .line 31
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_0
    new-instance v5, Ljava/io/File;

    .line 40
    .line 41
    const-string v6, "/Download/\u8be6\u7ec6\u4f7f\u7528\u8bb0\u5f55.txt"

    .line 42
    .line 43
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    .line 54
    .line 55
    new-instance v6, Ljava/io/FileWriter;

    .line 56
    .line 57
    invoke-direct {v6, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v4, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    .line 62
    .line 63
    :try_start_2
    iget-object v2, v2, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->E:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;

    .line 80
    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v8, v6, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->timeStr:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v8, v6, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->state:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v8, v6, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->packageName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->className:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v6, "\n"

    .line 116
    .line 117
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catchall_0
    move-exception v2

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 131
    .line 132
    .line 133
    const-string v2, "\u5bfc\u51fa\u5b8c\u6210\uff01/Download/\u8be6\u7ec6\u4f7f\u7528\u8bb0\u5f55.txt"

    .line 134
    .line 135
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v2, v3}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .line 148
    .line 149
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :catch_1
    move-exception v0

    .line 154
    goto :goto_3

    .line 155
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catchall_1
    move-exception v3

    .line 160
    :try_start_5
    const-class v4, Ljava/lang/Throwable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 161
    .line 162
    :try_start_6
    const-string v5, "addSuppressed"

    .line 163
    .line 164
    new-array v6, v1, [Ljava/lang/Class;

    .line 165
    .line 166
    aput-object v4, v6, v0

    .line 167
    .line 168
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    new-array v1, v1, [Ljava/lang/Object;

    .line 173
    .line 174
    aput-object v3, v1, v0

    .line 175
    .line 176
    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 177
    .line 178
    .line 179
    :catch_2
    :goto_2
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 180
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v2, "\u51fa\u9519\uff1a"

    .line 183
    .line 184
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    :goto_4
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 202
    .line 203
    .line 204
    :goto_5
    return-void

    .line 205
    :pswitch_0
    invoke-static {v2, p1}, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->x(Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;Lmc/b;)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lua/k;->b:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->D:Lx9/n;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;

    .line 10
    .line 11
    sget-object p2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 12
    .line 13
    sget-object p2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 14
    .line 15
    iget-object p3, p1, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->className:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/AppDetailHistoryLogBean;->className:Ljava/lang/String;

    .line 27
    .line 28
    :goto_0
    invoke-virtual {p2, p1}, Lcom/yunpan/appmanage/util/k;->c(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "\u590d\u5236\u6210\u529f"

    .line 32
    .line 33
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
