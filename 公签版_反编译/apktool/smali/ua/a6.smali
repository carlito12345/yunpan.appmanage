.class public final synthetic Lua/a6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lc6/e;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityRotation;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityRotation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/a6;->a:Lcom/yunpan/appmanage/ui/ActivityRotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    sget v1, Lcom/yunpan/appmanage/ui/ActivityRotation;->F:I

    .line 3
    .line 4
    iget-object v1, p0, Lua/a6;->a:Lcom/yunpan/appmanage/ui/ActivityRotation;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Lcom/yunpan/appmanage/db/AppDao;->get_app_canStart()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityRotation;->E:Ljava/util/ArrayList;

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    const/4 v6, 0x0

    .line 33
    const-string v7, "|"

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 42
    .line 43
    sget-object v8, Lwa/t;->a:Lwa/u;

    .line 44
    .line 45
    iget-object v9, v8, Lwa/u;->N:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v10, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v11, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v10, v11, v7, v9}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-eqz v9, :cond_0

    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    iget-object v8, v8, Lwa/u;->O:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v10, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v9, v10, v7, v8}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/4 v5, 0x0

    .line 79
    :goto_1
    new-instance v6, Lcom/yunpan/appmanage/bean/RotationBean;

    .line 80
    .line 81
    iget-object v7, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v3, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 84
    .line 85
    invoke-direct {v6, v7, v3, v5}, Lcom/yunpan/appmanage/bean/RotationBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v1}, Lcom/yunpan/appmanage/db/AppDao;->get_app_NoCanStart()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_7

    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 119
    .line 120
    :try_start_0
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 121
    .line 122
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 123
    .line 124
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 125
    .line 126
    iget-object v8, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v3, v8, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 133
    .line 134
    if-eqz v3, :cond_3

    .line 135
    .line 136
    array-length v8, v3

    .line 137
    const/4 v9, 0x0

    .line 138
    :goto_3
    if-ge v9, v8, :cond_3

    .line 139
    .line 140
    aget-object v10, v3, v9

    .line 141
    .line 142
    iget-boolean v10, v10, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 143
    .line 144
    if-eqz v10, :cond_6

    .line 145
    .line 146
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 147
    .line 148
    iget-object v8, v3, Lwa/u;->N:Ljava/lang/String;

    .line 149
    .line 150
    new-instance v9, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v10, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-eqz v8, :cond_4

    .line 175
    .line 176
    const/4 v3, 0x1

    .line 177
    goto :goto_4

    .line 178
    :cond_4
    iget-object v3, v3, Lwa/u;->O:Ljava/lang/String;

    .line 179
    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v9, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_5

    .line 205
    .line 206
    const/4 v3, 0x2

    .line 207
    goto :goto_4

    .line 208
    :cond_5
    const/4 v3, 0x0

    .line 209
    :goto_4
    new-instance v8, Lcom/yunpan/appmanage/bean/RotationBean;

    .line 210
    .line 211
    iget-object v9, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 212
    .line 213
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 214
    .line 215
    invoke-direct {v8, v9, v2, v3}, Lcom/yunpan/appmanage/bean/RotationBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_6
    add-int/2addr v9, v0

    .line 223
    goto :goto_3

    .line 224
    :catch_0
    nop

    .line 225
    goto :goto_2

    .line 226
    :cond_7
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-object v1, p0, Lua/a6;->a:Lcom/yunpan/appmanage/ui/ActivityRotation;

    .line 2
    .line 3
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityRotation;->D:Lx9/o4;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/yunpan/appmanage/bean/RotationBean;

    .line 10
    .line 11
    new-instance v4, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string p2, "\u9ed8\u8ba4"

    .line 17
    .line 18
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string p2, "\u6a2a\u5c4f\u663e\u793a"

    .line 22
    .line 23
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const-string p2, "\u7ad6\u5c4f\u663e\u793a"

    .line 27
    .line 28
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    new-instance p2, Lha/fa;

    .line 32
    .line 33
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 34
    .line 35
    new-instance v5, Lha/v1;

    .line 36
    .line 37
    const/16 v0, 0xc

    .line 38
    .line 39
    invoke-direct {v5, v1, p1, p3, v0}, Lha/v1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    move-object v0, p2

    .line 44
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
