.class public final synthetic Lua/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lha/ea;
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/d1;->a:I

    iput-object p1, p0, Lua/d1;->b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lua/d1;->b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    const-string v3, "size"

    .line 8
    .line 9
    const/16 v4, 0x12

    .line 10
    .line 11
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    invoke-virtual {v1, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->setTextSize(F)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    const-string v3, "auto_line"

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->setWordwrap(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    const-string v3, "show_line_number"

    .line 38
    .line 39
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->setLineNumberEnabled(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 47
    .line 48
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 49
    .line 50
    const-string v3, "gesture_scale"

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->setScalable(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 61
    .line 62
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 63
    .line 64
    const-string v3, "highlight_current_line"

    .line 65
    .line 66
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v1, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->setHighlightCurrentLine(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X:Landroid/content/SharedPreferences;

    .line 76
    .line 77
    const-string v2, "auto_indent"

    .line 78
    .line 79
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual {v1, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->M(Z)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public b(I)V
    .locals 4

    .line 1
    iget v0, p0, Lua/d1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/d1;->b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->L:[Ljava/lang/String;

    .line 9
    .line 10
    aget-object p1, v1, p1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->x(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lua/d1;->b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->M:[Ljava/lang/String;

    .line 19
    .line 20
    aget-object p1, v1, p1

    .line 21
    .line 22
    iput-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->P:Ljava/lang/String;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 27
    .line 28
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget v3, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->b1:I

    .line 33
    .line 34
    if-ge v1, v2, :cond_1

    .line 35
    .line 36
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 43
    .line 44
    iget v2, v2, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    .line 45
    .line 46
    if-ne v2, v3, :cond_0

    .line 47
    .line 48
    move p1, v1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 54
    .line 55
    new-instance v2, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->P:Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {v2, v0, v3}, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;-><init>(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lmc/b;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lua/d1;->b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 4
    .line 5
    iget v3, p0, Lua/d1;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->N:I

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    new-instance v0, Ljava/lang/Exception;

    .line 29
    .line 30
    const-string v1, "\u6587\u4ef6\u88ab\u4fee\u6539"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    :cond_0
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :pswitch_0
    sget v3, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    :try_start_1
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v4, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->R:Landroid/net/Uri;

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 57
    .line 58
    .line 59
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    :try_start_2
    iget-boolean v4, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 63
    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    iget-object v4, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 67
    .line 68
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lmb/g;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v5, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->P:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v2

    .line 87
    goto :goto_4

    .line 88
    :cond_1
    iget-object v4, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iget-object v5, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->P:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 105
    .line 106
    .line 107
    :goto_1
    iget-boolean v4, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 108
    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    iget-object v4, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 112
    .line 113
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v4}, Lmb/g;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    goto :goto_3

    .line 126
    :cond_2
    iget-object v4, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 127
    .line 128
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    goto :goto_2

    .line 137
    :goto_3
    iput v4, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->N:I

    .line 138
    .line 139
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .line 141
    .line 142
    goto :goto_6

    .line 143
    :goto_4
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :catchall_1
    move-exception v3

    .line 148
    :try_start_4
    const-class v4, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 149
    .line 150
    :try_start_5
    const-string v5, "addSuppressed"

    .line 151
    .line 152
    new-array v6, v1, [Ljava/lang/Class;

    .line 153
    .line 154
    aput-object v4, v6, v0

    .line 155
    .line 156
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    new-array v1, v1, [Ljava/lang/Object;

    .line 161
    .line 162
    aput-object v3, v1, v0

    .line 163
    .line 164
    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 165
    .line 166
    .line 167
    :catch_1
    :goto_5
    :try_start_6
    throw v2

    .line 168
    :catch_2
    move-exception v0

    .line 169
    goto :goto_7

    .line 170
    :cond_3
    :goto_6
    if-eqz v3, :cond_4

    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 173
    .line 174
    .line 175
    goto :goto_8

    .line 176
    :goto_7
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    :goto_8
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 8

    .line 1
    const/4 p1, 0x3

    .line 2
    const/4 p2, 0x0

    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    iget v2, p0, Lua/d1;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lua/d1;->b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 11
    .line 12
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->H:Lx9/t0;

    .line 13
    .line 14
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 19
    .line 20
    iget-object p2, p2, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->name:Ljava/lang/String;

    .line 21
    .line 22
    const-string p3, "\u6362\u884c\u7b26"

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    const-string p2, "\n"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p3, "\u5236\u8868\u7b26"

    .line 34
    .line 35
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    const-string p2, "\t"

    .line 42
    .line 43
    :cond_1
    :goto_0
    iget-boolean p3, p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 44
    .line 45
    if-eqz p3, :cond_2

    .line 46
    .line 47
    iget-object p3, p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 48
    .line 49
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 54
    .line 55
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v0, v0, Lmb/j;->c:Lmb/b;

    .line 60
    .line 61
    iget v0, v0, Lmb/b;->b:I

    .line 62
    .line 63
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 64
    .line 65
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p1, p1, Lmb/j;->c:Lmb/b;

    .line 70
    .line 71
    iget p1, p1, Lmb/b;->c:I

    .line 72
    .line 73
    invoke-virtual {p3, v0, p1, p2}, Lmb/g;->r(IILjava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object p3, p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 78
    .line 79
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-interface {p3, p1, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 90
    .line 91
    .line 92
    :goto_1
    return-void

    .line 93
    :pswitch_0
    iget-object v2, p0, Lua/d1;->b:Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 94
    .line 95
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 96
    .line 97
    invoke-virtual {v3, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 102
    .line 103
    iget v3, v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->ico:I

    .line 104
    .line 105
    const v4, 0x7f08022a

    .line 106
    .line 107
    .line 108
    if-ne v3, v4, :cond_3

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->A()V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :cond_3
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 116
    .line 117
    invoke-virtual {v3, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 122
    .line 123
    iget v3, v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->ico:I

    .line 124
    .line 125
    const v4, 0x7f08022b

    .line 126
    .line 127
    .line 128
    if-ne v3, v4, :cond_4

    .line 129
    .line 130
    invoke-virtual {v2, p2}, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->B(Z)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_5

    .line 134
    .line 135
    :cond_4
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 136
    .line 137
    invoke-virtual {v3, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 142
    .line 143
    iget v3, v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->ico:I

    .line 144
    .line 145
    const v4, 0x7f080227

    .line 146
    .line 147
    .line 148
    if-ne v3, v4, :cond_7

    .line 149
    .line 150
    sget-object p3, Lfa/g0;->a:Lfa/h0;

    .line 151
    .line 152
    invoke-virtual {p3}, Lfa/h0;->d()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_5

    .line 161
    .line 162
    const-string p1, "\u6b64\u8bbe\u5907\u6ca1\u6709sd\u5361\uff0c\u65e0\u6cd5\u53e6\u5b58"

    .line 163
    .line 164
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_5

    .line 168
    .line 169
    :cond_5
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 170
    .line 171
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getGetInstalledAppsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    new-array p1, p1, [Lcom/hjq/permissions/permission/base/IPermission;

    .line 184
    .line 185
    aput-object v4, p1, p2

    .line 186
    .line 187
    aput-object v5, p1, v1

    .line 188
    .line 189
    aput-object v6, p1, v0

    .line 190
    .line 191
    invoke-static {v3, p1}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermissions(Landroid/content/Context;[Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-nez p1, :cond_6

    .line 196
    .line 197
    invoke-static {v2}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p1, p2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {p1, p2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getGetInstalledAppsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-virtual {p1, p2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    new-instance p2, Lua/v0;

    .line 226
    .line 227
    invoke-direct {p2, v0}, Lua/v0;-><init>(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_5

    .line 234
    .line 235
    :cond_6
    new-instance p1, Lha/nb;

    .line 236
    .line 237
    iget-object p2, v2, Lda/g;->A:Lda/g;

    .line 238
    .line 239
    invoke-direct {p1, v2, p2}, Lha/nb;-><init>(Landroid/app/Activity;Lda/g;)V

    .line 240
    .line 241
    .line 242
    new-instance p2, Lx9/w3;

    .line 243
    .line 244
    invoke-virtual {p3}, Lfa/h0;->d()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p3

    .line 248
    const-string v0, "\u5185\u90e8\u5b58\u50a8"

    .line 249
    .line 250
    invoke-direct {p2, v0, p3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    new-instance p3, Lua/d1;

    .line 254
    .line 255
    invoke-direct {p3, v2, v1}, Lua/d1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 259
    .line 260
    .line 261
    iput-object p3, p1, Lha/nb;->t:Lua/d1;

    .line 262
    .line 263
    iget-object p3, p1, Lha/nb;->g:Landroid/widget/TextView;

    .line 264
    .line 265
    const-string v0, "\u53e6\u5b58\u4e3a"

    .line 266
    .line 267
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    .line 269
    .line 270
    iget-object p3, p1, Lha/nb;->i:Lx9/g0;

    .line 271
    .line 272
    invoke-virtual {p3, p2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Lha/nb;->a()V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_5

    .line 279
    .line 280
    :cond_7
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 281
    .line 282
    invoke-virtual {v3, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    check-cast v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 287
    .line 288
    iget v3, v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->ico:I

    .line 289
    .line 290
    const v4, 0x7f080229

    .line 291
    .line 292
    .line 293
    if-ne v3, v4, :cond_9

    .line 294
    .line 295
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 296
    .line 297
    iget-object p2, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 298
    .line 299
    iget-object p2, p2, Lmb/g;->i:Lmb/w;

    .line 300
    .line 301
    iget-boolean p3, p2, Lmb/w;->b:Z

    .line 302
    .line 303
    if-eqz p3, :cond_8

    .line 304
    .line 305
    iget p2, p2, Lmb/w;->f:I

    .line 306
    .line 307
    if-lez p2, :cond_8

    .line 308
    .line 309
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->m0()V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_5

    .line 313
    .line 314
    :cond_8
    const-string p1, "\u6ca1\u6709\u53ef\u64a4\u9500\u7684\u8bb0\u5f55"

    .line 315
    .line 316
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_5

    .line 320
    .line 321
    :cond_9
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 322
    .line 323
    invoke-virtual {v3, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    check-cast v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 328
    .line 329
    iget v3, v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->ico:I

    .line 330
    .line 331
    const v4, 0x7f080228

    .line 332
    .line 333
    .line 334
    if-ne v3, v4, :cond_b

    .line 335
    .line 336
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 337
    .line 338
    iget-object p1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 339
    .line 340
    iget-object p1, p1, Lmb/g;->i:Lmb/w;

    .line 341
    .line 342
    iget-boolean p2, p1, Lmb/w;->b:Z

    .line 343
    .line 344
    if-eqz p2, :cond_a

    .line 345
    .line 346
    iget p2, p1, Lmb/w;->f:I

    .line 347
    .line 348
    iget-object p1, p1, Lmb/w;->a:Ljava/util/ArrayList;

    .line 349
    .line 350
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    if-ge p2, p1, :cond_a

    .line 355
    .line 356
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 357
    .line 358
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->a0()V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_5

    .line 362
    .line 363
    :cond_a
    const-string p1, "\u6ca1\u6709\u53ef\u91cd\u505a\u7684\u8bb0\u5f55"

    .line 364
    .line 365
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 366
    .line 367
    .line 368
    goto/16 :goto_5

    .line 369
    .line 370
    :cond_b
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 371
    .line 372
    invoke-virtual {v3, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    check-cast v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 377
    .line 378
    iget v3, v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->ico:I

    .line 379
    .line 380
    const v4, 0x7f08022c

    .line 381
    .line 382
    .line 383
    const-string v5, ""

    .line 384
    .line 385
    if-ne v3, v4, :cond_c

    .line 386
    .line 387
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Y:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 388
    .line 389
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 390
    .line 391
    .line 392
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z:Landroid/widget/EditText;

    .line 393
    .line 394
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 395
    .line 396
    .line 397
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z:Landroid/widget/EditText;

    .line 398
    .line 399
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    .line 401
    .line 402
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->h0:Landroid/widget/EditText;

    .line 403
    .line 404
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    .line 406
    .line 407
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 408
    .line 409
    const/16 p2, 0x8

    .line 410
    .line 411
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_5

    .line 415
    .line 416
    :cond_c
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 417
    .line 418
    invoke-virtual {v3, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    check-cast v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 423
    .line 424
    iget v3, v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->ico:I

    .line 425
    .line 426
    const v4, 0x7f08022d

    .line 427
    .line 428
    .line 429
    if-ne v3, v4, :cond_d

    .line 430
    .line 431
    new-instance p1, Lha/v4;

    .line 432
    .line 433
    iget-object p2, v2, Lda/g;->A:Lda/g;

    .line 434
    .line 435
    new-instance p3, Lua/d1;

    .line 436
    .line 437
    const/4 v0, 0x4

    .line 438
    invoke-direct {p3, v2, v0}, Lua/d1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 439
    .line 440
    .line 441
    invoke-direct {p1, v2, p2, p3}, Lha/v4;-><init>(Landroid/app/Activity;Lda/g;Lua/d1;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_5

    .line 448
    .line 449
    :cond_d
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 450
    .line 451
    invoke-virtual {v3, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    check-cast v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 456
    .line 457
    iget v3, v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    .line 458
    .line 459
    iget v4, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->T0:I

    .line 460
    .line 461
    if-ne v3, v4, :cond_e

    .line 462
    .line 463
    new-instance p1, Lha/f7;

    .line 464
    .line 465
    iget-object p2, v2, Lda/g;->A:Lda/g;

    .line 466
    .line 467
    invoke-direct {p1, v2, p2}, Lha/f7;-><init>(Landroid/app/Activity;Lda/g;)V

    .line 468
    .line 469
    .line 470
    new-instance p2, Lua/d1;

    .line 471
    .line 472
    invoke-direct {p2, v2, v1}, Lua/d1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 476
    .line 477
    .line 478
    iput-object p2, p1, Lha/f7;->k:Ljava/lang/Object;

    .line 479
    .line 480
    goto/16 :goto_5

    .line 481
    .line 482
    :cond_e
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 483
    .line 484
    invoke-virtual {v3, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    check-cast v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 489
    .line 490
    iget v3, v3, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    .line 491
    .line 492
    iget v4, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->U0:I

    .line 493
    .line 494
    if-ne v3, v4, :cond_12

    .line 495
    .line 496
    iget-boolean p3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 497
    .line 498
    const-string v0, "\u5185\u5bb9\u4fee\u6539\u540e\uff0c\u4e0d\u80fd\u518d\u4fee\u6539\u7f16\u7801"

    .line 499
    .line 500
    if-eqz p3, :cond_f

    .line 501
    .line 502
    iget p3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->N:I

    .line 503
    .line 504
    if-eqz p3, :cond_10

    .line 505
    .line 506
    iget-object p3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 507
    .line 508
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 509
    .line 510
    .line 511
    move-result-object p3

    .line 512
    invoke-virtual {p3}, Lmb/g;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p3

    .line 516
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 517
    .line 518
    .line 519
    move-result p3

    .line 520
    iget v3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->N:I

    .line 521
    .line 522
    if-eq p3, v3, :cond_10

    .line 523
    .line 524
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 525
    .line 526
    .line 527
    goto/16 :goto_5

    .line 528
    .line 529
    :cond_f
    iget p3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->N:I

    .line 530
    .line 531
    if-eqz p3, :cond_10

    .line 532
    .line 533
    iget-object p3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 534
    .line 535
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 536
    .line 537
    .line 538
    move-result-object p3

    .line 539
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object p3

    .line 543
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 544
    .line 545
    .line 546
    move-result p3

    .line 547
    iget v3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->N:I

    .line 548
    .line 549
    if-eq p3, v3, :cond_10

    .line 550
    .line 551
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 552
    .line 553
    .line 554
    goto/16 :goto_5

    .line 555
    .line 556
    :cond_10
    new-instance p3, Lha/fa;

    .line 557
    .line 558
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 559
    .line 560
    new-instance v0, Ljava/util/ArrayList;

    .line 561
    .line 562
    iget-object v4, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->L:[Ljava/lang/String;

    .line 563
    .line 564
    array-length v5, v4

    .line 565
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 566
    .line 567
    .line 568
    array-length v5, v4

    .line 569
    :goto_2
    if-ge p2, v5, :cond_11

    .line 570
    .line 571
    aget-object v6, v4, p2

    .line 572
    .line 573
    invoke-static {v6, v0, v6, p2, v1}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 574
    .line 575
    .line 576
    move-result p2

    .line 577
    goto :goto_2

    .line 578
    :cond_11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    new-instance v5, Lua/d1;

    .line 583
    .line 584
    invoke-direct {v5, v2, p1}, Lua/d1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 585
    .line 586
    .line 587
    const-string p1, "\u8bfb\u53d6\u65f6\u89e3\u7801"

    .line 588
    .line 589
    move-object v0, p3

    .line 590
    move-object v1, v2

    .line 591
    move-object v2, v3

    .line 592
    move-object v3, p1

    .line 593
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {p3}, Lha/a4;->show()V

    .line 597
    .line 598
    .line 599
    goto/16 :goto_5

    .line 600
    .line 601
    :cond_12
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 602
    .line 603
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    check-cast p1, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 608
    .line 609
    iget p1, p1, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    .line 610
    .line 611
    iget v3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->b1:I

    .line 612
    .line 613
    if-ne p1, v3, :cond_14

    .line 614
    .line 615
    new-instance p1, Lha/fa;

    .line 616
    .line 617
    iget-object p3, v2, Lda/g;->A:Lda/g;

    .line 618
    .line 619
    new-instance v3, Ljava/util/ArrayList;

    .line 620
    .line 621
    iget-object v4, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->M:[Ljava/lang/String;

    .line 622
    .line 623
    array-length v5, v4

    .line 624
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 625
    .line 626
    .line 627
    array-length v5, v4

    .line 628
    :goto_3
    if-ge p2, v5, :cond_13

    .line 629
    .line 630
    aget-object v6, v4, p2

    .line 631
    .line 632
    invoke-static {v6, v3, v6, p2, v1}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 633
    .line 634
    .line 635
    move-result p2

    .line 636
    goto :goto_3

    .line 637
    :cond_13
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 638
    .line 639
    .line 640
    move-result-object v4

    .line 641
    new-instance v5, Lua/d1;

    .line 642
    .line 643
    invoke-direct {v5, v2, v0}, Lua/d1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 644
    .line 645
    .line 646
    const-string v3, "\u4fdd\u5b58\u65f6\u7f16\u7801"

    .line 647
    .line 648
    move-object v0, p1

    .line 649
    move-object v1, v2

    .line 650
    move-object v2, p3

    .line 651
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 655
    .line 656
    .line 657
    goto/16 :goto_5

    .line 658
    .line 659
    :cond_14
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 660
    .line 661
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object p1

    .line 665
    check-cast p1, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 666
    .line 667
    iget p1, p1, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    .line 668
    .line 669
    iget p2, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->V0:I

    .line 670
    .line 671
    if-ne p1, p2, :cond_15

    .line 672
    .line 673
    new-instance p1, Lha/z6;

    .line 674
    .line 675
    iget-object p2, v2, Lda/g;->A:Lda/g;

    .line 676
    .line 677
    new-instance v7, Lua/f1;

    .line 678
    .line 679
    invoke-direct {v7, v2, v1}, Lua/f1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCodeEditor;I)V

    .line 680
    .line 681
    .line 682
    const-string v3, "\u662f\u5426\u8981\u91cd\u65b0\u52a0\u8f7d\u6587\u4ef6\uff1f"

    .line 683
    .line 684
    const-string v4, ""

    .line 685
    .line 686
    const-string v5, "\u786e\u5b9a"

    .line 687
    .line 688
    const-string v6, "\u53d6\u6d88"

    .line 689
    .line 690
    move-object v0, p1

    .line 691
    move-object v1, v2

    .line 692
    move-object v2, p2

    .line 693
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 697
    .line 698
    .line 699
    goto/16 :goto_5

    .line 700
    .line 701
    :cond_15
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 702
    .line 703
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object p1

    .line 707
    check-cast p1, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 708
    .line 709
    iget p1, p1, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    .line 710
    .line 711
    iget p2, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Z0:I

    .line 712
    .line 713
    if-ne p1, p2, :cond_16

    .line 714
    .line 715
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 716
    .line 717
    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 718
    .line 719
    .line 720
    const-string p2, "\u9065\u63a7\u5668\uff1a"

    .line 721
    .line 722
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 723
    .line 724
    .line 725
    move-result-object p1

    .line 726
    const-string p2, "\u6309\u8fd4\u56de\u952e\u53ef\u5230\u9876\u90e8\u680f\uff0c\u6309\u83dc\u5355\u952e\u53ef\u5230\u5e95\u90e8\u680f"

    .line 727
    .line 728
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 729
    .line 730
    .line 731
    move-result-object p1

    .line 732
    const-string p2, "\u597d\u7684"

    .line 733
    .line 734
    const/4 p3, 0x0

    .line 735
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 736
    .line 737
    .line 738
    move-result-object p1

    .line 739
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 740
    .line 741
    .line 742
    goto/16 :goto_5

    .line 743
    .line 744
    :cond_16
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 745
    .line 746
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object p1

    .line 750
    check-cast p1, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 751
    .line 752
    iget p1, p1, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    .line 753
    .line 754
    iget p2, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->W0:I

    .line 755
    .line 756
    if-ne p1, p2, :cond_17

    .line 757
    .line 758
    const-string p1, "\u6b64\u529f\u80fd\u5f00\u53d1\u4e2d"

    .line 759
    .line 760
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 761
    .line 762
    .line 763
    goto/16 :goto_5

    .line 764
    .line 765
    :cond_17
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 766
    .line 767
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object p1

    .line 771
    check-cast p1, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 772
    .line 773
    iget p1, p1, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    .line 774
    .line 775
    iget p2, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->X0:I

    .line 776
    .line 777
    const-string v0, ".json"

    .line 778
    .line 779
    if-ne p1, p2, :cond_1a

    .line 780
    .line 781
    :try_start_0
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S0:Ljava/lang/String;

    .line 782
    .line 783
    if-eqz p1, :cond_1e

    .line 784
    .line 785
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object p1

    .line 789
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 790
    .line 791
    .line 792
    move-result p1

    .line 793
    if-eqz p1, :cond_1e

    .line 794
    .line 795
    new-instance p1, Lz7/n;

    .line 796
    .line 797
    invoke-direct {p1}, Lz7/n;-><init>()V

    .line 798
    .line 799
    .line 800
    sget-object p2, Lz7/i;->e:Lz7/i;

    .line 801
    .line 802
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    iput-object p2, p1, Lz7/n;->j:Lz7/i;

    .line 806
    .line 807
    invoke-virtual {p1}, Lz7/n;->a()Lz7/m;

    .line 808
    .line 809
    .line 810
    move-result-object p1

    .line 811
    iget-boolean p2, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 812
    .line 813
    if-eqz p2, :cond_18

    .line 814
    .line 815
    iget-object p2, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 816
    .line 817
    invoke-virtual {p2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 818
    .line 819
    .line 820
    move-result-object p2

    .line 821
    invoke-virtual {p2}, Lmb/g;->toString()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object p2

    .line 825
    goto :goto_4

    .line 826
    :cond_18
    iget-object p2, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 827
    .line 828
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 829
    .line 830
    .line 831
    move-result-object p2

    .line 832
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object p2

    .line 836
    :goto_4
    invoke-static {p2}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 837
    .line 838
    .line 839
    move-result-object p2

    .line 840
    iget-boolean p3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 841
    .line 842
    if-eqz p3, :cond_19

    .line 843
    .line 844
    iget-object p3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 845
    .line 846
    invoke-virtual {p1, p2}, Lz7/m;->e(Lz7/p;)Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object p1

    .line 850
    invoke-virtual {p3, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->setText(Ljava/lang/CharSequence;)V

    .line 851
    .line 852
    .line 853
    goto/16 :goto_5

    .line 854
    .line 855
    :cond_19
    iget-object p3, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 856
    .line 857
    invoke-virtual {p1, p2}, Lz7/m;->e(Lz7/p;)Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object p1

    .line 861
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .line 863
    .line 864
    goto/16 :goto_5

    .line 865
    .line 866
    :catch_0
    const-string p1, "\u683c\u5f0f\u5316\u5931\u8d25,\u5185\u5bb9\u9519\u8bef"

    .line 867
    .line 868
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 869
    .line 870
    .line 871
    goto/16 :goto_5

    .line 872
    .line 873
    :cond_1a
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 874
    .line 875
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object p1

    .line 879
    check-cast p1, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 880
    .line 881
    iget p1, p1, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    .line 882
    .line 883
    iget p2, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->Y0:I

    .line 884
    .line 885
    if-ne p1, p2, :cond_1c

    .line 886
    .line 887
    :try_start_1
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S0:Ljava/lang/String;

    .line 888
    .line 889
    if-eqz p1, :cond_1e

    .line 890
    .line 891
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object p1

    .line 895
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 896
    .line 897
    .line 898
    move-result p1

    .line 899
    if-eqz p1, :cond_1e

    .line 900
    .line 901
    iget-boolean p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 902
    .line 903
    if-eqz p1, :cond_1b

    .line 904
    .line 905
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 906
    .line 907
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 908
    .line 909
    .line 910
    move-result-object p2

    .line 911
    invoke-virtual {p2}, Lmb/g;->toString()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object p2

    .line 915
    invoke-static {p2}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 916
    .line 917
    .line 918
    move-result-object p2

    .line 919
    invoke-virtual {p2}, Lz7/p;->toString()Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object p2

    .line 923
    invoke-virtual {p1, p2}, Lio/github/rosemoe/sora/widget/CodeEditor;->setText(Ljava/lang/CharSequence;)V

    .line 924
    .line 925
    .line 926
    goto :goto_5

    .line 927
    :cond_1b
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 928
    .line 929
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 930
    .line 931
    .line 932
    move-result-object p2

    .line 933
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object p2

    .line 937
    invoke-static {p2}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 938
    .line 939
    .line 940
    move-result-object p2

    .line 941
    invoke-virtual {p2}, Lz7/p;->toString()Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object p2

    .line 945
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 946
    .line 947
    .line 948
    goto :goto_5

    .line 949
    :catch_1
    const-string p1, "\u538b\u7f29\u5931\u8d25,\u5185\u5bb9\u9519\u8bef"

    .line 950
    .line 951
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 952
    .line 953
    .line 954
    goto :goto_5

    .line 955
    :cond_1c
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->G:Lx9/t0;

    .line 956
    .line 957
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object p1

    .line 961
    check-cast p1, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;

    .line 962
    .line 963
    iget p1, p1, Lcom/yunpan/appmanage/bean/CodeEditorTopBean;->tag:I

    .line 964
    .line 965
    iget p2, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->a1:I

    .line 966
    .line 967
    if-ne p1, p2, :cond_1e

    .line 968
    .line 969
    iget-boolean p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->S:Z

    .line 970
    .line 971
    if-eqz p1, :cond_1d

    .line 972
    .line 973
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->C:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 974
    .line 975
    invoke-virtual {p1, v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->setText(Ljava/lang/CharSequence;)V

    .line 976
    .line 977
    .line 978
    goto :goto_5

    .line 979
    :cond_1d
    iget-object p1, v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->D:Landroid/widget/EditText;

    .line 980
    .line 981
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 982
    .line 983
    .line 984
    :cond_1e
    :goto_5
    return-void

    .line 985
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
