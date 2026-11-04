.class public final synthetic Lua/u6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa/w;
.implements Lha/g4;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityStart;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/u6;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lua/u6;->b:Z

    iput p3, p0, Lua/u6;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lua/i9;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/u6;->c:Ljava/lang/Object;

    iput p2, p0, Lua/u6;->a:I

    iput-boolean p3, p0, Lua/u6;->b:Z

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityStart;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/u6;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityStart;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p2, "shell\uff1a\u66f4\u6539\u6210\u529f ("

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean p2, p0, Lua/u6;->b:Z

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const-string p2, "\u7981\u7528"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p2, "\u542f\u7528"

    .line 27
    .line 28
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, ")"

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 p2, 0x1

    .line 41
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityStart;->D:Lx9/y4;

    .line 45
    .line 46
    iget p2, p0, Lua/u6;->a:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "\u66f4\u6539\u5931\u8d25\uff1a"

    .line 55
    .line 56
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/4 p2, 0x0

    .line 67
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method

.method public k(Lx9/w3;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lua/u6;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lua/i9;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    iget-object v2, v0, Lua/i9;->z:Lx9/f0;

    .line 11
    .line 12
    iget v3, p0, Lua/u6;->a:I

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lx9/w3;

    .line 19
    .line 20
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const-string p1, "\u6587\u4ef6\u672c\u8eab\u5c31\u5728\u5f53\u524d\u76ee\u5f55"

    .line 39
    .line 40
    invoke-static {p1, v2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_0
    iget-boolean v1, p0, Lua/u6;->b:Z

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v4, v0, Lua/i9;->z:Lx9/f0;

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lx9/w3;

    .line 56
    .line 57
    iget-boolean v4, v4, Lx9/w3;->c:Z

    .line 58
    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    iget-object v4, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v5, Ljava/io/File;

    .line 64
    .line 65
    iget-object v6, v0, Lua/i9;->z:Lx9/f0;

    .line 66
    .line 67
    invoke-virtual {v6, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lx9/w3;

    .line 72
    .line 73
    iget-object v6, v6, Lx9/w3;->b:Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_1

    .line 87
    .line 88
    const-string p1, "\u6682\u4e0d\u652f\u6301\u8fd9\u6837\u7684\u9a9a\u64cd\u4f5c"

    .line 89
    .line 90
    invoke-static {p1, v2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 95
    .line 96
    new-instance v5, Ljava/io/File;

    .line 97
    .line 98
    iget-object v6, v0, Lua/i9;->z:Lx9/f0;

    .line 99
    .line 100
    invoke-virtual {v6, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Lx9/w3;

    .line 105
    .line 106
    iget-object v6, v6, Lx9/w3;->b:Ljava/lang/String;

    .line 107
    .line 108
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object v4, v0, Lua/i9;->h:Lha/u9;

    .line 118
    .line 119
    const-string v5, "\u62f7\u8d1d\u4e2d"

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Lha/u9;->c(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v4, v0, Lua/i9;->Y:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 127
    .line 128
    .line 129
    iget-object v5, v0, Lua/i9;->z:Lx9/f0;

    .line 130
    .line 131
    invoke-virtual {v5, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lx9/w3;

    .line 136
    .line 137
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    new-instance v3, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 141
    .line 142
    invoke-direct {v3}, Lcom/yunpan/appmanage/bean/FileCopyBean;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-boolean v1, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->isDelete:Z

    .line 146
    .line 147
    new-instance v5, Ljava/io/File;

    .line 148
    .line 149
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Lx9/w3;

    .line 154
    .line 155
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 156
    .line 157
    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    iput-object v2, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    .line 165
    .line 166
    iput-object v4, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    .line 167
    .line 168
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 169
    .line 170
    iput-object p1, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 171
    .line 172
    const-string v2, "/"

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-nez p1, :cond_2

    .line 179
    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    iget-object v4, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {v4, v2, p1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    .line 192
    .line 193
    :cond_2
    iget-object p1, v0, Lua/i9;->h:Lha/u9;

    .line 194
    .line 195
    const-string v2, "\u6bd4\u5bf9\u4e2d"

    .line 196
    .line 197
    invoke-virtual {p1, v2}, Lha/u9;->b(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    new-instance p1, Lcom/yunpan/appmanage/util/m;

    .line 201
    .line 202
    const/4 v2, 0x0

    .line 203
    invoke-direct {p1, v2}, Lcom/yunpan/appmanage/util/m;-><init>(I)V

    .line 204
    .line 205
    .line 206
    new-instance v2, Lfa/c0;

    .line 207
    .line 208
    const/4 v4, 0x2

    .line 209
    invoke-direct {v2, v4, v0, v3, v1}, Lfa/c0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v3, v2}, Lcom/yunpan/appmanage/util/m;->a(Lcom/yunpan/appmanage/bean/FileCopyBean;Lea/b;)V

    .line 213
    .line 214
    .line 215
    :goto_0
    return-void
.end method
